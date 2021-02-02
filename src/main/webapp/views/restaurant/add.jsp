<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="imres">

<div class="homepage">
<jsp:include page="../shared/_layout.jsp" />

<form action="${appName}restaurant/add" method="post">

            <div class="form-group">
                <input type="text" class="form-control" placeholder="Name" name="name" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Phone number" name="phone_number" required>
            </div>
            <div class="form-group">
  <select name="seats" class="form-control"  required>
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
                <input type="date" class="form-control" placeholder="date" name="date" required>
            </div>      
            
             <div class="form-group">
                <input type="time" class="form-control" placeholder="time" name="time" required>
            </div> 
            
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
         	  	<button type="submit"class="button">Reservation</button>
                 
</form>
</div></div>