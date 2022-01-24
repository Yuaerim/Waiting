package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	//회원가입
	public boolean SignUp(Users user) {
	 conn = DBConnection.connect();
	 String sql = "insert into users(u_name,email,u_pnumber,u_id,u_pw) values (?,?,?,?,?)";
	 try {
		 pstmt = conn.prepareStatement(sql);
		 pstmt.setString(1, user.getU_name());
		 pstmt.setString(2, user.getEmail());
		 pstmt.setString(3, user.getU_id());
		 pstmt.setString(4, user.getU_pw());
		 pstmt.setInt(5, user.getU_pnumber());
		 return true;
		
	 }catch (SQLException e) {
		 // TODO Auto-generated catch block
		 e.printStackTrace();
	 }finally {
		 try {
			 pstmt.close();
			 conn.close();
		 } catch (SQLException e) {
			 // TODO Auto-generated catch block
			 e.printStackTrace();
		 }
	 }
	}
	
	

}
