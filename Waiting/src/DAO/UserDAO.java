package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DTO.Users;

public class UserDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	//회원가입
	public boolean SignUp(Users user) {
		conn= DBConnection.connect();
		String sql = "insert into users(u_name,email,u_pnumber,u_id,u_pw) values (?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getU_id());
			pstmt.setString(2, user.getU_pw());
			pstmt.setString(3, user.getU_name());
			pstmt.setString(4, user.getEmail());
			pstmt.setInt(5, user.getU_pnumber());
			pstmt.executeUpdate();
			return true;
		} catch(SQLException e) {
			//TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			}catch (SQLException e) {
				//TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
	}
//로그인
	public boolean login(String u_id, String u_pw) {
		 String sql = "select * from users where u_id=?";
	      try {
	         conn = DBConnection.connect();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, u_id);
	         rs = pstmt.executeQuery();
	         if (rs.next()) {
	            if (rs.getString("u_pw").equals(u_pw)) {
	               System.out.println("로그인 성공입니다. ");
	               return true;
	            } else {
	               System.out.println("비밀번호가 틀렸습니다. ");
	            }
	         } else {
	            System.out.println("유저 정보가 없습니다.");
	         }

	      } catch (SQLException e) {
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
	      return false;
	}
	// 회원목록 출력
	   public Users showUser(String u_id) {
	      Users user = new Users();
	      conn = DBConnection.connect();

	      try {
	         String sql = "select * from users where u_id=?";
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, u_id);
	         ResultSet rs = pstmt.executeQuery();
	         while (rs.next()) {
	            user.setU_code(rs.getInt("u_code"));
	            user.setU_id(rs.getString("u_id"));
	            user.setU_pw(rs.getString("u_pw"));
	            user.setU_name(rs.getString("u_name"));
	            user.setU_pnumber(rs.getInt("u_pnumber"));
	            user.setEmail(rs.getString("email"));
	         }
	      } catch (SQLException e) {
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
	      return user;
	   }
	   // 아이디 체크
	   public boolean checkId(String u_id) {
	      conn = DBConnection.connect();
	      String sql = "select * from users where u_id=?";

	      try {
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, u_id);
	         ResultSet rs = pstmt.executeQuery();
	         if (rs.next()) {
	            if (rs.getInt(1) != 0) {

	               return false;

	            }
	         }

	      } catch (SQLException e) {
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

	      return true;
	   }
	   // 회원정보 수정
	   public boolean updateUser(Users user) {		// name, email, age, id
			conn = DBConnection.connect();
			String sql = "update users set u_name=?,"
					+ " email=?,"
					+ " u_pnumber=?"
					+ " where u_code=?;";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, user.getU_name());
				pstmt.setString(2, user.getEmail());
				pstmt.setInt(3, user.getU_pnumber());
				pstmt.setInt(4, user.getU_code());
				pstmt.executeUpdate();
				return false;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				try {
					pstmt.close();
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return true;
		}
	   	// 비밀번호 수정
		public boolean updateUserPw(Users user) {	// id, pw
			conn = DBConnection.connect();
			String sql = "update users set u_pw=?"
					+ " where u_code=?;";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, user.getU_pw());
				pstmt.setInt(2, user.getU_code());
				pstmt.executeUpdate();
				return false;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				try {
					pstmt.close();
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return true;
		}
		
		 public Users getUser(int ucode) {		// name, email, age, id
			  Users user = new Users();
		      conn = DBConnection.connect();

		      try {
		         String sql = "select * from users where u_code=?";
		         pstmt = conn.prepareStatement(sql);
		         pstmt.setInt(1,ucode);
		         ResultSet rs = pstmt.executeQuery();
		         while (rs.next()) {
		            user.setU_code(rs.getInt("u_code"));
		            user.setU_id(rs.getString("u_id"));
		            user.setU_pw(rs.getString("u_pw"));
		            user.setU_name(rs.getString("u_name"));
		            user.setU_pnumber(rs.getInt("u_pnumber"));
		            user.setEmail(rs.getString("email"));
		           
		         }
		      } catch (SQLException e) {
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
		      return user;
		 
		 }
		 // 회원탈퇴
			public boolean delU(int u_code) {	// id, pw
				conn = DBConnection.connect();
				String sql = "delete from users"
						+ " where u_code=?;";
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(2, u_code);
					pstmt.executeUpdate();
					return false;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} finally {
					try {
						pstmt.close();
						conn.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				return true;
			}
		 
		 
	}


