<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

<table class="table table-striped">

<%-- 	<tr>
		<th>Name</th>
		<th>Phone</th>
		<th>number of seats</th>
		<th>Date & time</th>
		<!-- <th>Article</th> -->
		
		<security:authorize access="isAuthenticated()">
		<th>Actions</th>
		</security:authorize>
	</tr>

	<c:forEach items="${restaurants}" var="author">
		<tr>
			<td><a href="${appName}arestaurant/detail?id=${restaurant.id}">${restaurant.name}</a></td>
			<td>${restaurant.phone}</td>
			<td>${restaurant.seates}</td>
			<td>${restaurant.date}</td>
			<td>${author.article}</td>

<security:authorize access="isAuthenticated()">
			<td><a href="${appName}restaurant/edit?id=${restaurant.id}">Edit</a>
		<security:authorize access="hasRole('ADMIN')">
			 | <a
				href="${appName}restaurant/delete?id=${restaurant.id}">Delete</a></td>
		</security:authorize>	
</security:authorize>			

		</tr>
	</c:forEach> --%>
</table>