package DTO;

public class Food {
	private int f_code;
	private String f_name;
	private String f_time;
	private String f_date;
	private String f_img;
	private String f_address;
	
	public Food() {;}
	
	public Food(int f_code, String f_name, String f_time, String f_date, String f_img, String f_address) {
		this.f_code = f_code;
		this.f_name = f_name;
		this.f_time = f_time;
		this.f_date = f_date;
		this.f_img = f_img;
		this.f_address = f_address;
	}

	//getter, setter
	public int getF_code() {
		return f_code;
	}
	
	public void setF_code(int f_code) {
		this.f_code = f_code;
	}
	public String getF_name() {
		return f_name;
	}
	
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
	public String getF_time() {
		return f_time;
	}
	
	public void setF_time(String f_time) {
		this.f_time = f_time;
	}
	public String getF_date() {
		return f_date;
	}
	
	public void setF_date(String f_date) {
		this.f_date = f_date;
	}
	public String getF_img() {
		return f_img;
	}
	
	public void setF_img(String f_img) {
		this.f_img = f_img;
	}
	public String getF_address() {
		return f_address;
	}
	
	public void setF_address(String f_address) {
		this.f_address = f_address;
	}
	
	
}
