package test;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		Student student=new Student();
	    student.setNumber("1");
	    student.setName("2");
	    student.setSex("3");
	    student.setBanji("4");
	    student.setBumen("5");
	    student.setZhuanye("5");
	    caozuo cz=new caozuo();
	     cz.add(student);
		
	}

}
