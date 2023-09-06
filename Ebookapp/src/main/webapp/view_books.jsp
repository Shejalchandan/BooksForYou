<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body style="background-color:#f0f1f2"> 
<%@include file="all_component/navbar.jsp" %>

<%
    String  id1 =request.getParameter("bid");
   int bid= Integer.parseInt(id1);
    BookDAOImpl dao = new BookDAOImpl(DBconnect.getConn());
     BookDtls  b = dao.getBookById(bid);  
%>


<div class="container p-3">
	<div class="row p-5">
		<div class="col-md-6 text-center p-5 border bg-white">
		<img src="book/<%=b.getPhotoName() %>" style="height: 150px; width: 100px"><br>
		<h4 class="mt-3">Book Name: <span class="text-success"><%=b.getBookName() %></span></h4>		
		<h4>Author Name: <span class="text-success"><%=b.getAuthor() %></span></h4>
		<h4>Category: <span class="text-success"><%=b.getBookCategory() %></span></h4>
		</div>
		
		
		<div class="col-md-6 text-center p-5 border bg-white">
		<h2><%=b.getBookName() %></h2>
		
		
		<%
		if("Old".equals(b.getBookCategory()))
		{%>
		<h5 class="text-primary">Contact to Seller</h5>
		<h5 class="text-primary"><i class="far fa-envelope"></i>Email: <%=b.getEmail() %></h5>
		
		<%
		}
		%>
		
		
		
		
		
		<div class="row p-3">
		<div class="col-md-4 text-danger text-center">
		<i class="fas fa-money-bill-wave fa-2x"></i>
		<p>Cash On Delivery</p>
		</div>
		
		<div class="col-md-4 text-danger text-center">
		<i class="fas fa-undo-alt fa-2x"></i>
		<p>Return Available</p>
		</div>
		
		<div class="col-md-4 text-danger text-center">
		<i class="fas fa-truck-moving fa-2x"></i>
		<p>Free Shipping</p>
		</div>
		
		
		
		</div>
		
		
		<%
		if("Old".equals(b.getBookCategory())){
		%>
		<div class="text-center p-3">
               <a href="index.jsp" class="btn btn-success"><i class="fas fa-cart-plus"></i>Continue Shopping</a>
               <a href="" class="btn btn-danger">₹400</a>
        </div>
		<%}else{
		%>
		
		<div class="text-center p-3">
               <a href="" class="btn btn-primary"><i class="fas fa-cart-plus"></i>Add Cart</a>
               <a href="" class="btn btn-danger">₹400</a>
        </div>
		<% 		
		}
		%>
		
		
		
		
         	
         	
      </div>     
		</div>
		
						
</div>
<%@include file="all_component/footer.jsp" %>
</body>
</html>