<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
  
  
    <title> Mobile Comparison Web | ADMIN LOGIN </title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
      integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    

   

    <!-- CSS -->
    <link href="css/mobile.css" rel="stylesheet">
  </head>
  <body>
  
   
    <header>
  <div class="navbar navbar-dark bg-dark fixed-top shadow-sm">
    <div class="container d-flex justify-content-between">
      <a href="${pageContext.request.contextPath}" class="navbar-brand d-flex align-items-center">
        <strong> Mobile Comparison </strong>
      </a>
      
    </div>
  </div>
</header>

<main role="main">

  <section class="jumbotron bg-dark text-center">
    <div class="container">
      <h1 class="text-white"> Admin Login </h1>
    
    <!-- Filter Form -->
    <form action="${pageContext.request.contextPath}/Admin" class="form" method="post" enctype="application/x-www-form-urlencoded">
            
        <div class="input-group mb-3">
 		<span class="input-group-text" > Email </span>
  		<input type="email" name="email" class="form-control" placeholder="Email" aria-label="Email" >
		</div>
		
		<div class="input-group mb-3">
 		<span class="input-group-text " > Password </span>
  		<input type="password" name="password" class="form-control" placeholder="Password" aria-label="Password">
		</div>
       
		<div class="input-group mb-3">
        
        <button type="submit" class="btn btn-primary form-control my-2"> Login </button>
		</div>
		
    </form>
        
     
    </div>
  </section>

</main>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
  integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
  </html>
