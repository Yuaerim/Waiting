package DTO;

public class Reservation {
	private int r_code;
	private int f_code;
	private int c_code;
	private String reservation_ing;
	private String reservation_end;

	public Reservation( ) {;}

	public Reservation(int r_code,int f_code,int c_code,String reservation_ing,String reservation_end ) {
		this.c_code = c_code;
		this.f_code = f_code;
		this.r_code = r_code;
		this.reservation_ing = reservation_ing;
		this.reservation_end = reservation_end;
	}

	//Getter Setter

	public int getR_code() {
		return r_code;
	}

	public void setR_code(int r_code) {
		this.r_code = r_code;
	}
	public int getF_code() {
		return f_code;
	}
	public void setF_code(int f_code) {
		this.f_code = f_code;
	}
	public int getC_code () {
		return c_code;
	}
	public void setC_code (int c_code) {
		this.c_code = c_code;
	}
	public String getReservation_ing() {
		return reservation_ing;
	}
	public void setReservation_ing(String reservation_ing) {
		this.reservation_ing = reservation_ing;
	}
	public String getReservation_end() {
		return reservation_end;
	}

	public void setReservation_end(String reservation_end) {
		this.reservation_end = reservation_end;
	}
}
