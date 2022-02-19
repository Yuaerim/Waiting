package FrontController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.ActionForward;

public class UserFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	} 

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		doProcess(req, resp);
	}
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         String requestURI = req.getRequestURI();
         String contextPath = req.getContextPath();
         String command = requestURI.substring(contextPath.length());
         
         ActionForward forward = null;
         
         if(command.equals("/User/UserCheckIdOK.us")) {
        	 
        	 try {
			forward =	new UserCheckIdOk().execute(req, resp);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				System.out.println("아이디 중복검사 오류" + e);
			}
         }
         
         if(forward != null) {
        	 if(forward.isRedirect()) {
        		 resp.sendRedirect(forward.getPath());
        	 }else {
        		 RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
        		 dispatcher.forward(req, resp);
        	 }
         }
	}

}


