<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="homepage">
<jsp:include page="../shared/_layout.jsp" />

<c:forEach items="${restaurant}" var="restaurant">
	
	<div> ${restaurant.phone_number}</div>
	<div> ${restaurant.seats} </div>
	
</c:forEach>

</div>