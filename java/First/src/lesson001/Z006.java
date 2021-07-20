package lesson001;

public class Z006 {

	public static void main(String[] args) {
		// for를 이용한 계승구하기
		
		int num = 10;
		long fact = 1;
		for(int i =1; i<=num; ++i) {
			fact *=  i;
		}
		System.out.printf("10의 %d계승=%d",num,fact);
	
	
	    // while를 이용한 5계승구하기
		int number = 5, i = 1;
		long factorial = 1;
		while(i<=number) {
			factorial *= i;
			i++;
		}
		System.out.printf(" 5의 %d계승=%d",number,factorial);
	}//class

}//main
