<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />
<div class="homepage">

<a href="${appName}restaurant/add">reservation</a>
      
      <form action="${appName}restaurant/detail?phone_number=${phone_number}" method="get">
		      <input type="text" name="phone_number" />
		      	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		      <button type="submit" class="btn btn-primary">check</button>
	</form>
<a href="${appName}restaurant/edit">edit your reservation </a>
<a href="${appName}restaurant/delete">cancel your reservation </a>

</div>