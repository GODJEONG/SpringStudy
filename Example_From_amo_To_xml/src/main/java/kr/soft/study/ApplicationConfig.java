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
		hobbys.add("독서");
		hobbys.add("요리");
		
		Student student = new Student("홍길동",30,hobbys);
		student.setHeight(180);
		student.setWeight(80);
		
		return student;
	}
	
	/*
	 * @Bean public Student student2() {
	 * 
	 * ArrayList<String> hobbys = new ArrayList<String>(); hobbys.add("크로스핏");
	 * hobbys.add("달리기");
	 * 
	 * Student student = new Student("신정",30,hobbys); student.setHeight(174);
	 * student.setWeight(73);
	 * 
	 * return student; }
	 */
	
}
