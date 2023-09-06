<%@page import="com.entity.User"%>
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
<%
User u =(User)session.getAttribute("userobj");
%>

<%@include file="all_component/navbar.jsp" %>



<div class="container-fluid">
	<div class="row p-3">
	
	
	 <%
         BookDAOImpl dao2 = new BookDAOImpl(DBconnect.getConn());
         List<BookDtls> list2 = dao2.getAllRecentBooks();
         for(BookDtls b: list2){
      %>
    
         <div class="col-md-3">
         	<div class="card crd-ho mt-2">
            	<div class="card-body text-center">
              		<img alt="" src="book/<%=b.getPhotoName()%>" style="width: 150px;height: 200px" class="img-thumblin">
              		<p><%=b.getBookName() %></p>
             	 	<p><%=b.getAuthor() %></p>
             	 	<p>
             	 	<%
             	 	if(b.getBookCategory().equals("Old"))
             	 	{%>
             	 	Categories:<%=b.getBookCategory()%></p>
             	 	<div class="row ">
                       		
                 			<a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-5">View Details</a>
                 			<a href="" class="btn btn-danger btn-sm ml-3">₹<%=b.getPrice() %></a>
           				</div>
             	 	<% }else{%>
             	 	
             	 		Categories:<%=b.getBookCategory()%></p>
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
                 			<a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-2">View Details</a>
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
 </div>


<%@include file="all_component/footer.jsp" %>
</body>
</html>