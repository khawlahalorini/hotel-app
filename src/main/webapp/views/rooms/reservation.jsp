<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="room">
<jsp:include page="../shared/_layout.jsp" />

		<security:authorize access="hasRole('USER')">

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
              <select name="reservation" class="form-control"  required>
                <option value="vacant">Vacant</option>
                <option value="preoccupied">Preoccupied</option>
              </select>
              </div>
            
             <div class="form-group">
                <input type="hidden" class="form-control" value="${room.image}" name="image" required>
            </div>           
            
            	<input name="id" type="hidden" value="${room.id}">
    
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	  	<button type="submit"name="room"  class="button">reservation</button>
        
</form>
		</security:authorize>

</div>