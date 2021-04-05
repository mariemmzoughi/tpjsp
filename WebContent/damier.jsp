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
  
int n=10 ; 
String noir="black";
String vert="green";
String color = "";
out.println("damier de "+n+"lignes par "+n+ "colonnes");
out.println("<table border='1'>");
                 for(int ligne = 1; ligne < n; ligne++){
                	 out.println("<tr>");
                	 if ((ligne%2)==0)color=noir;
                	 else color=vert ;
                	 
	             for (int colonne = 0; colonne <= n ; colonne++) {
                     out.println("<td bgcolor='"+color+"'width='30px' height='30px'>&nbsp;</td>");
                     if (color.equals(vert)) color=noir ;
                     else color = vert ;
                     
               }
	             out.println("</tr>");
       }
  out.println("</table>");               
%>
</body>
</html>