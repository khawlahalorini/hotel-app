<div class="homepage">

<jsp:include page="../shared/_layout.jsp" />

<form action="${appName}restaurant/add" method="post">

            <div class="form-group">
                <input type="text" class="form-control" placeholder="Name" name="name" value="${restaurant.name}" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Phone" name="phone" value="${restaurant.phone}" required>
            </div>
            <div class="form-group">
  <select name="seats" value="${restaurant.seats}" class="form-control"  required>
    <option value="0">Choose the number of seats:</option>
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
    <option value="10">10 & more</option>
  </select>
</div>
            <div class="form-group">
                <input type="date" class="form-control" placeholder="datetime-local" name="date"  value="${restaurant.date}" required>
            </div>       
            
            	<input name="id" type="hidden" value="${restaurant.id}">
            	
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	  	<button type="submit"name="restaurant"  class="btn btn-primary">Send</button>
        
</form>
</div>