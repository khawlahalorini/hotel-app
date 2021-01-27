<jsp:include page="../shared/_layout.jsp" />
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Insert title here</title>
</head>
<body>
<form  method="post" action="${appName}contact/index">


            <div class="form-group">
                <input type="email" class="form-control" placeholder="Enter Your Email" name="emailAddress" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Enter Your Subject" name="subject" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Enter Your Message" name="message" required>
            </div>
            
            	<br>
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	  	<button type="submit" class="btn btn-primary">Send</button>
            
        </form>
</body>
</html>