<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="homepage">
<jsp:include page="../shared/_layout.jsp" />

<c:forEach items="${restaurants}" var="restaurant">
	
	<div><h4> Contact number: </h4> ${restaurant.phone_number}</div>
	<div> ${restaurant.seats} </div>
	<a href="${appName}restaurant/delete?id=${restaurant.id}"><button class="button">Delete</button></a>
	<a href="${appName}restaurant/edit?id=${restaurant.id}"><button class="button">Edit</button></a>
</c:forEach>

</div>