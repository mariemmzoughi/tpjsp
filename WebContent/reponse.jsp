<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
 <%
       int nombre=0;
      int[] op�randes = new int[4]; 
  char op�ration = request.getParameter("operation").charAt(0); 
       String[] operandes = request.getParameterValues("operandes");
      
      for(int i=0; i<operandes.length; i++) 
         if (operandes[i].length()!=0) op�randes[nombre++] = Integer.parseInt(operandes[i]);     
      int r�sultat = op�randes[0];
     
     switch (op�ration) {
        case '+' : for (int i=1; i<nombre; i++) r�sultat += op�randes[i]; break;
        case '-' : for (int i=1; i<nombre; i++) r�sultat -= op�randes[i]; break;
         case '*' : for (int i=1; i<nombre; i++) r�sultat *= op�randes[i]; break;
         case '/' : for (int i=1; i<nombre; i++) r�sultat /= op�randes[i]; break;
      }
 %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2><%= nombre > 0 ? op�randes[0] : 0  %>
         <% 
              for(int i=1; i<nombre; i++) {
        %>
        <%= op�ration %> <%= op�randes[i] %>
        <% } %>
        = <%= r�sultat %></h2>
</body>
</html>