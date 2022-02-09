package DTO;

public class Heart {
	private int h_code;
	private String forc_img;
	private String asterion ;
	private String forc_name;
	private String forc_address;


	public Heart() {;}

	public Heart(int h_code, String forc_img, String asterion, String forc_name, String forc_address){
		this.h_code = h_code;
		this.forc_img = forc_img;
		this.asterion = asterion;
		this.forc_address = forc_address;

	}

	//getter, setter
	public int getH_code() {
		return h_code;
	}
	public void setH_code(int h_code) {
		this.h_code = h_code;
	}

	public String getForc_img() {
		return forc_img;
	}
	public void setForc_img(String forc_img) {
		this.forc_img = forc_img;
	}
	public String getForc_name() {
		return forc_name;
	}
	public void setForc_name(String forc_name) {
		this.forc_name = forc_name;
	}
	public String getForc_address() {
		return forc_address;
	}
	public void setForc_address(String forc_address) {
		this.forc_address = forc_address;
	}



}
