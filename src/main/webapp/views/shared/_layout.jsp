<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Atlantis Hotel</title>
<link rel="stylesheet" href="../css/myStyles.css">
<link rel="stylesheet" href="css/myStyles.css">
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
	// Prevent dropdown menu from closing when click inside the form
	$(document).on("click", ".navbar-right .dropdown-menu", function(e){
		e.stopPropagation();
	});
</script>
</head>
<body>
<security:authorize access="!isAuthenticated()">
<nav class="navbar navbar-default navbar-expand-lg navbar-light">
	<div class="navbar-header brand">
		<a href="#" style="text-decoration: none;"><img src="https://s3.eu-central-1.amazonaws.com/bootstrapbaymisc/blog/24_days_bootstrap/fox.jpg" width="40" height="40" class="rounded-circle" alt="logo">
		Atlantis<b>Hotel</b></a>  		
		<button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
			<span class="navbar-toggler-icon"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
	</div>
	<!-- Collection of nav links, forms, and other content for toggling -->
	<div id="navbarCollapse" class="collapse navbar-collapse">
		<ul class="nav navbar-nav">
			<li><a href="${appName}">Home</a></li>
					<li><a href="${appName}about/index">About</a></li>			
			<li><a href="${appName}rooms/roomb">Rooms</a></li>
			<li><a href="${appName}restaurant/index">Restaurant</a></li>
			<li><a href="${appName}contact/index">Contact Us</a></li>
		</ul>
		
		<ul class="nav navbar-nav navbar-right">			
			<li>
				<a data-toggle="dropdown" class="dropdown-toggle" href="#">Login</a>
				<ul class="dropdown-menu form-wrapper">					
					<li>
						<form action="${appName}index" method="post">
							<div class="form-group">
	                        <input name="username" type="email" class="form-control" placeholder="Email Address" required="required">
	                        </div>
	                        <div class="form-group">
	                        <input name="password" type="password" class="form-control" placeholder="Password" required="required">
                         	</div>	
						    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						    <input type="submit" class="btn btn-primary btn-block" value="Login">
							<div class="form-footer">
								<a href="#">Forgot Your password?</a>
							</div>
						</form>
					</li>
				</ul>
			</li>
			<li>
				<a href="#" data-toggle="dropdown" class="btn btn-primary dropdown-toggle get-started-btn mt-1 mb-1">Sign up</a>
				<ul class="dropdown-menu form-wrapper">					
					<li>
						<form action="${appName}user/registration" method="post">
							<p class="hint-text">Fill in this form to create your account!</p>
							<div class="form-group">
								<input type="text"  name="firstName" class="form-control" placeholder="First Name" required="required">
							</div>
							<div class="form-group">
								<input type="text"  name="lastName" class="form-control" placeholder="Last Name" required="required">
							</div>
							<div class="form-group">
	                        <input name="emailAddress" type="email" class="form-control" placeholder="Email Address" required="required">
	                        </div>
	                        <div class="form-group">
	                        <input name="password" type="password" class="form-control" placeholder="Password" required="required">
                         	</div>	
							<div class="form-group">
								<input name="confirmPassword" type="password" class="form-control" placeholder="Confirm Password" required="required">
							</div>
								
                        	<div class="form-group">
                    		<select name="userRole" class="form-control" required="required">
	                		<option value="ROLE_ADMIN">Admin</option>
                 			<option value="ROLE_USER">User</option>
	                    	</select>
	                        </div>
							<div class="form-group">
								<label class="checkbox-inline"><input type="checkbox" required="required"> I accept the <a href="#">Terms &amp; Conditions</a></label>
							</div>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
							<input type="submit" class="btn btn-primary btn-block" value="Sign up">
						</form>
					</li>
				</ul>
			</li>
		</ul>
	</div>
</nav>
</security:authorize>
<security:authorize access="isAuthenticated()">
<security:authentication property="principal.authorities" />
<nav class="navbar navbar-default navbar-expand-lg navbar-light">
	<div class="navbar-header brand">
		<a href="#" style="text-decoration: none;"><img src="https://s3.eu-central-1.amazonaws.com/bootstrapbaymisc/blog/24_days_bootstrap/fox.jpg" width="40" height="40" class="rounded-circle" alt="logo">
		Atlantis<b>Hotel</b></a>  		
		<button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
			<span class="navbar-toggler-icon"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
	</div>
	<!-- Collection of nav links, forms, and other content for toggling -->
	<div id="navbarCollapse" class="collapse navbar-collapse">
		<ul class="nav navbar-nav">
			<li><a href="${appName}">Home</a></li>
			<li><a href="${appName}about/index">About</a></li>			
			<li><a href="${appName}rooms/roomb">Rooms</a></li>
			<security:authorize access="hasRole('ADMIN')">
			<li><a href="${appName}rooms/add">Add Room</a></td>
		    </security:authorize>
			<li><a href="${appName}restaurant/index">Restaurant</a></li>
			<li><a href="${appName}contact/index">Contact Us</a></li>
		</ul>
		<form class="navbar-form form-inline">
			<div class="input-group search-box">								
				<input type="text" id="search" class="form-control" placeholder="Search here...">
				<span class="input-group-addon"><i class="material-icons">&#xE8B6;</i></span>
			</div>
		</form>
		
    <ul class="nav navbar-nav navbar-right">
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <img src="https://s3.eu-central-1.amazonaws.com/bootstrapbaymisc/blog/24_days_bootstrap/fox.jpg" width="40" height="40" class="rounded-circle">
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <img src="https://s3.eu-central-1.amazonaws.com/bootstrapbaymisc/blog/24_days_bootstrap/fox.jpg" alt="John" style="width:100%;height:200px;">
          <h1>${user.firstName}${user.lastName}GA PLUTO</h1>
          <h1><security:authentication property="principal.username" /> </h1>
          <div>
    <a href="#"><i class="fa fa-dribbble"></i></a> 
    <a href="#"><i class="fa fa-twitter"></i></a>  
    <a href="#"><i class="fa fa-linkedin"></i></a>  
    <a href="#"><i class="fa fa-facebook"></i></a> 
  </div>	
   <a href="${appName}profile/edit" class="btn btn-primary dropdown-toggle get-started-btn mt-1 mb-1">Edit Profile</a>
   <a href="${appName}logout" class="btn btn-primary dropdown-toggle get-started-btn mt-1 mb-1">Logout</a>
        </div>
      </li>   
    </ul>
	</div>
</nav>
</security:authorize>
 
<c:if test="${message != null}">
<div class="alert alert-primary fade show" role="alert">
<h2>${message}</h2>
</div>
<% session.removeAttribute("message"); %>
</c:if>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$('.fade').slideUp(4000);
	</script>
</body>
</html>





