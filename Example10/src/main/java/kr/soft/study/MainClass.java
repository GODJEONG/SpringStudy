package kr.soft.study;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class MainClass {

	public static void main(String[] args) {
		
		AbstractApplicationContext ctx = new GenericXmlApplicationContext("classpath:applicationCTX.xml");
		
		Student student1 = ctx.getBean("student", Student.class);

		System.out.println("이름: " + student1.getName());
		System.out.println("나이: " + student1.getAge());

		System.out.println("=============================");
		
		Student student2 = ctx.getBean("student", Student.class);
		student2.setName("홍길동");
		student2.setAge(100);

		System.out.println("이름1: " + student1.getName());
		System.out.println("나이1: " + student1.getAge());

		System.out.println("이름2: " + student2.getName());
		System.out.println("나이2: " + student2.getAge());

		System.out.println("=============================");

		if(student1.equals(student2)) {
			System.out.println("student1 = student2");
		} else {
			System.out.println("student1 != student2");				
		}
		
		ctx.close();  // ���� �Ҹ� ���� �Ʒ��� �ȳ��;� �Ǵ°� ����
	


	}

}