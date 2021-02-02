<div class="homepage">

<jsp:include page="../shared/_layout.jsp" />

<form action="${appName}rooms/add" method="post">

            <div class="form-group">
                <input type="number" class="form-control" value="${room.roomNo}" name="roomNo" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" value="${room.description}" name="description" required>
            </div>
            
            <div class="form-group">
                <input type="number" class="form-control" value="${room.price}" name="price" required>
            </div>
         
             <div class="form-group">
              <select name="roomType" class="form-control" required>
                <option value="single">Single</option>
                <option value="suite">Suite</option>
              </select>
              </div>
                         
              <div class="form-group">
              <select name="reservation" class="form-control"  required>
                <option value="vacant">Vacant</option>
                <option value="preoccupied">Preoccupied</option>
              </select>
              </div>
            
            <div class="form-group">
                <input type="text" class="form-control" value="${room.image}" name="image" required>
            </div>  
            
            	<input name="id" type="hidden" value="${room.id}">
    
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	  	<button type="submit"name="room"  class="btn btn-success">Save</button>
        
</form>
</div>