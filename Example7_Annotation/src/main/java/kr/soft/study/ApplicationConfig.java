package kr.soft.study;

import java.util.ArrayList;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ApplicationConfig {

	@Bean
	public Student student1() {
		
		ArrayList<String> hobbys = new ArrayList<String>();
		hobbys.add("크로스핏");
		hobbys.add("달리기");
		
		Student student = new Student();
		student.setName("신정");
		student.setHobbys(hobbys);
		
		return student;
	}
	
	@Bean
	public StudentInfo studentInfo1() {

		StudentInfo studentInfo = new StudentInfo();
		studentInfo.setStudent(student1());
		
		return studentInfo;
	}
	
	@Bean
	public Student student3() {
		
		ArrayList<String> hobbys = new ArrayList<String>();
		hobbys.add("크로스핏");
		hobbys.add("달리기");
		
		Student student = new Student();
		student.setName("신신");
		student.setHobbys(hobbys);
		
		return student;
	}
	
	@Bean
	public Family family() {
		
		Family family = new Family("아빠","엄마");
		family.setSisterName("누나");
		family.setBrotherName("형");
		
		return family;
	}
	
}
