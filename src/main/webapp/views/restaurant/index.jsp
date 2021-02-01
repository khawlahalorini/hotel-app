<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="room">
<jsp:include page="../shared/_layout.jsp" />

<table class="table">
<tr>
    <th scope="col"><h2>Choose room reservation or cancellation:</h2></th>

</tr>
    <tr>    
      <th scope="col">

      </th>
      <th scope="col">
      <form action="${appName}restaurant/delete" method="post">
            
            	<input name="id" type="hidden" value="${room.id}">
    
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	  	<button type="submit"name="room"  class="button button1">cancel reservation</button>
        
</form>
      </th>
   
    </tr>
 
  </table>





</div>