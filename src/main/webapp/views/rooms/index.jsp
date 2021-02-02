<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Big+Shoulders+Display:wght@900&display=swap" rel="stylesheet">
<div class="im">
<div class="room">
<jsp:include page="../shared/_layout.jsp" />
<table class="table table-striped styleall">

	<tr>
		<th>Room No</th>
		<th>Room Type</th>
		<th>description</th>
		<th>price</th>
         <security:authorize access="hasRole('ADMIN') ">
		<th>Reservation</th>
		</security:authorize>		
		<security:authorize access="isAuthenticated()">
		<th>Actions</th>
		</security:authorize>
	</tr>
	
			<security:authorize access="hasRole('USER')">
	
	<c:forEach items="${rooms}" var="room">
<%-- <c:set var="user" value="<security:authentication property="principal.username" />"/>
 --%>
 <c:if test="${room.reservation == 'vacant'|| room.reservation == emailAddress}">	
 <%--	
		<c:if test="${room.reservation == 'vacant' or room.reservation == <security:authentication property="principal.username" /> }" >
 --%>		<tr>
			<td><a href="${appName}rooms/detail?id=${room.id}">${room.roomNo}</a></td>
			<td>${room.roomType}</td>
			<td>${room.description}</td>
			<td>${room.price}</td>
<security:authorize access="isAuthenticated()">
<c:choose>
  <c:when test="${room.reservation == emailAddress}">
   <td> 
      <form action="${appName}rooms/add" method="post">
           <div class="form-group">
                <input type="hidden" class="form-control" value="${room.roomNo}" name="roomNo" required>
            </div>
            <div class="form-group">
                <input type="hidden" class="form-control" value="${room.description}" name="description" required>
            </div>   
            <div class="form-group">
                <input type="hidden" class="form-control" value="${room.price}" name="price" required>
            </div>
         <div class="form-group">
                <input type="hidden" class="form-control" value="${room.roomType}" name="roomType" required>
            </div>  
            
              <div class="form-group">
                <input type="hidden" class="form-control" value="vacant" name="reservation" required>
            </div> 
            
             <div class="form-group">
                <input type="hidden" class="form-control" value="${room.image}" name="image" required>
            </div>           
            
            	<input name="id" type="hidden" value="${room.id}">
    
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	  	<button type="submit"name="room"  class="button button1">cancel reservation</button>        
</form>
   </td>
  </c:when>
  <c:otherwise>
         	<td>
     <form action="${appName}rooms/add" method="post">
           <div class="form-group">
                <input type="hidden" class="form-control" value="${room.roomNo}" name="roomNo" required>
            </div>
            <div class="form-group">
                <input type="hidden" class="form-control" value="${room.description}" name="description" required>
            </div>   
            <div class="form-group">
                <input type="hidden" class="form-control" value="${room.price}" name="price" required>
            </div>
         <div class="form-group">
                <input type="hidden" class="form-control" value="${room.roomType}" name="roomType" required>
            </div>  
            
               <div class="form-group">
                    <input type="hidden" class="form-control" value="<security:authentication property="principal.username" />" name="reservation" required>  
               </div> 
            
             <div class="form-group">
                <input type="hidden" class="form-control" value="${room.image}" name="image" required>
            </div>           
            
            	<input name="id" type="hidden" value="${room.id}">
    
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	  	<button type="submit"name="room"  class="button">Reservation</button>
        
</form>  </c:otherwise>
</c:choose>	
           
</security:authorize>			

		</tr>
		</c:if>
	</c:forEach>
	</security:authorize>
	
	         <security:authorize access="hasRole('ADMIN')">
	
	<c:forEach items="${rooms}" var="room">
	<tr>
			<td><a href="${appName}rooms/detail?id=${room.id}">${room.roomNo}</a></td>
			<td>${room.roomType}</td>
			<td>${room.description}</td>
			<td>${room.price}</td>

<security:authorize access="isAuthenticated()">
         <td>${room.reservation}</td>
			<td>
		<a href="${appName}rooms/edit?id=${room.id}"><button class="button">Edit</button></a>
	    <a href="${appName}rooms/delete?id=${room.id}"><button class="button button1">Delete</button></a>
		</td>
			  
</security:authorize>			

		</tr>
	</c:forEach>
	</security:authorize>
	
<security:authorize access="!isAuthenticated()">
	
	<c:forEach items="${rooms}" var="room">
	 	<c:if test="${room.reservation == 'vacant'}" >
			<tr>
			<td><a href="${appName}rooms/detail?id=${room.id}">${room.roomNo}</a></td>
			<td>${room.roomType}</td>
			<td>${room.description}</td>
			<td>${room.price}</td>

		</tr>
		</c:if>
	</c:forEach>
	</security:authorize>
</table>
</div>
</div>