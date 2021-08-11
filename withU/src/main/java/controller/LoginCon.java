package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberDTO;

@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
	      
	      String id = request.getParameter("id");
	      String pw = request.getParameter("pw");
	       
	      MemberDAO dao = new MemberDAO();
	      MemberDTO member = dao.member_login(id, pw);
	      
	      
	            // rs객체에 저장이 됐는지 알아보는 메소드 : .next()
	            // rs.next() :::: rs 의 cursor를 한 줄 내려줌
	            // rs.next() 가 true 이다 = DB에서 가져온 정보가 있다
	       if(member != null){   // DB로부터 받은 정보 확인

	          HttpSession session = request.getSession();
	          session.setAttribute("login_member",member);
	          response.sendRedirect("Main.jsp");
	          
	          System.out.println("로그인 성공 !");
	         } else{
	                System.out.println("로그인 실패...");
	                response.sendRedirect("Login.jsp");
	        }

		
	}

}
