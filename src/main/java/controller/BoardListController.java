package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.BoardService;
import vo.Board;
import vo.Member;



@WebServlet("/board/boardList")
public class BoardListController extends HttpServlet {
   private BoardService boardService;
   
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   
		// 로그인 후에만 들어올 수 있음
		HttpSession session = request.getSession();
		// 로그인 전 : loginMember -> null
		// 로그인 후 : loginMember -> not null
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		if(loginMember == null) { // 로그인 안했을 경우
			request.getRequestDispatcher("/WEB-INF/view/board/home.jsp").forward(request, response);
			return;
		}
		
	  int currentPage = 1;
      if(request.getParameter("currentPage") != null) {
         currentPage = Integer.parseInt(request.getParameter("currentPage"));
      }
      
      int rowPerPage = 10;
      if(request.getParameter("rowPerPage") != null) {
         rowPerPage = Integer.parseInt(request.getParameter("rowPerPage"));
      }
      
      this.boardService = new BoardService();
      ArrayList<Board> list = boardService.getBoardListByPage(currentPage, rowPerPage);
      request.setAttribute("boardList", list);
      request.setAttribute("currentPage", currentPage);
      request.setAttribute("rowPerPage", rowPerPage);
    
      /*
       * VIEW 메뉴구성
       * 1) 글입력
       * 2) 글 상세보기
       * 
       */
      
      request.getRequestDispatcher("/WEB-INF/view/board/boardList.jsp").forward(request, response);
   }
}
