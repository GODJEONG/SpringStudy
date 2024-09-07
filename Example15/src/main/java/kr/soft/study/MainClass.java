package kr.soft.study;

import java.util.Scanner;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class MainClass {

	public static void main(String[] args) {

		String config = null;
		System.out.println("dev or run ют╥б: ");
		Scanner scanner = new Scanner(System.in);
		String str = scanner.next();
		if(str.equals("dev")) {
			config="dev";
		} else if(str.equals("run")) {
			config = "run";
		}
		
		scanner.close();

		
		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
		ctx.getEnvironment().setActiveProfiles(config);
		ctx.register(ApplicationConfigDev.class, ApplicationConfigRun.class);
		ctx.refresh();
		
		ServerInfo info = ctx.getBean("serverInfo",ServerInfo.class);
		
		System.out.println("adminID: " + info.getIpNum());
		System.out.println("adminPW: " + info.getPortNum());
		
		ctx.close();

	}

}