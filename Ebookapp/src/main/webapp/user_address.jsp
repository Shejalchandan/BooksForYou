<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Address</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body style="background-color: #f0f1f2;">
<%@include file="all_component/navbar.jsp" %>

<div class="container p-2">
	<div class="row p3">
		<div class="col-md-6 offset-md-3">
			<div class="card">
		  		<div class="card-body">
		  		
		  		
		  		<h4 class="text-center text-Success">Add Address </h4>
		  			<form action ="">
		  			
		  			
		  			
	 <div class="form-row">
   
    <div class="form-group col-md-6">
      <label for="inputPassword4">Address</label>
      <input type="text" class="form-control" id="inputPassword4" value="">
    </div>
    
    <div class="form-group col-md-6">
      <label for="inputPassword4">Landmark</label>
      <input type="text" class="form-control" id="inputPassword4" value="">
    </div>
  </div>
  
  
  
  
    <div class="form-row">
    
    <div class="form-group col-md-4">
      <label for="inputPassword4">City</label>
      <input type="text" class="form-control" id="inputPassword4" value="">
    </div>
    
    <div class="form-group col-md-4">
      <label for="inputPassword4">State</label>
      <input type="text" class="form-control" id="inputPassword4" value="">
    </div>
    
    <div class="form-group col-md-4">
      <label for="inputPassword4">Pin Code</label>
      <input type="text" class="form-control" id="inputPassword4" value="">
    </div>
  </div>
  
  <div class="text-center">
  <button class="btn btn-warning text-white">Add address</button>
  </div>
  
  
		  			</form>
				</div>
			</div>
		</div>
	</div>
</div>

<%@include file="all_component/footer.jsp" %>

</body>
</html>