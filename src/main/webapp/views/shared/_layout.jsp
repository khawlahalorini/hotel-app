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
		<a href="${appName}" style="text-decoration: none;"><img src="http://adel-kalu.com/index/images/logo.png" width="60" height="50" class="rounded-circle" alt="logo">
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
				<li class="dropdown">
				<a data-toggle="dropdown" class="dropdown-toggle" href="#">Restaurant <b class="caret"></b></a>
				<ul class="dropdown-menu">			
					<li><a class="dropdown-item" href="${appName}restaurant/index">Reservation check</a></li>							
					<li><a class="dropdown-item" href="${appName}restaurant/add">New Reservation</a></li>
				</ul>
			</li>
			
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
								<input name="userRole" type="hidden" class="form-control" value="ROLE_USER" required="required">
							</div>
                        
                           <div class="form-group">
								<input name="image" type="hidden" class="form-control" value="images/profile.jpg" required="required">
							</div>
							
							<div class="form-group">
								<label class="checkbox-inline"><h4><input type="checkbox" required="required"> I accept the </h4><a href="#">Terms &amp; Conditions</a></label>
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
<nav class="navbar navbar-default navbar-expand-lg navbar-light">
	<div class="navbar-header brand">
		<a href="#" style="text-decoration: none;"><img src="http://adel-kalu.com/index/images/logo.png" width="40" height="40" class="rounded-circle" alt="logo">
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
			<li><a href="${appName}rooms/add">Add Room</a></li>
		    </security:authorize>
		<li class="dropdown">
				<a data-toggle="dropdown" class="dropdown-toggle" href="#">Restaurant <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="${appName}restaurant/index">Reservation check</a></li>							
					<li><a class="dropdown-item" href="${appName}restaurant/add">New Reservation</a></li>
				</ul>
			</li>
			<li><a href="${appName}contact/index">Contact Us</a></li>
		</ul>
		
    <ul class="nav navbar-nav navbar-right">
<!-- //////////////////////////////////////////////////////////////////////////////////// -->        
  <li>  <a href="${appName}profile/index?email=<security:authentication property="principal.username" /> "><img src="http://adel-kalu.com/index/images/profile.jpg" width="40" height="40" class="rounded-circle"></a></li>
<li> <a href="${appName}logout"  class="btn btn-primary  get-started-btn mt-1 mb-1">Logout</a></li>


<%--         <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="${appName}profile/detail?email=<security:authentication property="principal.username" /> " id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <img src="http://adel-kalu.com/index/images/profile.jpg" width="40" height="40" class="rounded-circle">
        </a>
        <div class="dropdown-menu" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); max-width: 300px; margin: auto; text-align: center; font-family: arial;" aria-labelledby="navbarDropdownMenuLink">
          <img src="${user.image}" alt="User Image" style="width:300px;height:200px;">
          <p>.</p>
          <h3>${user.firstName}${user.lastName}</h3>
          <h4>${user.emailAddress}</h4>
          <div>
    <a href="#"><i class="fa fa-dribbble"></i></a> 
    <a href="#"><i class="fa fa-twitter"></i></a>  
    <a href="#"><i class="fa fa-linkedin"></i></a>  
    <a href="#"><i class="fa fa-facebook"></i></a> 
  </div>	
    <a href="${appName}profile/edit?email=<security:authentication property="principal.username" /> " class="btn btn-primary dropdown-toggle get-started-btn mt-1 mb-1">Edit Profile</a>
   <a href="${appName}logout" class="btn btn-primary dropdown-toggle get-started-btn mt-1 mb-1">Logout</a>
        </div>
      </li> --%>
      
<!-- //////////////////////////////////////////////////////////////////////////////////// -->        
    </ul>
	</div>
</nav>
</security:authorize>
<c:if test="${message != null}">
<div class="alert alert-primary" role="alert">
<h2>${message}</h2>
</div>
</c:if>

</body>
</html>