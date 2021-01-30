<div class="homepage">

<jsp:include page="../shared/_layout.jsp" />

<form action="${appName}profile/edit" method="post">

            <div class="form-group">
                <input type="text" class="form-control" placeholder="First Name" name="firstName" value="${user.firstName}" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Last Name" name="lastName" value="${user.lastName}" required>
            </div>

             <div class="form-group">
                <input type="email" class="form-control" placeholder="email" name="emailAddress" value="${user.emailAddress}" required>
            </div>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="password" name="password"  value="${user.password}" required>
            </div> 
           
              
            
            	<input name="id" type="hidden" value="${user.id}">
            	
         <%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
	  	<button type="submit"name="user"  class="btn btn-primary">Send</button>
        
</form>
</div>