<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
//retrives the session object
HttpSession currentsession = request.getSession(false);

if(currentsession != null ) {
	currentsession.invalidate();
}
//redirect to the login page

response.sendRedirect("index.jsp.");
%>


</body>
</html>