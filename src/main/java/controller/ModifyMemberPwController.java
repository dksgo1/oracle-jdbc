package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.MemberService;
import vo.Member;

@WebServlet("/member/modifyPwMember")
public class ModifyMemberPwController extends HttpServlet {
	private MemberService memberService;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * VIEW -> /WEB-INF/view/member/modifyMember.jsp
		 */
		request.setCharacterEncoding("utf-8"); // 인코딩
		// 로그인 후에만 들어올 수 있음
		HttpSession session = request.getSession();
		// 로그인 전 : loginMember -> null
		// 로그인 후 : loginMember -> not null
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		if(loginMember == null) { //  로그인 아닌 상태
			response.sendRedirect(request.getContextPath()+"/Home");
			return;
		}
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/member/modifyPwMember.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // 인코딩
		// 로그인 후에만 들어올 수 있음
		HttpSession session = request.getSession();
		// 로그인 전 : loginMember -> null
		// 로그인 후 : loginMember -> not null
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		if(loginMember == null) { //  로그인 아닌 상태
			response.sendRedirect(request.getContextPath()+"/Home");
			return;
		}
		String memberId = request.getParameter("memberId");
		String memberPw = request.getParameter("memberPw");
		String newMemberPw = request.getParameter("newMemberPw");
		
		this.memberService = new MemberService();
		int row = memberService.modifyPwMember(memberId, memberPw, newMemberPw);
		
		if(row == 1) {
			System.out.println("비밀번호 수정 성공");
		} else {
			System.out.println("비밀번호 수정 실패");
		}
		
		response.sendRedirect(request.getContextPath()+"/member/memberOne");
	}

}
