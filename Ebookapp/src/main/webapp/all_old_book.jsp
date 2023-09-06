<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Recent Books</title>
<%@include file="all_component/allCss.jsp" %>
<style type="text/css">
.crd-ho:hover{
background-color:#f7f7f7;
}

</style>
</head>
<body style="background-color:#f0f1f2">
<%@include file="all_component/navbar.jsp" %>



<div class="container-fluid">
	<div class="row p-3">
		<%
         BookDAOImpl dao3 = new BookDAOImpl(DBconnect.getConn());
         List<BookDtls> list3 = dao3.getAllOldBooks();
         for(BookDtls b: list3){
      %>
    
         <div class="col-md-3">
         	<div class="card crd-ho mt-2">
            	<div class="card-body text-center">
              		<img alt="" src="book/<%=b.getPhotoName()%>" style="width: 150px;height: 200px" class="img-thumblin">
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
 </div>

<%@include file="all_component/footer.jsp" %>

</body>
</html>