<div class="homepage">

<jsp:include page="../shared/_layout.jsp" />

<form action="${appName}rooms/add" method="post">

            <div class="form-group">
                <input type="number" class="form-control" placeholder="Room No." name="roomNo" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Description" name="description" required>
            </div>
            
            <div class="form-group">
                <input type="number" class="form-control" placeholder="Price" name="price" required>
            </div>       
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Room Type" name="roomType" required>
            </div>  
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Image" name="image" required>
            </div>  
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	  	<button type="submit"name="room"  class="btn btn-primary">Send</button>
        
</form>
</div>