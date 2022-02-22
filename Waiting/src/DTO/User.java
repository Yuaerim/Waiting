package DTO;


public class User {
	private int u_code;
	private String u_id;
	private String u_pw;
	private String u_name;
	private String email;
	private String u_pnumber;
	private String u_Zipcode;

	
	

	public User( ) {;}
	
	public User(int u_code,String u_name, String email, String u_pnumber, String u_id, String u_pw,String u_Zipcode) {
		this.u_code = u_code;
		this.u_id = u_id;
		this.u_pw = u_pw;
		this.u_name = u_name;
		this.email = email;
		this.u_pnumber = u_pnumber;
		this.u_Zipcode=u_Zipcode;
	}

	public int getU_code() {
		return u_code;
	}
	public void setU_code(int u_code) {
		this.u_code = u_code;
	}
	public String getU_name() {
		return u_name;
	}

	public void setU_name(String u_name) {
		this.u_name = u_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getU_pnumber() {
		return u_pnumber;
	}

	public void setU_pnumber(String u_pnumber) {
		this.u_pnumber = u_pnumber;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getU_pw() {
		return u_pw;
	}

	public void setU_pw(String u_pw) {
		this.u_pw = u_pw;
	}

	public String getU_Zipcode() {
		return u_Zipcode;
	}

	public void setU_Zipcode(String u_Zipcode) {
		this.u_Zipcode = u_Zipcode;
	}


}
