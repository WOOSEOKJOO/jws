package lesson001;

public class Z004_ {

	public static void main(String[] args) {
		// 문자가 알파벳인지 확인하는 프로그램

		char c = 'q';

		if((c>='a' && c<='z') || (c>='A' && c<='Z'))
			System.out.println(c+"는 알파벳 입니다.");

		else
			System.out.println(c+"는 알파벳이 아닙니다");

		char b = 'A';

		String output = (b >= 'a' && b <= 'z') || (b >= 'A' && b <= 'Z')
				? b + "는 알파벳입니다."
						: b + "는 알파벳이 아닙니다.";

		System.out.println(output);
		
		
		
		
	}

}
