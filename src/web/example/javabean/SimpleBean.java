package web.example.javabean;

//JavaBean = POJO(Plain Ordinary Java Object) ²�� Java ����

public class SimpleBean {

	private String name;
	private int age;
	
	public SimpleBean(){
		System.out.println("�@�� Simple Bean ��������");
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
