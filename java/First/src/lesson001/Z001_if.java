package lesson001;

public class Z001_if {

	public static void main(String[] args) {
		
	    // year to be checked
	    int year = 2000;
	    boolean leap = false;

	    // 년도가 4로 나눠지면
	    if (year % 4 == 0) {

	      // 년도 끝 자리가 00년도이면
	      if (year % 100 == 0) {

	        // 년도가 400에 나뉘어 지면
	        // then it is a leap year
	        if (year % 400 == 0)
	          leap = true;
	        else
	          leap = false;
	      }
	      // if the year is not century
	      else
	        leap = true;
	    }else
	      leap = false;

	    if (leap)
	      System.out.println(year + "년은 윤년이다.");
	    else
	      System.out.println(year + "년은 윤년이 아니다.");
		

	}

}
