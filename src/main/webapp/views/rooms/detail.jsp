<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
 
 <div class="im">
<div class="homepage">
<jsp:include page="../shared/_layout.jsp" />
<table class="table" style="color:white;">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Room No</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
      <th scope="col">Room Type</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>${room.roomNo}</td>
      <td>${room.description}</td>
      <td>${room.price}</td>
      <td>${room.roomType}</td>
    </tr> 
  </tbody>
</table>
<div><img class="img" src="${room.image}" alt="single"></div>
</div>
</div>