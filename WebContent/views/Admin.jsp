<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    
  
    <title> Mobile Comparison Web | ADMIN </title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
      integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    

   

    
    <!-- CSS -->
    <link href="css/mobile.css" rel="stylesheet">
    
  </head>
  <body>
  
  
 <%--  <%//if user is logged out redirect it to login.jsp
	String emailID = (String)session.getAttribute("emailID");
	session.setAttribute("emailID", emailID);
    		
	if( emailID.toString().isEmpty()){
		response.sendRedirect(request.getContextPath()+"/Login");
		
	}


%>  --%>
   
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
    <a href="${pageContext.request.contextPath}/Login" class="btn btn-sm btn-danger right"> Admin Logout </a>
      <h1 class="text-white"> Admin DashBoard </h1>
      
    
    
        
     
    </div>
  </section>
  
  <div class="container">
  <table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">No.</th>
      <th scope="col">Brand</th>
      <th scope="col">Model</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
   <tr>
      <th scope="row"> </th>
      <td colspan="2"> </td>
      <td> <input type="button" class="btn btn-sm btn-primary" value="Add + " data-toggle="modal" data-target="#addData"></td>
      
    </tr>
     <c:set var = "i" />
    <c:forEach items="${allMobiles}" var="mobile">
    
    
    <tr>
    
      <th scope="row"><c:out value="${i = i+1}"></c:out></th> 
      <td class="font-weight-bold font-italic text-muted">${mobile.brand}</td>
      
      <td>${mobile.model}</td>
      <td>  
      		<form action="Delete" method="post">
      		<input type="hidden" name="id" value="${mobile.id}">
      		<button type="submit" class="btn btn-sm btn-danger " data-toggle="modal" data-target="#Delete"> DELETE </button>
      		
      		<button type="button" class="btn btn-sm btn-success " data-toggle="modal" data-target="#edit${mobile.id}" > EDIT </button>
      		</form>
      </td>
      
    </tr>
    </c:forEach>
  </tbody>
</table>
</div>
</main>


<!-- ADD MODAL -->

<div class="modal fade" id="addData" style="display: none;" aria-hidden="true">
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
 	<form action="Add" method="post">
 	
 	<div class="row">
 	<div class="col-md-6">
 	
 	<!-- BRAND -->
 	  <select required="required" name="brand" class="custom-select my-2">
          <option selected value="%a%"> Brand </option>
          <option value="xiaomi"> 	Xiaomi </option>
          <option value="samsung"> 	Samsung </option>
          <option value="oppo"> 	Oppo </option>
          <option value="vivo"> 	Vivo </option>
          <option value="realme"> 	Realme </option>
          <option value="nokia"> 	Nokia </option>
          <option value="micromax"> Micromax </option>
          <option value="huawei"> Huawei </option>
          <option value="apple"> Apple </option>
          <option value="google"> Google </option>
          <option value="oneplus"> Oneplus </option>
          <option value="lg"> LG </option>
          <option value="motorola"> Motorola </option>
          <option value="poco"> Poco </option>
          <option value="honor"> Honor </option>

        
        </select>
        
        <!-- PRICE -->
		<input type="text" name="price" required="required" class="form-control my-2" placeholder="Price">
        
        <!-- PROCESSOR -->
		<input type="text" name="processor" required="required" class="form-control my-2" placeholder="Processor">
		
		<!-- Back Camera -->
		<input type="text" name="backcamera" required="required" class="form-control my-2" placeholder="Back Camera">
		
		<!-- Storage(ROM) -->
		<input type="text" name="rom" required="required" class="form-control my-2" placeholder="Storage(ROM)">
		
		<!-- OS -->
		<input type="text" name="os" required="required" class="form-control my-2" placeholder=" Operating Sysytem">
		
		<!-- Rating -->
		<input type="text" name="rating" required="required" class="form-control my-2" placeholder="Rating | Out Of 5">
		
		
		
        
      
      
	</div> 
	
	<div class="col-md-6">
	
	 	<!-- MODEL -->
		<input type="text" name="model" required="required" class="form-control my-2" placeholder=" Model ">
		
		<!-- BATTERY -->
		<input type="text" name="battery" required="required" class="form-control my-2" placeholder="Battery">
		
		<!-- Front Camera	 -->
		<input type="text" name="frontcamera" required="required" class="form-control my-2" placeholder="Front Camera	">
		
		<!-- RAM -->
		<input type="text" name="ram" required="required" class="form-control my-2" placeholder="RAM">
		
		<!-- Display -->
		<input type="text" name="display" required="required" class="form-control my-2" placeholder="Display">
		
		<!-- Release Date-->
		<input type="text" name="release" required="required" class="form-control my-2" placeholder=" Release Date">
		
		<!-- Submit Button-->
		<input type="submit"  class="btn btn-primary btn-block form-control my-2 mt-3" value=" ADD ">
	
	
	</div>
	
	   
 	</div>
  	</form>
  	
 </div> 
         			 
<!--End Modal body -->
                  
			
<!-- Modal footer -->
<div class="modal-footer">
	<button  type="button" class="btn btn-dark ml-3" data-dismiss="modal">Cancel</button>
</div>


</div>
</div>
</div>

  <!-- END VIEW MODAL -->





<!-- EDIT MODAL -->
<c:forEach items="${allMobiles}" var="mobile">

<div class="modal fade" id="edit${mobile.id}" style="display: none;" aria-hidden="true">
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
 	<form action="Update" method="post">
 	
 	<div class="row">
 	<div class="col-md-6">
 	
 	<!-- BRAND -->
 	  <select required="required" name="brand" class="custom-select my-2">
          <option selected value="${mobile.brand}"> Brand </option>
          
          <option value="xiaomi"> 	Xiaomi </option>
          <option value="samsung"> 	Samsung </option>
          <option value="oppo"> 	Oppo </option>
          <option value="vivo"> 	Vivo </option>
          <option value="realme"> 	Realme </option>
          <option value="nokia"> 	Nokia </option>
          <option value="micromax"> Micromax </option>
          <option value="huawei"> 	Huawei </option>
          <option value="apple"> 	Apple </option>
          <option value="google"> 	Google </option>
          <option value="oneplus"> 	Oneplus </option>
          <option value="lg"> 		LG </option>
          <option value="motorola"> Motorola </option>
          <option value="poco"> 	Poco </option>
          <option value="honor"> 	Honor </option>

        
        </select>
        
        <!-- PRICE -->
		<input type="text" required="required" name="price" value="${mobile.price}" class="form-control my-2" placeholder="Price">
        
        <!-- PROCESSOR -->
		<input type="text" required="required" name="processor" value="${mobile.processor}" class="form-control my-2" placeholder="Processor">
		
		<!-- Back Camera -->
		<input type="text" required="required" name="backcamera" value="${mobile.backCamera}" class="form-control my-2" placeholder="Back Camera">
		
		<!-- Storage(ROM) -->
		<input type="text" required="required" name="rom" value="${mobile.rom}"  class="form-control my-2" placeholder="Storage(ROM)">
		
		<!-- OS -->
		<input type="text" required="required" name="os" value="${mobile.os}"  class="form-control my-2" placeholder=" Operating Sysytem">
		
		<!-- Rating -->
		<input type="text" required="required" name="rating" value="${mobile.rating}"  class="form-control my-2" placeholder="Rating | Out Of 5">
		
		
		
        
      
      
	</div> 
	
	<div class="col-md-6">
	
	 	<!-- MODEL -->
		<input type="text" required="required" name="model"value="${mobile.model}"  class="form-control my-2" placeholder=" Model ">
		
		<!-- BATTERY -->
		<input type="text" required="required" name="battery" value="${mobile.battery}"  class="form-control my-2" placeholder="Battery">
		
		<!-- Front Camera	 -->
		<input type="text" required="required" name="frontcamera" value="${mobile.frontCamera}"  class="form-control my-2" placeholder="Front Camera	">
		
		<!-- RAM -->
		<input type="text" required="required" name="ram" value="${mobile.ram}"  class="form-control my-2" placeholder="RAM">
		
		<!-- Display -->
		<input type="text" required="required" name="display" value="${mobile.display}"  class="form-control my-2" placeholder="Display">
		
		<!-- Release Date-->
		<input type="text" required="required" name="release" value="${mobile.release}"  class="form-control my-2" placeholder=" Release Date">
		
		<!-- ID -->
		<input type="hidden" value="${mobile.id}" name="id">
		<!-- Submit Button-->
		<input type="submit"  class="btn btn-primary btn-block form-control my-2 mt-3" value=" UPDATE ">
	
	
	</div>
	
	   
 	</div>
  	</form>
  	
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

  <!-- END EDIT MODAL -->



<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
  integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
  </html>
