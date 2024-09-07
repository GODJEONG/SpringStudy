package kr.soft.study;

public class MainClass {

	public static void main(String[] args) {

		Calculation calculation = new Calculation();
		calculation.setFirstNum(10);
		calculation.setSecondNum(2);
		
		calculation.addition();
		calculation.subtraction();
		calculation.multiplication();
		calculation.division();
	}

}
