package kr.soft.study;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;

public class MainClass {

	public static void main(String[] args) {

		AbstractApplicationContext ctx 
		= new AnnotationConfigApplicationContext(ApplicationConfig.class);
		
		
		AdminConnection connection = ctx.getBean("adminConfig",AdminConnection.class);
		
		System.out.println("adminID: " + connection.getAdminId());
		System.out.println("adminPW: " + connection.getAdminPw());
		System.out.println("sub_adminID: " + connection.getSub_adminId());
		System.out.println("sub_adminPW: " + connection.getSub_adminPw());
		
		ctx.close();

	}

}