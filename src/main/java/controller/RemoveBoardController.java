package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardService;

@WebServlet("/board/RemoveBoard")
public class RemoveBoardController extends HttpServlet {
	private BoardService boardService;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 삭제하면 BoardList로
		 * 경고창 하나 나오게하기
		 * 아이디 다르면 삭제창 안나오게
		 */
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
