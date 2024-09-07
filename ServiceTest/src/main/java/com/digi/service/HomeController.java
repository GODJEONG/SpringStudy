package com.digi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.digi.service.dao.Student;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/")
	public String index() {
		return "index";
	}
	
	// [1번째 방식] new를 이용한 서비스객체 생성 및 이용
	MemberService ms = new MemberService();
	
	// [2번째 방식] xml를 통한 빈 객체 생성 및 DI
	@Autowired
	MemberService2 ms2;

	
	// [3번째 방식] @service를 통한 빈 객체 생성 및 DI
	@Autowired
	MemberService3 ms3;
	
	apple ap;
	
	@RequestMapping(value = "/confirm")
	public String confirm1(Student student) {
		
		System.out.println("name: " + student.getName() );
		System.out.println("age: " + student.getAge() );
		System.out.println("grade: " + student.getGradeNum() );
		System.out.println("class: " + student.getClassNum() );
		
		
		ms.confirm();
		ms2.confirm();
		ms3.confirm();
		
		return null;
	}
		
}
