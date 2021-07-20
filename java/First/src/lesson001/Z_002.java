package lesson001;

import java.util.Scanner;

public class Z_002 {

	public static void main(String[] args) {

		Scanner reader = new Scanner(System.in);
		System.out.print("Enter a number: ");

		// nextInt() reads the next integer from the keyboard
		int number = reader.nextInt();

		// println() prints the following line to the output screen
		System.out.println("You entered: " + number);

	}

}
