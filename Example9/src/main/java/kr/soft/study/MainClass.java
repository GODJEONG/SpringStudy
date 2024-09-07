package kr.soft.study;

import org.springframework.context.support.GenericXmlApplicationContext;

public class MainClass {

	public static void main(String[] args) {
		
		GenericXmlApplicationContext ctx = new GenericXmlApplicationContext();

		ctx.load("classpath:applicationCTX.xml");
		
		ctx.refresh();
		
		Student student = ctx.getBean("student", Student.class);

//		OtherStudent otherstudent = ctx.getBean("otherstudent", OtherStudent.class);
		
		 System.out.println("이름: " + student.getName());
		 System.out.println("나이: " + student.getAge());
//		 System.out.println("이름: " + otherstudent.getName());
//		 System.out.println("나이: " + otherstudent.getAge());
			
		ctx.close();  // ���� �Ҹ� ���� �Ʒ��� �ȳ��;� �Ǵ°� ����
	


	}

}