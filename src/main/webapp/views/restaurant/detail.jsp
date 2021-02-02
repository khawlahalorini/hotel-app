<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="imres">
<div class="homepage">

<jsp:include page="../shared/_layout.jsp" />

<table class="table table-striped">
<tr>
    <th scope="col" colspan="4">
    <form class="navbar-form form-inline" action="${appName}restaurant/detail?phone_number=${phone_number}" method="get">
      <input class="form-control" type="search" name="phone_number" placeholder="Search" aria-label="Search">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form> 
    </th>

</tr>
<tr Style="color: white" >
      <th> Number of seats</th>
      <th>Date & Time</th>
      <th> Edit table </th>
      <th> Delete table </th>
   

</tr>
      <c:forEach items="${restaurants}" var="restaurant">
    <tr>
    <th><h2> ${restaurant.seats}</h2></th>  
    <th><h2> ${restaurant.date} -  ${restaurant.time}</h2></th>  
    
      <th scope="col">
	<a href="${appName}restaurant/edit?id=${restaurant.id}"><button class="button">Edit</button></a>	  
	  	
      </th>
      <th scope="col">

	<a href="${appName}restaurant/delete?id=${restaurant.id}"><button class="button button1">Delete</button></a>
        

      </th>
   
    </tr>
 </c:forEach>
 
  </table>

</div>
</div>