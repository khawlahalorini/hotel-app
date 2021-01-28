<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="homepage">
<jsp:include page="../shared/_layout.jsp" />


<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Phone</th>
      <th scope="col">Seats</th>
      <th scope="col">Date</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>${restaurant.name}</td>
      <td>${restaurant.phone}</td>
      <td>${restaurant.seate}</td>
      <td>${restaurant.date}</td>
    </tr> 
  </tbody>
</table>
</div>