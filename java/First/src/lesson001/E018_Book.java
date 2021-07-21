package lesson001;

public class E018_Book {
    // 클래스의 멤버변수
	private String title;     // 제목
    private String author;    // 저자
    
    // 생성자 constructor
    
    public E018_Book(String title, String author) {
    	this.title = title;
    	this.author = author;
    }
    
    //serter & getter : 속성값을 설정하거나 얻기 위한 메서드
    
    
    //클래스의 메서드
    
    public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public void showInfo() {
    	System.out.println(this.title +","+ this.author);
    
    }
    
}
