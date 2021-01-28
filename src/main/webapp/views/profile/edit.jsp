<div class="homepage">

<jsp:include page="../shared/_layout.jsp" />

<form action="${appName}restaurant/add" method="post">

            <div class="form-group">
                <input type="text" class="form-control" placeholder="First Name" name="name" value="${user.firstName}" required>
            </div>
            <div class="form-group">
                <input type="email" class="form-control" placeholder="Last Name" name="phone" value="${user.lastName}" required>
            </div>

             <div class="form-group">
                <input type="email" class="form-control" placeholder="email" name="phone" value="${user.emai}" required>
            </div>
            <div class="form-group">
                <input type="date" class="form-control" placeholder="Photo" name="date"  value="${user.photo}" required>
            </div> 
            <div class="form-group">
                <input type="date" class="form-control" placeholder="Password" name="date"  required>
            </div> 
            <div class="form-group">
                <input type="date" class="form-control" placeholder="Confirm password" name="date"  required>
            </div>       
            
            	<input name="id" type="hidden" value="${user.id}">
            	
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	  	<button type="submit"name="user"  class="btn btn-primary">Send</button>
        
</form>
</div>