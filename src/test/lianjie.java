package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class lianjie {
	public  void xianshi(){
		Connection con=null;
		Statement stmt=null;
		ResultSet rs=null;
		try{
			
			 DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//			String dburl="jdbc:mysql://localhost:3306/xin";
			String user="root";
			String password="123456";
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/xin",user,password);
			
			stmt=con.createStatement(ResultSet.TYPE_FORWARD_ONLY,ResultSet.CONCUR_READ_ONLY);
			String sql="select * from student";
			rs=stmt.executeQuery(sql);
			
			int number=0;
			String name="";
			String sex="";
			int banji=0;
			String bumen="";
			String zhuanye="";
			
			while(rs.next())
			{
				number=rs.getInt("number");
				name=rs.getString("name");
				sex=rs.getString("sex");
				banji=rs.getInt("banji");
				bumen=rs.getString("bumen");
				zhuanye=rs.getString("zhuanye");
			    System.out.println("number="+number+",name="+name+",sex="+sex+",banji="+banji+",bumen="+bumen+",zhuanye="+zhuanye);
			}
			
		}catch(Exception ex){
			ex.printStackTrace();
			
		}finally{
			try{
				rs.close();
			    stmt.close();
			    con.close();
			}catch(Exception ex){
				ex.printStackTrace();
			}
		}
		
	}

}
