package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardService;
import vo.Board;

@WebServlet("/InsertBoardActionController")
public class InsertBoardActionController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // 인코딩
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
		response.sendRedirect(request.getContextPath()+"/BoardListController");
	}

}
