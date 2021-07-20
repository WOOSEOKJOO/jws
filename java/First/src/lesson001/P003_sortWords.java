package lesson001;

import java.util.Scanner;

public class P003_sortWords {

	public static void main(String[] args) {
		
		Scanner keyin = new Scanner(System.in);
		System.out.println("단어들을 스페이스로 구분하여 입력해주세요(최대 10개).");
        String inwords = keyin.nextLine();
        String[] words = inwords.split(" ");
        String temp="";
        
        // i번째 단어 기준으로
        for(int i =0; i < words.length; i++) {
        	// i+1번째 단어 끝까지 비교
        	for(int j=0; j<words.length; j++) {
        		if(words[i].compareTo(words[j])>0) {
        			temp = words[i];
        			words[i] = words[j];
        			words[j] = temp;
        		}
        	}//inner for loop
        
        }//outer for loop
        for(int i = 0; i < words.length ; i++) {
        	System.out.println(words[i]);
        }
	}//class
  
}//main
