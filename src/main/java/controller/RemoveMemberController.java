package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/REmoveMemberController")
public class RemoveMemberController extends HttpServlet {

 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 *  VIEW - > /WEB-INF/view/member/removeMember.jsp
		 */
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * redirect -> get방식/member/logout <- 컨트롤러 요청
		 */
	}

}