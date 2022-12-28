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


@WebServlet("/member/modifyMember")
public class ModifyMemberController extends HttpServlet {
	private MemberService memberService;
	// 회원 수정 폼
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * VIEW -> /WEB-INF/view/member/modifyMember.jsp
		 */
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/member/modifyMember.jsp");
		rd.forward(request, response);
	}

	// 회원정보 수정 액션
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * redirect -> get방식 /member/memberOne?key값 <- 컨트롤러 요청
		 */
		
		// 로그인 후에만 들어올 수 있음
		HttpSession session = request.getSession();
		// 로그인 전 : loginMember -> null
		// 로그인 후 : loginMember -> not null
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		if(loginMember == null) { //  로그인 아닌 상태
			response.sendRedirect(request.getContextPath()+"/Home");
			return;
		}
		request.setCharacterEncoding("utf-8"); // 인코딩
		String memberName = request.getParameter("memberName");
		String memberPw = request.getParameter("memberPw");
		String memberId = request.getParameter("memberId");
		
		Member member = new Member();
		member.setMemberName(memberName);
		member.setMemberPw(memberPw);
		member.setMemberId(memberId);
		
		this.memberService = new MemberService();
		int row = memberService.modifyMember(member);
		
		if(row == 1) {
			System.out.println("개인정보 수정 성공");
		} else {
			System.out.println("개인정보 수정 실패");
		}
		
		response.sendRedirect(request.getContextPath()+"/member/memberOne");
	}

}
