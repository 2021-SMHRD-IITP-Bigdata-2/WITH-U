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
		
		/*// ������, ����, �۳���, �������θ� ������ ����
		String title = request.getParameter("title");
		String img = request.getParameter("img");
		String content = request.getParameter("content");
		String content = request.getParameter("private");*/
		
		// �� �������� �ϳ��� �����ִ� ��ü ����
		/*DiaryDTO diary = new DiaryDTO(0, send_name, receive_email, content, null);
		
		// ����� ������ DB�� ����
		MessageDAO dao = new MessageDAO();
		
		int cnt = dao.message_insert(message);*/
		/*
		 * if(cnt > 0) { response.sendRedirect("main.jsp"); } else {
		 * response.sendRedirect("main.jsp"); System.out.println("�޼��� ���� ����......."); }
		 */
	
	}

}
