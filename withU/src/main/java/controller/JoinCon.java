package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberDTO;

@WebServlet("/JoinCon")
public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");

		
		
		MemberDAO dao = new MemberDAO();
		MemberDTO member = new MemberDTO(id, pw, name, nick, tel);
		

		int cnt = dao.member_join(member);
	         
	    if(cnt > 0) {
	        	 
	     	 // forward 방식으로 페이지 이동
	      	 RequestDispatcher dispatcher = request.getRequestDispatcher("Main.jsp");
	        
	      	 request.setAttribute("id", id);
	       	 dispatcher.forward(request, response);
	       	 
	       	 System.out.println("성공");
	        	 
	        	 //response.sendRedirect("join_success.jsp");

	    } else {
	      	 response.sendRedirect("Main.jsp");
	      	 System.out.println("실패");
	    }
	
	}

}
