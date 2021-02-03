<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="imres styleall">
<div class="homepage ">
	<jsp:include page="../shared/_layout.jsp" />
	<table class="table" style="color:white;">
		<tr>
			<th scope="col" colspan="5">
				<form class="navbar-form form-inline"
					action="${appName}restaurant/detail?phone_number=${phone_number}"
					method="get">
					<input class="form-control" type="search" name="phone_number"
						placeholder="966xxxxxxxxx"> 
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<button class="btn btn-outline-success my-2 my-sm-0" style="color:black;" type="submit">Check</button>
				</form>
			</th>
		</tr>
		<tr>
		    <th>Name</th>
			<th>Number of seats</th>
			<th>Date - Time</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach items="${restaurants}" var="restaurant">
			<tr class="table-dark">
			    <th ><h4>${restaurant.name}</h4></th>
				<th><h4>${restaurant.seats}</h4></th>
				<th><h4>${restaurant.date} - ${restaurant.time}</h4></th>
				<th scope="col"><a
					href="${appName}restaurant/edit?id=${restaurant.id}"><button
							class="btn btn-info">Edit</button></a></th>
				<th scope="col"><a
					href="${appName}restaurant/delete?id=${restaurant.id}"><button
							class="btn btn-danger">Delete</button></a></th>
			</tr>
		</c:forEach>
	</table>
</div></div>