package web.example.javabean;

//JavaBean = POJO(Plain Ordinary Java Object) 簡單 Java 物件

public class SimpleBean {

	private String name;
	private int age;
	
	public SimpleBean(){
		System.out.println("一個 Simple Bean 物件實體化");
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
}
