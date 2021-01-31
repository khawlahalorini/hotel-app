<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="room">
<jsp:include page="../shared/_layout.jsp" />


<a href="${appName}rooms/index?type=suite"><img class="img" src="../images/sweet.jpg" alt="suite"></a>
<a href="${appName}rooms/index?type=single"><img class="img" src="../images/single.jpg" alt="single"></a>

</div>