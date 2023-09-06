<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sell Book</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body style="background-color:#f0f1f2;">


<c:if test="${empty userobj }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>



<%@include file="all_component/navbar.jsp" %>

<div class="container p-2">
	<div class="row mt-2">
		<div class="col-md-4 offset-md-4">
			<div class="card">
				<div class="card-body">
				
				<h4 class="text-center text-primary p-1" >Sell Old Books</h4>
				
				
				<c:if test="${not empty succMsg }">	
			<p class="text-center text-success">${succMsg}</p> 
	<c:remove var="succMsg" scope="session"></c:remove>
	</c:if>	
		
			<c:if test="${not empty failedMsg }">	
			<p class="text-center text-danger">${failedMsg}</p> 
	<c:remove var="succMsg" scope="session"></c:remove>
	</c:if>	
				
				
<form action="add_old_book" method="post" enctype ="multipart/form-data">

  <input type="hidden" value="${userobj.email }" name="user">


  <div class="form-group">

    <label for="exampleInputEmail1">Book Name</label>
    <input name="bname" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"  >
  </div>

  
  <div class="form-group">
    <label for="exampleInputPassword1">Author Name</label>
    <input name="author" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Price</label>
    <input  name="price" type="number" class="form-control" id="exampleInputEmail1" >
  </div>
 
  
  
  
  <div class="form-group">
    <label for="exampleFormControlFile1">Upload Photo</label>
    <input name="bimg" type="file" class="form-control-file" id="exampleFormControlFile1" >
  </div>
 
 <div class="text-center"><button type="submit" class="btn btn-primary text-center">Sell</button></div> 
  
		
	</form>
				
				</div>
			</div>
		</div>
	</div>
</div>



</body>
</html>