<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="homepage">
	<jsp:include page="../shared/_layout.jsp" />

	<form action="${appName}restaurant/add" method="post">

		<div class="form-group">
		<label>Name:</label>
			<input type="text" class="form-control" placeholder="Name"
				name="name" required>
		</div>
		<div class="form-group">
		<label>Phone number:</label>
		<small>Format: 966xxxxxxxxx</small>
			<input type="text" class="form-control" pattern="966[0-9]{9}" placeholder="Phone number"
				name="phone_number" required>
		</div>
		<div class="form-group">
		<label>Choose the number of seats:</label>
			<select name="seats" class="form-control" required>
				<option value=""></option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10 or more</option>
			</select>
		</div>
		<div class="form-group">
		<label>Date:</label>
			<input type="date" class="form-control" placeholder="date"
				name="date" required>
		</div>

		<div class="form-group">
		<label>Time:</label>
			<input type="time" class="form-control" placeholder="time"
				name="time" required>
		</div>

		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<button type="submit" class="btn btn-success">Reservation</button>

	</form>
</div>