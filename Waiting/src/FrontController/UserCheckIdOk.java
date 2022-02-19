package FrontController;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import DAO.UserDAO;
import action.Action;
import action.ActionForward;

public class UserCheckIdOk implements Action{
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception{
		String u_id = req.getParameter("u_id");
		UserDAO dao = new UserDAO();
		JSONObject obj = new JSONObject();
		PrintWriter out = resp.getWriter();

		if(dao.checkId(u_id) ) {
			obj. put("status", "ok");			
		}else {
			obj. put("status", "ok");

		}
		out.println(obj.toJSONString());
		out.close();
		return null;
	}

}
