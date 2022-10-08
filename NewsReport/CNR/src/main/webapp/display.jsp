<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>display</title>
</head>
<body>
<%
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root","tester123");
Statement statement = connection.createStatement() ;
int id = Integer.parseInt(request.getParameter("id"));
ResultSet resultset = statement.executeQuery("select * from news where id="+id+";");
%>
<% while(resultset.next()){ %>
          <table>
			
            <tr><td><%= resultset.getString(2) %></td></tr>
            <tr><td><%= resultset.getString(3) %></td></tr>
            <img src=<%=resultset.getString(4)%> alt="Italian Trulli">
        	
        </table>
           <% } %>
</body>
</html>