package lesson003;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class FileInputStreamTest1 {

	public static void main(String[] args) {
		try(FileInputStream fis = null;
		
		try {
			fis = new FileInputStream("C:/Users/user7/Desktop/input (1).txt");
			System.out.println(fis.read());
			System.out.println(fis.read());
			System.out.println(fis.read());
		}catch (FileNotFoundException fe){
			System.out.println("지정된 파일을 찾을수 없습니다.");
			fe.printStackTrace();
		} catch (IOException e) {
			// TODO: handle exception
			System.out.println("파일 입출력처리 오류");
			e.printStackTrace();
		
		}System.out.println("프로그램 정상종료");

	
	}
}
