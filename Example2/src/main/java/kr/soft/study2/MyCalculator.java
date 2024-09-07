package kr.soft.study2;

public class MyCalculator {

	Calculator Calculator;
	int FirstNum, SecondNum;

	public Calculator getCalculator() {
		return Calculator;
	}

	public void setCalculator(Calculator calculator) {
		Calculator = calculator;
	}

	public void setFirstNum(int firstNum) {
		FirstNum = firstNum;
	}

	public void setSecondNum(int secondNum) {
		SecondNum = secondNum;
	}

	public void add() {
		Calculator.addition(FirstNum, SecondNum);
	}

	public void sub() {
		Calculator.subtraction(FirstNum, SecondNum);
		;
	}

	public void mul() {
		Calculator.multiplication(FirstNum, SecondNum);
		;
	}

	public void div() {
		Calculator.division(FirstNum, SecondNum);
		;
	}

}
