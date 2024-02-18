<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session = "true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Count</title>
</head>
<body>
	<%
		Integer count = (Integer) session.getAttribute("userCount");
		
			if(count==null)
				count=1;
			else
				count++;
		
		session.setAttribute("userCount",count);
	%>
	<h1>The user count is :: <%= count %></h1>
</body>
</html>