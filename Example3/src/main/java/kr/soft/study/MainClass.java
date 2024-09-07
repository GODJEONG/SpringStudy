package kr.soft.study;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class MainClass {

	public static void main(String[] args) {

		String configLocation =  "classpath:applicationCTX.xml";
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(configLocation);
		MyCalculator myCalculator = ctx.getBean("myCalculator", MyCalculator.class);		
		
		myCalculator.add(); 
		myCalculator.sub(); 
		myCalculator.mul();
		myCalculator.div();
		
		/*
		 * MyCalculator mycalculator = new MyCalculator();
		 * mycalculator.setCalculator(new Calculator());
		 * 
		 * mycalculator.setFirstNum(10); mycalculator.setSecondNum(2);
		 * 
		 * mycalculator.add(); mycalculator.sub(); mycalculator.mul();
		 * mycalculator.div();
		 */
//		mycalculator.Calculator.addition(0, 0);
	}

}
