package kr.soft.study2;

public class Calculator {

	public void addition(int FirstNum, int SecondNum) {
		// return FirstNum+SecondNum;
		System.out.println(FirstNum + "+" + SecondNum + "=" + (FirstNum + SecondNum));
	}

	public void subtraction(int FirstNum, int SecondNum) {
		// return FirstNum-SecondNum;
		System.out.println(FirstNum + "-" + SecondNum + "=" + (FirstNum - SecondNum));

	}

	public void multiplication(int FirstNum, int SecondNum) {
		// return FirstNum*SecondNum;
		System.out.println(FirstNum + "*" + SecondNum + "=" + (FirstNum * SecondNum));

	}

	public void division(int FirstNum, int SecondNum) {
		// return FirstNum/SecondNum;
		System.out.println(FirstNum + "/" + SecondNum + "=" + ((float) FirstNum / SecondNum));

	}

}
