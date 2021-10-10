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

    
<!-- CSS  -->
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
  <a href="${pageContext.request.contextPath}/Login" class="btn btn-sm btn-danger right"> Admin Login </a>
    <div class="container">
    
    
    
      <h1 class="text-white"> Use Filters </h1>
    
    <!-- Filter Form -->
    <form action="${pageContext.request.contextPath}/Filter" method="post">
    
    	<select name="price" class="custom-select my-2">
          <option selected value="10000"> Price </option>
          <option value="10000"> &#8377 10000 - &#8377 12000</option>
          <option value="12000"> &#8377 12000 - &#8377 14000 </option>
          <option value="14000"> &#8377 14000 - &#8377 16000 </option>
          <option value="16000"> &#8377 16000 - &#8377 18000 </option>
          <option value="18000"> &#8377 18000 - &#8377 20000 </option>
          <option value="20000"> &#8377 20000 - &#8377 22000 </option>
          <option value="22000"> &#8377 22000 And More </option>

        </select>
        
        <select required="required" name="brand1" class="custom-select my-2">
          <option selected value="${mobile.brand}"> Brand - 1 </option>
          
          <option value="xiaomi"> 	Xiaomi </option>
          <option value="samsung"> 	Samsung </option>
          <option value="oppo"> 	Oppo </option>
          <option value="vivo"> 	Vivo </option>
          <option value="realme"> 	Realme </option>
          <option value="nokia"> 	Nokia </option>
          <option value="micromax"> Micromax </option>
          

        
        </select>
        

        <select name="brand2" class="custom-select my-2">
          <option selected value="%o%"> Brand - 2 </option>
          <option value="huawei"> 	Huawei </option>
          <option value="apple"> 	Apple </option>
          <option value="google"> 	Google </option>
          <option value="oneplus"> 	Oneplus </option>
          <option value="lg"> 		LG </option>
          <option value="motorola"> Motorola </option>
          <option value="poco"> 	Poco </option>
          <option value="honor"> 	Honor </option>
        
        </select>
        
        <button type="submit" class="btn btn-primary my-2"> Search </button>

    </form>
        
     
    </div>
  </section>

  <div class="container">
  <div class="card-group">
  
  
  <!-- Compare FORM -->
  
  <form action="${pageContext.request.contextPath}/Compare" method="post" >
  
  
  
  

      <div class="row">
      
    
      <c:forEach items="${allMobiles}" var="mobile">
      
        <div class="col-md-4 ">
          <div class="card mb-4 shadow-lg">
            <div class="card-body">
              <h4 class="card-title text-center font-weight-bold font-italic"> ${ mobile.brand } </h4>
              
              <p class="card-text font-italic text-muted"> 
              <span class="card-text font-weight-bold font-italic text-muted"> Price : </span> &#8377 ${ mobile.price }
              </p>
               
              
              <p class="card-text font-italic text-muted">
               <span class="card-text font-weight-bold font-italic text-muted"> Model : </span>	${ mobile.model }
              </p>
             
             
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary" data-toggle="modal" data-target="#viewBrands${mobile.id}" >View</button>
                  
               <div class="btn-group-toggle" data-toggle="buttons">
  				<label class="btn btn-sm btn-outline-secondary">
    				<input type="checkbox" name="compare" value="${mobile.id}"> Compare
  				</label>
				</div>
         
    			 
                </div>
                <small class="text-muted"> ${ mobile.release } </small>
              </div>
            </div>
            
            <div class="card-footer bg-white">
              <h5 class="card-text text-muted">
              ${ mobile.rating } <img src="https://img.icons8.com/color/24/000000/filled-star--v1.png" />
              </h5>

            </div>

            
            
          </div>
        </div>
        </c:forEach>
        
        <div class="col-md-12">
        
        	<button type="submit" class="btn btn-primary btn-block fixed-bottom"> Compare </button>
        
        </div>
        
        </div>
      
    
  
</form>
</div>
</div>
</main>

<!-- VIEW MODAL -->
<c:forEach items="${allMobiles}" var="mobile">
<div class="modal fade" id="viewBrands${mobile.id}" style="display: none;" aria-hidden="true">
<div class="modal-dialog modal-xl">
<div class="modal-content">
					
					<!-- Modal Header -->	
    				 <div class="card-header bg-white">
    				 
					<button type="button" class="close" data-dismiss="modal">
					<a href="#" class="btn btn-outline-dark btn-lg"> X <i class="fa fa-times" aria-hidden="true"> </i>
					</a>
					</button>
					
					</div>
                  	
                  							
					
 															
 				   <!-- Modal body -->
 					<div class="modal-body">
 					
 					<div class="container">
  
  	<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Feature</th>
      
      <th scope="col"> ${mobile.model} </th>
      
      
    </tr>
  </thead>
  <tbody>
  <tr>
      <th scope="row">Price</th>
      
      <td>&#8377 ${mobile.price}</td>
      
    </tr>
    <tr>
      <th scope="row">Brand</th>
     
      <td>${mobile.brand}</td>
      
    </tr>
   
    <tr>
      <th scope="row">Battery</th>
     
      <td>${mobile.battery} mAH</td>
      
    </tr>
    
    <tr>
      <th scope="row">Processor</th>
    
      <td>${mobile.processor}</td>
      
    </tr>
    <tr>
      <th scope="row">Front Camera</th>
      
      <td>${mobile.frontCamera}</td>
      
    </tr>
    <tr>
      <th scope="row">Back Camera</th>
      
      <td>${mobile.backCamera}</td>
    </tr>
    <tr>
      <th scope="row">RAM</th>
    
      <td>${mobile.ram}GB</td>
      
    </tr>
   
    <tr>
      <th scope="row">Storage(ROM)</th>
      <td>${mobile.rom}GB</td>
    </tr>
    <tr>
      <th scope="row">Display</th>
    
      <td>${mobile.display}</td>
     
    </tr>
    <tr>
      <th scope="row">OS</th>
      
      <td>${mobile.os}</td>
     
    </tr>
    <tr>
      <th scope="row">Release Date</th>
     
      <td>${mobile.release}</td>
      
    </tr>
    <tr>
      <th scope="row">Rating</th>
      
      <td>${mobile.rating}  <img src="https://img.icons8.com/color/24/000000/filled-star--v1.png" /> </td>
      
    </tr>
    
  </tbody>
</table>
    
  
  </div>
 					
				
					</div> 
         			 
         		  <!--End Modal body -->
                                                                
               
			<!-- Modal footer -->
			<div class="modal-footer">
			
			<button  type="button" class="btn btn-dark ml-3" data-dismiss="modal">Cancel</button>
			
			</div>
</div>
</div>
</div>
</c:forEach>
  <!-- END VIEW MODAL -->

<footer class="text-muted">
  <div class="container">
    <p class="float-right">
      <a href="#">Back to top</a>
    </p>
  </div>
</footer>

<!-- JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
  integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
  </html>
