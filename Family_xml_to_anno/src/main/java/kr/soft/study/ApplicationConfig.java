package kr.soft.study;

import java.util.ArrayList;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration
public class ApplicationConfig {

	@Bean
	public Student student3() {

		ArrayList<String> hobbys = new ArrayList<String>();
		hobbys.add("독서");
		hobbys.add("요리");

		Student student = new Student("홍길자", hobbys);

		return student;
	}

	@Bean
	public Family family() {

		Family family = new Family("아빠", "엄마");

		family.setBrotherName("형");
		family.setSisterName("누나");

		return family;

	}

}
