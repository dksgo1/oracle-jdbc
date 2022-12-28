package controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.Member;


@WebServlet("/member/memberOne")
public class MemberOneController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 *  VIEW -> /WEB-INF/view/member/memberOne.jsp
		 *  메뉴구성
		 *  1) 회원정보 수정
		 *  2) 회원 탈퇴
		 *  
		 */
		// 로그인 후에만 들어올 수 있음
		HttpSession session = request.getSession();
		// 로그인 전 : loginMember -> null
		// 로그인 후 : loginMember -> not null
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		if(loginMember == null) { // 로그인 안했을 경우
			request.getRequestDispatcher("/WEB-INF/view/board/home.jsp").forward(request, response);
			return;
		}
		request.setCharacterEncoding("utf-8"); // 인코딩
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/member/memberOne.jsp");
		rd.forward(request, response);
	}


}
