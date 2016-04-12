package test;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
//import java.sql.Connection;
import java.sql.DriverManager;

public class lian {
	static Connection conn = null;
	
	
	
	public Connection getConn(){
		try{
			 
			Class.forName("com.mysql.jdbc.Driver");
			 String url="jdbc:mysql://localhost:3306/xin";
			 String user="root";
			 String passwd="123456";
			 
			
			 conn=DriverManager.getConnection(url,user,passwd);
			 Statement s=conn.createStatement();
			 String str="select * from student ";
			
		}catch(Exception e){
			e.printStackTrace();
			
		}
		return conn;
	}
	
	public void closeConn(){
		try{
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	

}
