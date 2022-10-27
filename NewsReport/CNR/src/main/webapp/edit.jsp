<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <title>display</title>
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

        <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
 
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <div class="logo">
        <h1>EditNews</h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar">
	        <ul>
	          <li><a class="nav-link scrollto" href="NewsChannel.jsp">News Channel</a></li>
	          <li><a class="nav-link scrollto " href="EnterNews.jsp">Enter News</a></li>
	          <li><a class="nav-link scrollto" href="EditNews.jsp">Edit News</a></li>
	          <li><a class="nav-link scrollto" href="DeleteNews.jsp">Delete News</a></li>
	        </ul>
	        <i class="bi bi-list mobile-nav-toggle"></i>
	      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
<%
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root","tester123");
Statement statement = connection.createStatement() ;
int id = Integer.parseInt(request.getParameter("id"));
ResultSet resultset = statement.executeQuery("select * from news where id="+id+";");
%>
<% while(resultset.next()){ %>
<!-- =================== Articles  =================== -->
<br><br><br><br>
  
    <section id="contact" class="contact">
    <div class="container">

      <div class="section-title" >
        <h2>Edit News</h2>
      </div>

      <div class="row">
      

        <div class="col-lg-4 col-md-6" >
          <div class="Register">
          </div>
        </div>
    	<div class="">
            <img src=<%=resultset.getString(4)%> style=" display: block;margin-left: auto;margin-right: auto;width: 50%;" >
          <br>
			<center>
            <h2><%= resultset.getString(2) %></h2>
            <p>	<%= resultset.getString(3) %></p>
            </center>	
          
       
          <br>
		
           <% } %>
        
       </div>

        
           
        <center>
        <div class="col-lg-5 col-md-12"  data-aos-delay="300">
          <form action="EditNews" method="post" enctype="multipart/form-data" class="php-email-form1" >
            <div class="form-group">
              <input type="hidden" name="id" class="form-control" placeholder="id" value=<%=id%> required>
            </div><br>
            
            <div class="form-group">
              <input type="text" class="form-control" name="headline" placeholder="Enter Headline" required>
            </div><br>
            
            <div class="form-group">
              <textarea rows="4" class="form-control" name="content" required></textarea>
            </div><br>
            
             
            <div class="form-group">
              <input type="file" class="form-control" name="file" required>
            </div><br>
            

            <div class="text-center"><button type="submit">Push Article</button></div>
          
          </form>
          </center>
</div>
</div>
</section>	
        
           
           
          
  
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
</body>
</html>