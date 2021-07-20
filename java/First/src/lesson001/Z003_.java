package lesson001;

public class Z003_ {

	public static void main(String[] args) {
		double number = 15.1;

		// 숫자가 0보다 작으면
		if (number<0.0)
		System.out.println(number + "는 음수입니다.");

		// 숫자가 0보다 크면
		else if(number>0.0)
			System.out.println(number+ "는 양수입니다.");
			
		
		// 둘다 거짓이면
		else
			System.out.println(number+"는 0입니다.");
	}

}
