package DTO;

public class Cafe {
	private int c_code;
	private String c_name;
	private String c_time;
	private String c_date;
	private String c_img;
	private String c_address;
	
	public Cafe() {;}
	
	public Cafe(int c_code, String c_name, String c_time, String c_date, String c_img, String c_address) {
		this.c_code = c_code;
		this.c_name = c_name;
		this.c_time = c_time;
		this.c_date = c_date;
		this.c_img = c_img;
		this.c_address = c_address;
	}

	//getter, setter
	public int getC_code() {
		return c_code;
	}
	
	public void setC_code(int c_code) {
		this.c_code = c_code;
	}
	public String getC_name() {
		return c_name;
	}
	
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_time() {
		return c_time;
	}
	
	public void setC_time(String c_time) {
		this.c_time = c_time;
	}
	public String getC_date() {
		return c_date;
	}
	
	public void setC_date(String c_date) {
		this.c_date = c_date;
	}
	public String getC_img() {
		return c_img;
	}
	
	public void setC_img(String c_img) {
		this.c_img = c_img;
	}
	public String getC_address() {
		return c_address;
	}
	
	public void setC_address(String c_address) {
		this.c_address = c_address;
	}
	
	
}
