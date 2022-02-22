package test;

import DAO.UserDAO;
import DTO.User;

public class Test {
	public static void main(String[] args) {
		User dto = new User();
		UserDAO dao = new UserDAO();
		
		dto.setU_id("aerim");
		dto.setU_pw("1222");
		dto.setU_name("유애림");
		
		if(!dao.checkId(dto.getU_id())) {
			dao.join(dto);
		}
		
	}

}
