package kr.soft.study;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class MainClass {

	public static void main(String[] args) {
		
		/* ��� 1 �迭�� �߰��ϱ� */
		// String[] appCtx = {"classpath:applicationCTX.xml","classpath:applicationCTX1.xml","classpath:applicationCTX2.xml"};
		// AbstractApplicationContext ctx = new GenericXmlApplicationContext(appCtx);

		/* ��� 2 import �߰��ϱ� */
		AbstractApplicationContext ctx = new GenericXmlApplicationContext("classpath:applicationCTX.xml");

		Student student1 = ctx.getBean("student1", Student.class);
		System.out.println(student1.getName()); // ȫ�浿
		System.out.println(student1.getHobbys()); // ����, �丮

		StudentInfo studentInfo = ctx.getBean("studentInfo1", StudentInfo.class);
		Student student2 = studentInfo.getStudent(); // student1 == student2
		System.out.println(student2.getName()); // ȫ�浿
		System.out.println(student2.getHobbys()); // ����, �丮

		if (student1.equals(student2)) {
			System.out.println("student1 == student2"); // student1 == student2
		}

		Student student3 = ctx.getBean("student3", Student.class);
		System.out.println(student3.getName());

		if (student1.equals(student3)) {
			System.out.println("student1 == student3");
		} else {
			System.out.println("student1 != student3"); // student1 != student3
		}

		Family family = ctx.getBean("family", Family.class);
		System.out.println(family.getPapaName()); // ȫ�ƺ�
		System.out.println(family.getMamiName()); // Ȩ����
		System.out.println(family.getSisterName()); // ȫ����
		System.out.println(family.getBrotherName()); // ȫ����

		ctx.close();

	}

}