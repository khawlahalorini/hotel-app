<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="room">
<jsp:include page="../shared/_layout.jsp" />

		<security:authorize access="hasRole('USER')">
<table class="table">
<tr>
    <th scope="col"><h2>Choose room reservation or cancellation:</h2></th>

</tr>
    <tr>    
      <th scope="col">
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
        
</form>
      </th>
      <th scope="col">
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
      </th>
   
    </tr>
 
  </table>




		</security:authorize>

</div>