package DTO;

public class Mypage {
	private int my_code;
	private int u_code;
	private int f_code;
	private int c_code;
	private int r_code;
	private int h_code;
	
	public Mypage() {;}
	
	public Mypage(int my_code,int u_code,int f_code,int c_code,int r_code,int h_code) {
		this.my_code = my_code;
		this.u_code = u_code;
		this.f_code = f_code;
		this.c_code = c_code;
		this.r_code = r_code;
		this.h_code = h_code;
		
	}

	//getter, setter
	public int getMy_code() {
		return my_code;
	}
	
	public void setMy_code(int my_code) {
		this.my_code = my_code;
	}
	public int getU_code() {
		return u_code;
	}
	
	public void setU_code(int u_code) {
		this.u_code = u_code;
	}
	public int getF_code() {
		return f_code;
	}
	
	public void setF_code(int f_code) {
		this.f_code = f_code;
	}
	public int getC_code() {
		return c_code;
	}
	
	public void setC_code(int c_code) {
		this.c_code = c_code;
	}
	public int getR_code() {
		return r_code;
	}
	
	public void setR_code(int r_code) {
		this.r_code = r_code;
	}
	public int getH_code() {
		return h_code;
	}
	
	public void setH_code(int h_code) {
		this.h_code = h_code;
	}

}
