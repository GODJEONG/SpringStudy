package kr.soft.study;

import java.util.ArrayList;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration
@ImportResource({"classpath:applicationCTX1.xml", "classpath:applicationCTX2.xml"})

public class ApplicationConfig {
	@Bean
	public Student student1() {
		
		ArrayList<String> hobbys = new ArrayList<String>();
		hobbys.add("달리기");
		hobbys.add("낮잠");
		
		Student student = new Student("니모",hobbys);

		return student;
	}
	
	@Bean
	public StudentInfo studentInfo1() {

		return new StudentInfo(student1());
	}
	
	
}
