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


@WebServlet("/RemoveMemberController")
public class RemoveMemberController extends HttpServlet {
	private MemberService memberService;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 *  VIEW - > /WEB-INF/view/member/removeMember.jsp
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
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/member/removeMember.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * redirect -> get방식/member/logout <- 컨트롤러 요청
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
		
		String memberId = request.getParameter("memberId");
		String memberPw = request.getParameter("memberPw");
		
		Member member = new Member();
		member.setMemberId(memberId);
		member.setMemberPw(memberPw);
		
		System.out.println(member);
		
		this.memberService = new MemberService();
		int row = memberService.removeMember(member);
		
		
		if(row == 1) {
			System.out.println("회원탈퇴");
		} else {
			System.out.println("회원탈퇴 실패");
		}
		
		request.getSession().invalidate();
		response.sendRedirect(request.getContextPath()+"/Home");
	}

}
