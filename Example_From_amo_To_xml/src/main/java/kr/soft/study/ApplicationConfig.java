package kr.soft.study;

import java.util.ArrayList;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration
@ImportResource("classpath:applicationCTX.xml")
public class ApplicationConfig {

	@Bean
	public Student student1() {
		
		ArrayList<String> hobbys = new ArrayList<String>();
		hobbys.add("����");
		hobbys.add("�丮");
		
		Student student = new Student("ȫ�浿",30,hobbys);
		student.setHeight(180);
		student.setWeight(80);
		
		return student;
	}
	
	/*
	 * @Bean public Student student2() {
	 * 
	 * ArrayList<String> hobbys = new ArrayList<String>(); hobbys.add("ũ�ν���");
	 * hobbys.add("�޸���");
	 * 
	 * Student student = new Student("����",30,hobbys); student.setHeight(174);
	 * student.setWeight(73);
	 * 
	 * return student; }
	 */
	
}
