package kr.soft.study;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ApplicationConfig {

	@Bean
	public Student student1() {

		Student student = new Student();
		student.setName("����");
		student.setAge("30");
		student.setClassNum("1��");
		student.setGradeNum("1�г�");
		return student;
	}

	@Bean
	public StudentInfo studentInfo() {

		StudentInfo studentInfo = new StudentInfo(student1());

		return studentInfo;
	}

	@Bean
	public Student student2() {

		Student student = new Student();
		student.setName("�Ž�");
		student.setAge("40");
		student.setClassNum("2��");
		student.setGradeNum("2�г�");
		return student;
	}

}
