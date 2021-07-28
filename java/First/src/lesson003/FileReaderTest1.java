package lesson003;

import java.io.FileReader;
import java.io.IOException;

public class FileReaderTest1 {

	public static void main(String[] args) {
		try (FileReader fr = new FileReader("C:/Users/user7/Desktop/input2.txt")){
			int i;
			while((i = fr.read()) !=-1) {
				System.out.print((char)i);
			}
			} catch (IOException e) {
				e.printStackTrace();

	}
	}
	}
