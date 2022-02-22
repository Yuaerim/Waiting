package DAO;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import DTO.User;
import config.MyBatisConfig;

public class UserDAO {
	SqlSessionFactory sessionFactory = MyBatisConfig.getSqlsesstion_f();
	SqlSession sqlSession;
	
	public UserDAO() {
		sqlSession = sessionFactory.openSession(true);
	}
	//아이디 검사
	public boolean checkId(String u_id) {
		return (Integer)(sqlSession.selectOne("Member.checkId", u_id))==1;
		
	}
	//회원가입
	public void join(User member) {
		sqlSession.insert("Member.join", member);
		
	}
	//로그인
	public boolean login(String u_id, String u_pw) {
		HashMap<String, String> userMap = new HashMap<>();
		return (Integer)(sqlSession.selectOne("Member.login", userMap))==1;
	}
}
