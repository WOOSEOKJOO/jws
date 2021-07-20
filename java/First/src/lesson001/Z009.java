package lesson001;

public class Z009 {

	public static void main(String[] args) {
		// 최대 공약수 찾기
		int n1 = 81, n2 = 156;
		int gcd = 1;
		
		for (int i = 1; i <= n1 && i <= n2; ++i) {
			if(n1%i ==0 && n2 % i ==0)
				gcd = i;
		}
		System.out.println("최대 공약수"+ n1 +"그리고"+ n2+"는"+gcd);
	}

}
