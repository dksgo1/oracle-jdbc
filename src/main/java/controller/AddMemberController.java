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

@WebServlet("/member/addMember")
public class AddMemberController extends HttpServlet {
	private MemberService memberService;
	// 회원가입 폼
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 *  VIEW -> /WEB-INF/view/member/addMember.jsp
		 */
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/member/addMember.jsp");
		rd.forward(request, response);
	}
	// 회원가입 액션
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 	redirect -> get방식 /member/login <- 컨트롤러 요청
		 */
		
		// 로그인 전에만 들어올 수 있음
		HttpSession session = request.getSession();
		// 로그인 전 : loginMember -> null
		// 로그인 후 : loginMember -> not null
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		if(loginMember != null) {// 이미 로그인 상태
			response.sendRedirect(request.getContextPath()+"/Home");
			return;
		}
		
	
		request.setCharacterEncoding("utf-8"); // 인코딩
		String memberId = request.getParameter("memberId");
		String memberPw = request.getParameter("memberPw");
		String memberName = request.getParameter("memberName");
		
		Member member = new Member();
		member.setMemberId(memberId);
		member.setMemberPw(memberPw);
		member.setMemberName(memberName);
		
		this.memberService = new MemberService();
		int row = memberService.addMember(member);
		
		// 디버깅
		if(row == 1) {
			System.out.println("회원가입 성공");
		} else {
			System.out.println("가입 실패");
		}
		response.sendRedirect(request.getContextPath()+"/Home");
	}

}
