<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>les nombres impaire </title>
</head>
<body>
<% 
   for (int i=1 ; i<=10 ; i++)
     if ((i%2)!=0)
       out.println(i+"<br>");
%>
</body>
</html>