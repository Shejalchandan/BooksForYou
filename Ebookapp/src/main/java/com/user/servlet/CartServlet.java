package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookDAOImpl;
import com.DAO.CartDAOImpl;
import com.DB.DBconnect;
import com.entity.BookDtls;
import com.entity.Cart;
@WebServlet("/cart")
public class CartServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
	        int bid= Integer.parseInt(req.getParameter("bid"));	
	        int uid= Integer.parseInt(req.getParameter("uid"));	
			
			BookDAOImpl dao= new BookDAOImpl(DBconnect.getConn());
			BookDtls b=dao.getBookById(bid);
			//----check------System.out.println(b);
			Cart c = new Cart();
			
			c.setBid(bid);
			c.setUserId(uid);
			
			c.setAuthor(b.getAuthor());
			c.setBookName(b.getBookName());
			c.setPrice(Double.parseDouble(b.getPrice()));
			c.setTotalPrice(Double.parseDouble(b.getPrice()));
			
			//-----check-----System.out.println(c);
			CartDAOImpl dao1=new CartDAOImpl(DBconnect.getConn());
			boolean f = dao1.addCart(c);
			
			HttpSession session=req.getSession();	
			if(f)
			{
				session.setAttribute("addCart","Added to cart.");
				resp.sendRedirect("all_new_book.jsp");
				//System.out.println("Added to cart.");
			}
			else
			{
				session.setAttribute("failed","Not added to cart.");
				resp.sendRedirect("all_new_book.jsp");
				//System.out.println("Not added to cart.");
			}
					
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	

}
