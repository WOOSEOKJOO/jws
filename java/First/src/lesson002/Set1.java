package lesson002;

import java.util.HashSet;
import java.util.Iterator;

public class Set1 {

	public static void main(String[] args) {
		HashSet<Integer> numbers = new HashSet<>();

        // Using add() method
        numbers.add(2);
        numbers.add(4);
        numbers.add(6);
        System.out.println("HashSet: " + numbers);

       // calling iterator() method
        Iterator<Integer> iterate = numbers.iterator();
        System.out.println("Iterator를 이용한 hashset:");
        while(iterate.hasNext()) {
        	System.out.print(iterate.next());
        	System.out.print(", ");
          }
	}

}
