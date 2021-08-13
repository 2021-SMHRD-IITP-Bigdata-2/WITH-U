package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DiaryDTO;

@WebServlet("/SaveCon")
public class DiarySaveCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		/*// 글제목, 사진, 글내용, 공개여부를 변수에 저장
		String title = request.getParameter("title");
		String img = request.getParameter("img");
		String content = request.getParameter("content");
		String content = request.getParameter("private");*/
		
		// 위 정보들을 하나로 묶어주는 객체 생성
		/*DiaryDTO diary = new DiaryDTO(0, send_name, receive_email, content, null);
		
		// 저장된 정보를 DB로 전달
		MessageDAO dao = new MessageDAO();
		
		int cnt = dao.message_insert(message);*/
		/*
		 * if(cnt > 0) { response.sendRedirect("main.jsp"); } else {
		 * response.sendRedirect("main.jsp"); System.out.println("메세지 전송 실패......."); }
		 */
	
	}

}
