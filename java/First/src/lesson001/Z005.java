package lesson001;

public class Z005 {
	public static void main(String[] args) {
		// 숫자합 계산

		int num = 50, i=1 , sum=0;
		
		while(i<=num) {
			sum += i;
			i++;
		}
		System.out.println("sum="+sum);
	}//main

}//class
