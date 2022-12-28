package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.BoardService;
import vo.Board;
import vo.Member;

@WebServlet("/board/addBoard")
public class AddBoardController extends HttpServlet {
	
	// 글쓰기 폼
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/view/board/addBoard.jsp").forward(request, response);
		
		// 로그인 후에만 들어올 수 있음
		HttpSession session = request.getSession();
		// 로그인 전 : loginMember -> null
		// 로그인 후 : loginMember -> not null
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		if(loginMember == null) { // 로그인 안했을 경우
			request.getRequestDispatcher("/WEB-INF/view/board/home.jsp").forward(request, response);
			return;
		}
		
	}
	// 글쓰기 액션
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // 인코딩
		
		
		HttpSession session = request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		String memberId = request.getParameter("memberId");
		String boardTitle = request.getParameter("boardTitle");
		String boardContent = request.getParameter("boardContent");
		// System.out.println(memberId);
		// System.out.println(boardTitle);
		// System.out.println(boardContent);
		Board board = new Board();
		board.setMemberId(memberId);
		board.setBoardTitle(boardTitle);
		board.setBoardContent(boardContent);
		
		BoardService boardService = new BoardService();
		int row = boardService.insertBoard(board);
		
		// 디버깅
		if(row == 1) {
			System.out.println("추가 성공");
		} else {
			System.out.println("추가 실패");
		}
		response.sendRedirect(request.getContextPath()+"/board/boardList");
	}

}
