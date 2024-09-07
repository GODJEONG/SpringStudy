package kr.soft.study2;

public class MainClass {

	public static void main(String[] args) {

		MyCalculator mycalculator = new MyCalculator();
		mycalculator.setCalculator(new Calculator());

		mycalculator.setFirstNum(10);
		mycalculator.setSecondNum(2);
		
		mycalculator.add();
		mycalculator.sub();
		mycalculator.mul();
		mycalculator.div();
//		mycalculator.Calculator.addition(0, 0);
	}

}
