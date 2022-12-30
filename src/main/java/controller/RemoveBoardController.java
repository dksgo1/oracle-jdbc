package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.BoardService;
import vo.Member;

@WebServlet("/board/RemoveBoard")
public class RemoveBoardController extends HttpServlet {
	private BoardService boardService;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 삭제하면 BoardList로
		 * 경고창 하나 나오게하기
		 * 아이디 다르면 삭제창 안나오게
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
		request.setCharacterEncoding("utf-8"); // 인코딩\
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		
		this.boardService = new BoardService();
		int row = boardService.removeBoard(boardNo);
		
		if(row == 1) {
			System.out.println("게시글 삭제성공");
		} else {
			System.out.println("게시글 삭제실패");
		}
		
		response.sendRedirect(request.getContextPath()+"/board/boardList");
	}

}
