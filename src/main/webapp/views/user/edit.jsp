<div class="homepage">

<jsp:include page="../shared/_layout.jsp" />

<form action="${appName}user/registration" method="post">

                           <div class="form-group">
								<input type="text"  name="firstName" class="form-control" value="${user.firstName}"  required="required">
							</div>
							<div class="form-group">
								<input type="text"  name="lastName" class="form-control" value="${user.lastName}" required="required">
							</div>
							<div class="form-group">
	                        <input name="emailAddress" type="email" class="form-control" value="${user.emailAddress}" required="required">
	                        </div>
	                        <div class="form-group">
	                        <input name="password" type="password" class="form-control" placeholder="Password" required="required">
                         	</div>	
							<div class="form-group">
								<input name="confirmPassword" type="password" class="form-control" placeholder="Confirm Password" required="required">
							</div>
							
                            <div class="form-group">
                               <input type="text" class="form-control" value="${user.image}" name="image" required>
                           </div>  
            
            	<input name="id" type="hidden" value="${user.id}">
    
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	  	<button type="submit"name="user"  class="button">Edit user</button>
        
</form>
</div>