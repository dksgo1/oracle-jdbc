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

@WebServlet("/member/login")
public class LoginController extends HttpServlet {
	private MemberService memberService;
	// 로그인 폼
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 *  VIEW -> / WEB-INF/view/member/login.jsp
		 */
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/member/login.jsp");
		rd.forward(request, response);
	}

	// 로그인 액션
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 *  로그인 세션 정보 : session.setAttribute("loginMember", Member타입)
		 *  redirect -> get방식 home <- 컨트롤러 요청
		 */
		// 로그인 전에만 들어올 수 있음
		HttpSession session = request.getSession();
		// 로그인 전 : loginMember -> null
		// 로그인 후 : loginMember -> not null
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		if(loginMember != null) { // 이미 로그인 상태
			response.sendRedirect(request.getContextPath()+"/Home");
			return;
		}
		String memberId = request.getParameter("memberId");
		String memberPw = request.getParameter("memberPw");
		// System.out.println(memberId);
		// System.out.println(memberPw);
		
		// null 값이나 공백값 못들어오게
		if(memberId == null 
			|| memberPw == null	
			|| memberId.equals("")
			|| memberPw.equals("")) {
			response.sendRedirect(request.getContextPath()+"/member/login");
			return;
		}
		
		Member member = new Member();
		member.setMemberId(memberId);
		member.setMemberPw(memberPw);
		
		
		this.memberService = new MemberService();
		Member returnMember = memberService.login(member);
		
		if(returnMember == null) {
			response.sendRedirect(request.getContextPath()+"/member/login");
			return;
		}
		
		session.setAttribute("loginMember", returnMember);
		response.sendRedirect(request.getContextPath()+"/Home");
	}

}
