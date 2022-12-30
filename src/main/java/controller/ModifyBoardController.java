package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.BoardService;
import vo.Board;
import vo.Member;


@WebServlet("/board/modifyBoard")
public class ModifyBoardController extends HttpServlet {
	private BoardService boardService;
	// 글 수정 폼
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
		
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		// System.out.println(boardNo);
		
		this.boardService = new BoardService();
		ArrayList<Board> list = boardService.ModifyBoard(boardNo);
		// System.out.println("list :"+ list);
		
		request.setAttribute("list", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/board/modifyBoard.jsp");
		rd.forward(request, response);
	}
	// 글 수정 액션
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // 인코딩
		// 로그인 후에만 들어올 수 있음
		HttpSession session = request.getSession();
		// 로그인 전 : loginMember -> null
		// 로그인 후 : loginMember -> not null
		Member loginMember = (Member)session.getAttribute("loginMember");
		if(loginMember == null) { // 로그인 안했을 경우
			request.getRequestDispatcher("/WEB-INF/view/board/home.jsp").forward(request, response);	
			return;
		}
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		String boardTitle = request.getParameter("boardTitle");
		String boardContent = request.getParameter("boardContent");
		
		Board board = new Board();
		board.setBoardNo(boardNo);
		board.setBoardTitle(boardTitle);
		board.setBoardContent(boardContent);
		System.out.println(board);
		
		this.boardService = new BoardService();
		int row = boardService.ModifyBoard2(board);
		
		if(row == 1) {
			System.out.println("수정성공");
		} else {
			System.out.println("수정실패");
		}
		response.sendRedirect(request.getContextPath()+"/board/boardList");
	}

}
