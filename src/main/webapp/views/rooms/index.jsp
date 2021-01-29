<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="room">
<jsp:include page="../shared/_layout.jsp" />

<table class="table table-striped">

	<tr>
		<th>Room No</th>
		<th>Room Type</th>
		<th>description</th>
		<th>price</th>
         <security:authorize access="hasRole('ADMIN')">
		<th>Reservation</th>
		</security:authorize>	
		<security:authorize access="isAuthenticated()">
		<th>Actions</th>
		</security:authorize>
	</tr>

	<c:forEach items="${rooms}" var="room">
		<tr>
			<td><a href="${appName}rooms/detail?id=${room.id}">${room.roomNo}</a></td>
			<td>${room.roomType}</td>
			<td>${room.description}</td>
			<td>${room.price}</td>

<security:authorize access="isAuthenticated()">
         <security:authorize access="hasRole('ADMIN')">
         <td>${room.reservation}</td>
			<td>
		<a href="${appName}rooms/edit?id=${room.id}"><button class="button">Edit</button></a>
	    <a href="${appName}rooms/delete?id=${room.id}"><button class="button button1">Delete</button></a>
		</td>
			  
		</security:authorize>	
		
		<security:authorize access="hasRole('USER')">
			<td><a href="${appName}rooms/reservation?id=${room.id}"><button id="points" class="button" onclick="setColor(event)">Reservation</button></a>						
			<script>
            function setColor(e) {
            var target = e.target,
           count = +target.dataset.count;
           target.style.backgroundColor = count === 1 ? "green" : "red";
           target.dataset.count = count === 1 ? 0 : 1;
           }
           </script>
           
		</security:authorize>
</security:authorize>			

		</tr>
	</c:forEach>
</table>

</div>