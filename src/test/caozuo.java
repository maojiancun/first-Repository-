package test;

import java.sql.Connection;
import java.sql.Statement;

public class caozuo {
	lian lj=new lian();
	Connection conn=lj.getConn();
   public void add(Student stu){
	  try{
	   Statement state=conn.createStatement();
	   String sqlStr= "insert into student(number,name,sex,banji,bumen,zhuanye) values('"		
	   +stu.getNumber()+  "','"	 +stu.getName()+  "','"		
	   +stu.getSex()+     "','"  +stu.getBanji()+  "','"  +stu.getBumen()
				+          "','"  +stu.getZhuanye() +"');            "     ;
	   
	   
	   state.execute(sqlStr);
	   }catch(Exception e){
		   e.printStackTrace();
	   }finally{
		   lj.closeConn();
	   }
   }  
   
   
 
   public void delect(Student stu){
	  try{
	   Statement state=conn.createStatement();
	   String sqlStr= " delete from student where number="+stu.getNumber()         ;
	   
	   
	   state.execute(sqlStr);
	   }catch(Exception e){
		   e.printStackTrace();
	   }finally{
		   lj.closeConn();
	   }
   }  
   
   
   
	   public void update(Student stu){
		  try{
		   Statement state=conn.createStatement();
		   String sqlStr= "update student set number=  '"+stu.getNumber() +"',name='"+stu.getName()
				   +"',sex='" +stu.getSex()+"',banji='"+stu.getBanji()+"',bumen='"+stu.getBumen()+
				   "',zhuanye='"+stu.getZhuanye() +  " ' where  number='"+stu.getNumberold()+"'";
		   
		   
		   state.executeUpdate(sqlStr);
		   }catch(Exception e){
			   e.printStackTrace();
		   }finally{
			   lj.closeConn();
		   }
	   }
	   


   }
