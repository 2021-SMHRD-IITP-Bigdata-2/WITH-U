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


@WebServlet("/UpdateCon")
public class UpdateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		
		HttpSession session = request.getSession();
		MemberDTO member = (MemberDTO)session.getAttribute("login_member");
		
		String id = member.getId();
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String nick = request.getParameter("nick");
		String tel = request.getParameter("tel");
		String addr = request.getParameter("addr");
		String bir = request.getParameter("bir");
		String gender = request.getParameter("gender");
		String p_img = request.getParameter("p_img");
		
		
		// 수정할 3개의 정보를 객체로 묶어서 생성 --> DB에 전달
		MemberDTO update_member = new MemberDTO(id, pw, name, nick, tel, addr, bir, gender, p_img);
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.member_update(update_member);
		
		
		
		if(cnt > 0) {
			response.sendRedirect("Main.jsp");
			System.out.println("정보수정 성공");

	    } else {
	    	System.out.println("정보수정 실패...");
	    	response.sendRedirect("Update.jsp");
	    }	
	}

}
