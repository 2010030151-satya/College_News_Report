<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <title>delete</title>
 </head>
<body>
 
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root","tester123");
int id = Integer.parseInt(request.getParameter("id"));
PreparedStatement pst = con.prepareStatement("delete from news where id="+id+";");
pst.executeUpdate();
response.sendRedirect("http://localhost:8080/CNR/AdminIndex.html");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
          
</body>
</html>