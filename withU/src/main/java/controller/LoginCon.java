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
	      
	      
	            // rs��ü�� ������ �ƴ��� �˾ƺ��� �޼ҵ� : .next()
	            // rs.next() :::: rs �� cursor�� �� �� ������
	            // rs.next() �� true �̴� = DB���� ������ ������ �ִ�
	       if(member != null){   // DB�κ��� ���� ���� Ȯ��

	          HttpSession session = request.getSession();
	          session.setAttribute("login_member",member);
	          response.sendRedirect("Main.jsp");
	          
	          System.out.println("login success");
	          
	         } else{
	                System.out.println("login fail");
	                response.sendRedirect("Login.jsp");
	        }

		
	}

}
