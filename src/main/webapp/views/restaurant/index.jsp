<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="room">
<jsp:include page="../shared/_layout.jsp" />

<table class="table">
<tr>
    <th scope="col">
    <form class="navbar-form form-inline" action="${appName}restaurant/detail?phone_number=${phone_number}" method="get">
      <input class="form-control mr-sm-2" type="search" name="phone_number" placeholder="Search" aria-label="Search">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form> 
    </th>

</tr>
<tr>
      <th> Table number</th>
      <th> Edit table </th>
      <th> Delete table </th>
   

</tr>

    <tr>
    <th>
        <h2>12</h2>  
    </th>  
      <th scope="col">
	  	<form action="${appName}restaurant/edit" method="post">
            
            	<input name="id" type="hidden" value="${restaurant.id}">
    
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	  	<button type="submit"  class="button">edit booking</button>
	  	</form>
	  	
      </th>
      <th scope="col">
      <form action="${appName}restaurant/delete" method="post">
            
            	<input name="id" type="hidden" value="${restaurant.id}">
    
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	  	<button type="submit"  class="button button1">cancel booking</button>
        
</form>
      </th>
   
    </tr>
 
  </table>





</div>