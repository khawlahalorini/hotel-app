<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div class="homepage">
	<jsp:include page="../shared/_layout.jsp" />

        <div  style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); max-width: 300px; margin: auto; text-align: center; font-family: arial;">
          <img src="${user.image}" alt="User Image" style="width:300px;height:200px;">
          <p>.</p>
          <h3>${user.firstName}_${user.lastName}</h3>
          <h4>${user.emailAddress}</h4>
          <div>
          <br>
    <a href="#"><i class="fa fa-dribbble"></i></a> 
    <a href="#"><i class="fa fa-twitter"></i></a>  
    <a href="#"><i class="fa fa-linkedin"></i></a>  
    <a href="#"><i class="fa fa-facebook"></i></a> 
  </div>	
  <br>
    <a href="${appName}profile/edit?email=<security:authentication property="principal.username" /> " class="btn btn-primary  get-started-btn mt-1 mb-1">Edit Profile</a>
        </div>
     
     
     </div>
      