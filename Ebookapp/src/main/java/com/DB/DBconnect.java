package com.DB;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	private static Connection conn;
	public static Connection getConn()
	{
		 try{
		        Class.forName("com.mysql.jdbc.Driver"); 
		       conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook-app","root","Shejal@18");
		      
		        }
		        catch(Exception e){ 
		           e.printStackTrace();
		        }  
		    return conn;
	}

}
