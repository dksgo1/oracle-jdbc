package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.Member;


@WebServlet("/member/logout")
public class LogoutController extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   request.setCharacterEncoding("UTF-8"); // 인코딩
		   // 로그인 후에만 들어올 수 있음
		   HttpSession session = request.getSession();
		   // 로그인 전 : loginMember -> null
		   // 로그인 후 : loginMember -> not null
		   Member loginMember = (Member)session.getAttribute("loginMember");
			
		   if(loginMember == null) { // 로그인 안했을 경우
			   request.getRequestDispatcher("/WEB-INF/view/board/home.jsp").forward(request, response);
			   return;
		   }
		
		/*
		 *  로그인 세션 정보 삭제 : session.invalidate();
		 *  redirect -> get방식 home <- 컨트롤러 요청
		 */
		request.getSession().invalidate();
		response.sendRedirect(request.getContextPath()+"/Home");
	}

}
