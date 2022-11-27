<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <title>
      news channel
    </title>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="description">
    <meta content="" name="keywords">
  
    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
  
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  
    <!-- Vendor CSS Files -->
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  
    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
  
    <!-- =======================================================
    * Template Name: Vesperr - v4.8.1
    * Template URL: https://bootstrapmade.com/vesperr-free-bootstrap-template/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->
</head>
<body>

  <!-- ======= Header ======= -->
  <header id="header">
    <div class="container d-flex align-items-center justify-content-between">

      <div class="logo">
        <h1>College News Report</h1>
      </div>
      
      
      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto " href="login.html">Log In</a></li>
          <li><a class="nav-link scrollto " href="NewsChannel.jsp">NewsChannel</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
      

    </div>
  </header><!-- End Header -->
  <br>
  <br>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%
try {
Connection con = null;
Statement statement = null;
ResultSet rs = null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root","tester123"); 
statement = con.createStatement();
String QueryString = "SELECT * from news";
rs = statement.executeQuery(QueryString);
while (rs.next()) {
	String url = "http://localhost:8080/CNR/display.jsp?id="+rs.getInt(1);
%>
<!-- =================== Articles  =================== -->
<br>
  <div class="container">
  	
      <div class="card__body">
      	<br>
       	<a href=<%=url%>> <%=rs.getString(2)%></a>
          
        </div>
   </div>
      
      
<% } %>
<%
// close all the connections.
rs.close();
statement.close();
con.close();
} catch (Exception ex) {
%>
<%
out.println("Unable to connect to database.");
}
%>

</body>
</html>