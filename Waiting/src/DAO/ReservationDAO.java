package DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DTO.Mypage;
import DTO.Cafe;
import DTO.Food;

public class ReservationDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;

	public Food food(int f_code) {
		Food rv = new Food();
		try {
			conn = DBConnection.connect();
			String sql = "select * from food where f_code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, f_code);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {

				rv.setF_code(rs.getInt("f_code"));
				rv.setF_name(rs.getString("f_name"));
				rv.setF_time(rs.getString("f_tiom"));
				rv.setF_date(rs.getString("f_date"));
				rv.setF_img(rs.getString("f_img"));
				rv.setF_address(rs.getString("f_address"));

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
		return rv;

	}

	public Cafe cafe(int c_code) {
		Cafe rv = new Cafe();
		try {
			conn = DBConnection.connect();
			String sql = "select * from food where c_code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, c_code);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {

				rv.setC_code(rs.getInt("c_code"));
				rv.setC_name(rs.getString("c_name"));
				rv.setC_time(rs.getString("c_tiom"));
				rv.setC_date(rs.getString("c_date"));
				rv.setC_img(rs.getString("c_img"));
				rv.setC_address(rs.getString("c_address"));

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
		return rv;

	}

	public boolean start_rv(Mypage rv,Food food,Cafe cafe, int u_code) {
		try {
			conn = DBConnection.connect();
			String sql = "insert into reservation(f_code,c_code,reservation_ing,reservation_end) values(?,?,1,1);";
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, rv.getF_code());
			pstmt.setInt(2, rv.getC_code());
			pstmt.setInt(3, u_code);

			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
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

	public boolean updateUserPoint(int chFee, int u_code) {
		try {
			conn = DBConnection.connect();
			String sql = "update users set point= point-?"
					+ " where u_code=?";
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, chFee);
			pstmt.setInt(2, u_code);

			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
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

	public ArrayList<Food> theme_chal(String theme) {

		ArrayList<Food> datas = new ArrayList();
		try {
			conn = DBConnection.connect();
			String sql = "select * from Food where theme=?";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, theme);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				Food rv = new Food();
				rv.setF_code(rs.getInt("f_code"));
				rv.setF_name(rs.getString("f_name"));
				rv.setF_time(rs.getString("f_tiom"));
				rv.setF_date(rs.getString("f_date"));
				rv.setF_img(rs.getString("f_img"));
				rv.setF_address(rs.getString("f_address"));
				datas.add(rv);

			}
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
		return datas;
	}

	public ArrayList<Cafe> theme_chal1(String theme) {

		ArrayList<Cafe> datas = new ArrayList();
		try {
			conn = DBConnection.connect();
			String sql = "select * from Cafe where theme=?";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, theme);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				Cafe rv = new Cafe();
				rv.setC_code(rs.getInt("c_code"));
				rv.setC_name(rs.getString("c_name"));
				rv.setC_time(rs.getString("c_tiom"));
				rv.setC_date(rs.getString("c_date"));
				rv.setC_img(rs.getString("c_img"));
				rv.setC_address(rs.getString("c_address"));
				datas.add(rv);

			}
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
		return datas;
	}

	public boolean byebyechallenge() {
		conn = DBConnection.connect();
		PreparedStatement pstmt2 = null;
		String sql = "select * from mypage where state=? and finishD <= NOW()";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setBoolean(1, true);
			ResultSet rs = pstmt.executeQuery();
			ArrayList<Mypage> myClist = new ArrayList<>();
			while (rs.next()) {
				Mypage mypage = new Mypage();
				mypage.setMy_code(rs.getInt("my_code"));

				myClist.add(mypage);
			}
			boolean success = true;
			String sql2 = "update myC set state=false where mc_code=?";
			pstmt2 = conn.prepareStatement(sql2);

			for (int i = 0; i < myClist.size(); i++) {
				pstmt2.setInt(1, myClist.get(i).getMy_code());
				success = pstmt2.execute();

			}
			return success;
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

	// 현재진행중 리스트 반환값 datas
	public ArrayList<Mypage> prochal(int u_code) {
		ArrayList<Mypage> datas = new ArrayList();
		try {
			conn = DBConnection.connect();
			String sql = "select * from mypage where state=? and u_code=?";
			pstmt = conn.prepareStatement(sql);

			pstmt.setBoolean(1, true);
			pstmt.setInt(2, u_code);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				Mypage mypage = new Mypage();
				mypage.setMy_code(rs.getInt("my_code"));
				mypage.setU_code(rs.getInt("u_code"));
				mypage.setF_code(rs.getInt("f_code"));
				mypage.setC_code(rs.getInt("c_code"));
				mypage.setH_code(rs.getInt("h_code"));
				mypage.setStart_rv(rs.getString("start_rv"));
				mypage.setFinish_rv(rs.getString("finish_rv"));
				datas.add(mypage);

			}
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
		return datas;

	}

	// 종료된챌린지 리스트 반환값 datas
	public ArrayList<Mypage> finchal(int u_code) {
		ArrayList<Mypage> datas = new ArrayList();
		try {
			conn = DBConnection.connect();
			String sql = "select * from mypage where state=0 and u_code=?";
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, u_code);


			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				Mypage mypage = new Mypage();
				mypage.setMy_code(rs.getInt("my_code"));
				mypage.setU_code(rs.getInt("u_code"));
				mypage.setF_code(rs.getInt("f_code"));
				mypage.setC_code(rs.getInt("c_code"));
				mypage.setH_code(rs.getInt("h_code"));
				mypage.setStart_rv(rs.getString("start_rv"));
				mypage.setFinish_rv(rs.getString("finish_rv"));
				datas.add(mypage);

			}
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
		return datas;

	}

	// 진행중 챌린지 갯수 int cnt 반환
	public int cntprochal(int u_code) {
		int cnt = 0;
		try {
			conn = DBConnection.connect();
			String sql = "select count(*)  from mypage where u_code = ? and state=true";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, u_code);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				cnt = rs.getInt(1);

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

		return cnt;
	}

	// 종료된 챌린지 갯수 int cnt 반환
	public int cntfinchal(int u_code) {
		int cnt = 0;
		try {
			conn = DBConnection.connect();
			String sql = "select count(*)  from mypage where u_code = ? and state=false";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, u_code);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				cnt = rs.getInt(1);

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

		return cnt;
	}

	public ArrayList<Food> getChalName(ArrayList<Mypage> mypage) {

		ArrayList<Food> Clist = new ArrayList<Food>();
		try {
			conn = DBConnection.connect();
			for (int i = 0; i < mypage.size(); i++) {
				String sql = "select * from food where f_code = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, mypage.get(i).getC_code());
				ResultSet rs = pstmt.executeQuery();
				while (rs.next()) {
					Food f = new Food();
					f.setF_code(rs.getInt("f_code"));
					f.setF_name(rs.getString("f_name"));
					f.setF_time(rs.getString("f_time"));
					f.setF_date(rs.getString("f_date"));
					f.setF_img(rs.getString("f_img"));
					f.setF_address(rs.getString("f_address"));
					Clist.add(f);
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
		if(Clist.size()==0) {
			return null;
		}
		return Clist;
	}
	public ArrayList<Cafe> getChalName1(ArrayList<Mypage> mypage) {

		ArrayList<Cafe> Clist = new ArrayList<Cafe>();
		try {
			conn = DBConnection.connect();
			for (int i = 0; i < mypage.size(); i++) {
				String sql = "select * from Cafe where c_code = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, mypage.get(i).getC_code());
				ResultSet rs = pstmt.executeQuery();
				while (rs.next()) {
					Cafe c = new Cafe();
					c.setC_code(rs.getInt("c_code"));
					c.setC_name(rs.getString("c_name"));
					c.setC_time(rs.getString("c_time"));
					c.setC_date(rs.getString("c_date"));
					c.setC_img(rs.getString("c_img"));
					c.setC_address(rs.getString("c_address"));
					Clist.add(c);
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
		if(Clist.size()==0) {
			return null;
		}
		return Clist;
	}



	// mc_code로 mychallenge 받아오기
	public Mypage callMypage(int u_code,int f_code,int c_code) {
		Mypage mp = new Mypage();

		try {
			conn = DBConnection.connect();
			String sql = "select * from Mypage where u_code=? and f_code=? and c_code=? and state=1";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, u_code);
			pstmt.setInt(2, f_code);
			pstmt.setInt(3, c_code);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				mp.setMy_code(rs.getInt("my_code"));
				mp.setU_code(rs.getInt("u_code"));
				mp.setF_code(rs.getInt("f_code"));
				mp.setC_code(rs.getInt("c_code"));
				mp.setH_code(rs.getInt("f_code"));
				mp.setStart_rv(rs.getString("start_rv"));
				mp.setFinish_rv(rs.getString("finish_rv"));
			}
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
		return mp;

	}


	public Mypage callMypage(int my_code) {
		Mypage mp = new Mypage();

		try {
			conn = DBConnection.connect();
			String sql = "select * from Mypage where my_code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, my_code);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				mp.setMy_code(rs.getInt("my_code"));
				mp.setU_code(rs.getInt("u_code"));
				mp.setF_code(rs.getInt("f_code"));
				mp.setC_code(rs.getInt("c_code"));
				mp.setH_code(rs.getInt("h_code"));
				mp.setStart_rv(rs.getString("start_rv"));
				mp.setFinish_rv(rs.getString("finish_rv"));
			}
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
		return mp;

	}
	// u_code 로 mypage 받아오기
	public boolean checkChallengeRepeat(int u_code, int f_code,int c_code) {
		boolean check = false;
		try {
			conn = DBConnection.connect();
			String sql = "select c_code from mypage where u_code=?";
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, u_code);

			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				if (f_code == rs.getInt("f_code")) {
					check=true;
				}else if (c_code == rs.getInt("c_code")) {
					check=true;
				}
			}
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
		return check;

	}}
