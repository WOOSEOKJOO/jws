package test;

import java.util.Scanner;

public class LeapYear {

	public static void main(String[] args) {
		// 주우석
		

				Scanner reader = new Scanner(System.in);
				System.out.println("년도를 입력하세요:");
				int year = reader.nextInt();
				boolean leap = false;


				if (year % 4 == 0) {


					if (year % 100 == 0) {
						
						if (year % 400 == 0)
							leap = true;
						else
							leap = false;
					}
					else
						leap = true;
				}else
					leap = false;

				if (leap)
					System.out.println(year + "년은 윤년입니");
				else
					System.out.println(year + "년은 윤년이 아닙니다.");
	}

}
