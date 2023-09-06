<%@page import="com.entity.User"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.BookDAOImpl" %>
<%@page import="com.entity.BookDtls" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ebook: Index</title>
<%@include file="all_component/allCss.jsp" %>
<style type="text/css">
.back-img{
background: url("img/s.png");
height: 50vh;
width: 100%;
background-repeat: no-repeat;
background-size: cover;
}


.crd-ho:hover{
background-color:#f7f7f7;
}

</style>



</head>
<body style="background-color:#f7f7f7;">

<%
User u =(User)session.getAttribute("userobj");
%>



<%@include file="all_component/navbar.jsp" %>
<div class="container-fluid back-img">
<!--  <h2 class="text-center">Ebook Management System</h2> -->
</div>

<!-- Start recent book -->

<div class="container" style="background-color:#f7f7f7">
   <h3 class="text-center">Recent Book</h3>
   
   <div class="row">
    <%
         BookDAOImpl dao2 = new BookDAOImpl(DBconnect.getConn());
         List<BookDtls> list2 = dao2.getRecentBook();
         for(BookDtls b: list2){
      %>
    
         <div class="col-md-3">
         	<div class="card crd-ho">
            	<div class="card-body text-center">
              		<img alt="" src="book/<%=b.getPhotoName()%>" style="width: 180px;height: 220px" class="img-thumblin">
              		<p><%=b.getBookName() %></p>
             	 	<p><%=b.getAuthor() %></p>
             	 	<p>
             	 	<%
             	 	if(b.getBookCategory().equals("Old"))
             	 	{%>
             	 	Categories:<%=b.getBookCategory()%></p>
             	 	<div class="row ">
                       		
                 		<a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-5">View Details</a>
                 			<a href="" class="btn btn-danger btn-sm ml-3">₹<%=b.getPrice() %></a>
           				</div>
             	 	<% }else{%>
             	 	
             	 		<p>Categories:<%=b.getBookCategory()%></p>
                    	<div class="row ">
                    	
                    	
                    	
                    	<%
                    	if(u == null)
                    	{
                    	%>
                    	<a href="login.jsp" class="btn btn-danger btn-sm ml-3"> <i class="fas fa-cart-plus"></i>Add</a>
                    	<%
                    	}else{
                    	%>
                    	<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>" 
                    	class="btn btn-danger btn-sm ml-3"> <i class="fas fa-cart-plus"></i>Add</a>
                       	<%
                       	}
                    	%>	
                       		
                 			<a href="view_books.jsp?bid=<%=b.getBookId()%>" class="btn btn-success btn-sm ml-2">View Details</a>
                 			<a href="" class="btn btn-danger btn-sm ml-2">₹<%=b.getPrice() %></a>
           				</div>
             	 	<%}
             	 	%>
             	 	
             	 	
     		 	</div>
		 	 </div>
 	 	  </div>
 	 	  
   <%}
     %>
     
 	 	  
 	 	  
 	 </div>
 	 	  
 	 	  
 	 	  
	  
	 <div class="text-center mt-1">
	  <a href="all_recent_book.jsp" class="btn btn-danger btn sm text-white">View All</a>
	  </div>
</div>
<hr>
<!--  recent book -->


<!-- Start new book -->

<div class="container" style="background-color:#f7f7f7">
   <h3 class="text-center">New Book</h3>
      <div class="row">
        
         
         <%
         BookDAOImpl dao = new BookDAOImpl(DBconnect.getConn());
         List<BookDtls> list = dao.getNewBook();
         for(BookDtls b: list){
         %>
          <div class="col-md-3">
         	<div class="card crd-ho">
            	<div class="card-body text-center">
              		<img alt="" src="book/<%=b.getPhotoName() %>" style="width: 180px;height: 220px" class="img-thumblin">
              		<p><%=b.getBookName() %></p>
             	 	<p><%=b.getAuthor() %></p>
             	 	<p>Categories:<%=b.getBookCategory() %></p>
                    	<div class="row ">
                    	
                    	
                    	<%
                    	if(u == null)
                    	{
                    	%>
                    	<a href="login.jsp" class="btn btn-danger btn-sm ml-3"> <i class="fas fa-cart-plus"></i>Add</a>
                    	<%
                    	}else{
                    	%>
                    	<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>" 
                    	class="btn btn-danger btn-sm ml-3"> <i class="fas fa-cart-plus"></i>Add</a>
                       	<%
                       	}
                    	%>	
                       		
                 			<a href="view_books.jsp?bid=<%=b.getBookId() %>" 
                 			class="btn btn-success btn-sm ml-2">View Details</a>
                 			<a href="" class="btn btn-danger btn-sm ml-2">₹<%=b.getPrice() %></a>
           				</div>
     		 	</div>
		 	 </div>
		 	 </div>
 	 	  
         <%
         }
         %>
         
   
 	 	  
	  </div>
	 <div class="text-center mt-1">
	  <a href="all_new_book.jsp" class="btn btn-danger btn sm text-white"> View All</a>
	  </div>
</div>
<hr>
<!-- new book -->














<!-- Start old book -->

<div class="container" style="background-color:#f7f7f7">
   <h3 class="text-center">Old Book</h3>
      <div class="row">
        
      
 	 <%
         BookDAOImpl dao3 = new BookDAOImpl(DBconnect.getConn());
         List<BookDtls> list3 = dao3.getOldBook();
         for(BookDtls b: list3){
      %>
    
         <div class="col-md-3">
         	<div class="card crd-ho">
            	<div class="card-body text-center">
              		<img alt="" src="book/<%=b.getPhotoName()%>" style="width: 180px;height: 220px" class="img-thumblin">
              		<p><%=b.getBookName()%></p>
             	 	<p><%=b.getAuthor() %></p>
             	 	<p>Categories:<%=b.getBookCategory()%></p>
                    	<div class="row ">
                       	
                 			<a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-5">View Details</a>
                 			<a href="" class="btn btn-danger btn-sm ml-3">₹<%=b.getPrice() %></a>
           				</div>
             	 	
             	 
                 
           		
             	 	
     		 	</div>
		 	 </div>
 	 	  </div>
 	 	  <%
     	}
    	%>	
 	 	  
 	 	  
	  </div>
	 <div class="text-center mt-1">
	  <a href="all_old_book.jsp" class="btn btn-danger btn sm text-white"> View All</a>
	  </div>
</div>
<hr>
<!--  old book -->








<!-- footer call -->

<%@include file="all_component/footer.jsp" %>







</body>
</html>