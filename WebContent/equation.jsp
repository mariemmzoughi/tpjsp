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
float a = Float.parseFloat(request.getParameter("a") );
float b = Float.parseFloat(request.getParameter("b") );
float c = Float.parseFloat(request.getParameter("c") );
float del = b*b-4*a*c ;
if (del<0){
%>
<body bgcolor="red">
<p>pas de solution dans R</p>
<%
}
else if (del==0){
%>
<body>
<p>une unique solution : x= <%=-b/2*a %></p> 
<% 	
}else {
%>
<body bgcolor="green" >
<p> deux solution :</p>
<ul>
<li>x1 = <%= -b-Math.sqrt(del)/(2*a) %></li>
<li>x2 = <%= -b+Math.sqrt(del)/(2*a) %></li>
</ul>
<%
}
%>
</body>
</html>