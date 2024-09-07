package kr.soft.study;

import java.io.IOException;

import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.core.env.ConfigurableEnvironment;
import org.springframework.core.env.MutablePropertySources;
import org.springframework.core.io.support.ResourcePropertySource;

public class MainClass {

	public static void main(String[] args) {

		ConfigurableApplicationContext ctx = new GenericXmlApplicationContext();
		ConfigurableEnvironment env = ctx.getEnvironment();
		MutablePropertySources propertySources = env.getPropertySources();

		try {
			propertySources.addLast(new ResourcePropertySource("classpath:admin.properties"));

			System.out.println(env.getProperty("admin.id"));
			System.out.println(env.getProperty("admin.pw"));
			System.out.println(env.getProperty("admin.1"));
			System.out.println(env.getProperty("admin.2"));

		} catch (IOException e) {
		}

		
		// xml¿¡ ´ã±ä °´Ã¼ 
		GenericXmlApplicationContext gCtx = (GenericXmlApplicationContext) ctx;
		gCtx.load("applicationCTX.xml");
		gCtx.refresh();

		AdminConnection adminConnection = gCtx.getBean("adminConnection", AdminConnection.class);
		System.out.println("admin ID : " + adminConnection.getAdminId());
		System.out.println("admin PW : " + adminConnection.getAdminPw());

		ctx.close();

	}

}