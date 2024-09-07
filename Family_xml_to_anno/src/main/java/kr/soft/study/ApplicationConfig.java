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
		hobbys.add("����");
		hobbys.add("�丮");

		Student student = new Student("ȫ����", hobbys);

		return student;
	}

	@Bean
	public Family family() {

		Family family = new Family("�ƺ�", "����");

		family.setBrotherName("��");
		family.setSisterName("����");

		return family;

	}

}
