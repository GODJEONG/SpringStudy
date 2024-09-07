package kr.soft.study;

import java.util.ArrayList;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ApplicationConfig {

	@Bean
	public Student student1() {
		
		ArrayList<String> hobbys = new ArrayList<String>();
		hobbys.add("ũ�ν���");
		hobbys.add("�޸���");
		
		Student student = new Student();
		student.setName("����");
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
		hobbys.add("ũ�ν���");
		hobbys.add("�޸���");
		
		Student student = new Student();
		student.setName("�Ž�");
		student.setHobbys(hobbys);
		
		return student;
	}
	
	@Bean
	public Family family() {
		
		Family family = new Family("�ƺ�","����");
		family.setSisterName("����");
		family.setBrotherName("��");
		
		return family;
	}
	
}
