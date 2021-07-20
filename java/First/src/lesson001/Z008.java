package lesson001;

public class Z008 {

	public static void main(String[] args) {
		// 피보나치 수열
		int i = 1, n = 10, firstTerm = 0, secondTerm = 1;
		System.out.println("피보나치 수열"+ n +"항:");

	    while (i<=n) {
	      System.out.print(firstTerm+",");

	      int nextTerm = firstTerm + secondTerm;
	      firstTerm = secondTerm;
	      secondTerm = nextTerm;

	      i++;
	    }
	}
}
