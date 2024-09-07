package kr.soft.study;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ApplicationConfig {

	@Bean
	public Student student1() {

		Student student = new Student();
		student.setName("신정");
		student.setAge("30");
		student.setClassNum("1반");
		student.setGradeNum("1학년");
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
		student.setName("신신");
		student.setAge("40");
		student.setClassNum("2반");
		student.setGradeNum("2학년");
		return student;
	}

}
