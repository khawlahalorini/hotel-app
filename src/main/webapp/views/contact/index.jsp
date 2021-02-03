
<div class="im">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<div class="homepage">
<jsp:include page="../shared/_layout.jsp" />


<h1 style="color: White;"> Contact Us </h1>
<form  method="post" action="${appName}contact/index">
            <div class="form-group">
                <input type="email" class="form-control" placeholder="Enter Your Email" name="emailAddress" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Enter Your Subject" name="subject" required>
            </div>
            <div class="form-group">
			<textarea rows="4" style="width: 100%;" name="message" placeholder="Type your message here..."></textarea>            
			</div>
            	<br>
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	  	<button type="submit" class="btn btn-primary">Send</button>
            
        </form>
</div >
<c:if test="${message != null}">
<div>
<h2>${message}</h2>
</div>
</div>
</c:if>

