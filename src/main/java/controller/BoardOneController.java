package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardService;
import vo.Board;

@WebServlet("/BoardOneController")
public class BoardOneController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * VIEW 메뉴구성
		 * 1) 글 수정(로그인멤버 == 글쓴멤버)
		 * 2) 글 삭제(로그인멤버 == 글쓴멤버)
		 */
		request.setCharacterEncoding("utf-8"); // 인코딩
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		// System.out.println(boardNo);
		
		BoardService boardService = new BoardService();
		Board board = boardService.boardOne(boardNo);
		
		// view와 공유할 모델데이터 설정
		request.setAttribute("b", board);
		
		// view 연결
		// RequestDispatcher 1) include 2) forward
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/boardOne.jsp");
		rd.forward(request, response);
	}

}
