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
if (request.getParameter("op�rande1")==null)
{
%>
	<p>saisir operande1 </p>
<% 
}

else 

	if (request.getParameter("op�rande2")==null)
	{
%>	
		<p>saisir operande2 </p>
<% 
	}
	

%>
</body>
</html>