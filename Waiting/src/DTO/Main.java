package DTO;

public class Main {
	private int m_code;
	private int f_code;
	private int c_code ;
	private String forcimg;
	


	public Main() {;}

	public Main(int m_code, int f_code, int c_code, String forcimg){
		this.m_code = m_code;
		this.f_code = f_code;
		this.c_code = c_code;
		this.forcimg = forcimg;

	}

	//getter, setter
	public int getM_code() {
		return m_code;
	}
	public void setM_code(int m_code) {
		this.m_code = m_code;
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

	public String getForcimg() {
		return forcimg;
	}
	public void setForcimg(String forcimg) {
		this.forcimg = forcimg;
	}
	


}
