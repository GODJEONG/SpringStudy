package kr.soft.study;

public class Calculation {

	int FirstNum, SecondNum;
	
	public int getFirstNum() {
		return FirstNum;
	}

	public void setFirstNum(int firstNum) {
		FirstNum = firstNum;
	}

	public int getSecondNum() {
		return SecondNum;
	}

	public void setSecondNum(int secondNum) {
		SecondNum = secondNum;
	}

	public void addition() {
		// return FirstNum+SecondNum;
		System.out.println(FirstNum + "+" + SecondNum + "=" + (FirstNum+SecondNum));
	}
	
	public void subtraction() {
	   //	return FirstNum-SecondNum;
		System.out.println(FirstNum + "-" + SecondNum + "=" + (FirstNum-SecondNum));

		}

	public void multiplication() {
		// return FirstNum*SecondNum;
		System.out.println( FirstNum + "*" + SecondNum + "=" + (FirstNum*SecondNum));

	}

	public void division() {
		//return FirstNum/SecondNum;
		System.out.println( FirstNum + "/" + SecondNum + "=" + ((float)FirstNum/SecondNum));

	}
	
}
