<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
   
  
    <title> Mobile Comparison Web | Dashboard </title>
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
    
    
  </section>

  <div class="container">
  
  	<table class="table table-hover table-bordered">
  <thead>
    <tr>
      <th scope="col">Feature</th>
      <c:forEach items="${allMobiles}" var="mobile">
      <th scope="col"> ${mobile.model} </th>
      </c:forEach>
      
    </tr>
  </thead>
  <tbody>
  <tr>
      <th scope="row">Price</th>
      <c:forEach items="${allMobiles}" var="mobile">
      <td>${mobile.price}</td>
      </c:forEach>
    </tr>
    <tr>
      <th scope="row">Brand</th>
      <c:forEach items="${allMobiles}" var="mobile">
      <td>${mobile.brand}</td>
      </c:forEach>
    </tr>
   
    <tr>
      <th scope="row">Battery</th>
      <c:forEach items="${allMobiles}" var="mobile">
      <td>${mobile.battery} mAh</td>
      </c:forEach>
    </tr>
    
    <tr>
      <th scope="row">Processor</th>
      <c:forEach items="${allMobiles}" var="mobile">
      <td>${mobile.processor}</td>
      </c:forEach>
    </tr>
    <tr>
      <th scope="row">Front Camera</th>
      <c:forEach items="${allMobiles}" var="mobile">
      <td>${mobile.frontCamera}</td>
      </c:forEach>
    </tr>
    <tr>
      <th scope="row">Back Camera</th>
      <c:forEach items="${allMobiles}" var="mobile">
      <td>${mobile.backCamera}</td>
      </c:forEach>
    </tr>
    <tr>
      <th scope="row">RAM</th>
      <c:forEach items="${allMobiles}" var="mobile">
      <td>${mobile.ram}GB</td>
      </c:forEach>
    </tr>
   
    <tr>
      <th scope="row">Storage(ROM)</th>
      <c:forEach items="${allMobiles}" var="mobile">
      <td>${mobile.rom}GB</td>
      </c:forEach>
    </tr>
    <tr>
      <th scope="row">Display</th>
      <c:forEach items="${allMobiles}" var="mobile">
      <td>${mobile.display}</td>
      </c:forEach>
    </tr>
    <tr>
      <th scope="row">OS</th>
      <c:forEach items="${allMobiles}" var="mobile">
      <td>${mobile.os}</td>
      </c:forEach>
    </tr>
    <tr>
      <th scope="row">Release Date</th>
      <c:forEach items="${allMobiles}" var="mobile">
      <td>${mobile.release}</td>
      </c:forEach>
    </tr>
    <tr>
      <th scope="row">Rating</th>
      <c:forEach items="${allMobiles}" var="mobile">
      <td>${mobile.rating}  <img src="https://img.icons8.com/color/24/000000/filled-star--v1.png" /> </td>
      </c:forEach>
    </tr>
    
  </tbody>
</table>
    
  
  </div>
  </main>

<footer class="text-muted">
  <div class="container">
    <p class="float-right">
      <a href="#">Back to top</a>
    </p>
  </div>
</footer>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
  integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
  </html>
