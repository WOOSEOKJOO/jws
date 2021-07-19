package lesson001;

public class P001_srpGame {

	public static void main(String[] args) {
		
		// if 문 활용 연습- 가위 바위 보 게임
		int com = (int) Math.random() * 10 % 3 + 1;
		int human;
		String winner = "";
		String cp = "", hp ="";
        Scanner input = new Scanner(System.in);
        System.out.println("가위(1),바위(2),보(3)");
        human = input.nextInt();
        
        if(com == 1) {
        	cp = "가위";
        	if(human ==1) {
        		winner = "both";
        		hp = "가위";
        	}else if(com == 2) {
        		
        	}
        }
	}

}
