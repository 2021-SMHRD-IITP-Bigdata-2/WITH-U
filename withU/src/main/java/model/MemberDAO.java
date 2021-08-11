package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {

	   private Connection conn;
	   private PreparedStatement psmt;
	   private ResultSet rs;
	   private int cnt;
	   
	   MemberDTO member = null;
	   
	   // 데이터베이스 연동기능, 종료기능
	   public void connection() {
	      try {
	         
	         // 1. 오라클 드라이버 동적 로딩 
	         Class.forName("oracle.jdbc.driver.OracleDriver");
	         
	         // 2. 데이터베이스 연동
	         String url ="jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
	         String user="cgi_3_4";
	         String password = "smhrd4";
	         
	         conn = DriverManager.getConnection(url, user, password);
	      } catch (ClassNotFoundException e) {
	         e.printStackTrace();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      
	   }
	   
	   public void close() {
	      // 4. 데이터베이스 연결 종료
	      // 오류가 나면 catch 문에 잡혀버림-> 오류 메세지 -> (비정상적으로) 종료 되어버림
	      // --> 오류가 나도 DB 연결을 종료하는 부분이 필요함 
	      try {
	                  
	             if(rs != null) { rs.close();}
	             if(psmt!= null) {psmt.close();}
	             if(conn != null) {conn.close();}
	                     
	             }catch(SQLException e) {
	                e.printStackTrace();
	             }
	   }
	   
	   
	   // 회원가입 : id, pw, nick, name, tel 입력해야함
	   public int member_join(MemberDTO member) {
	      
	      try {
	         connection();
	         // 3. 쿼리문 실행
	            String sql = "INSERT INTO PROFILE(ID, PW, NAME, NICK, TEL) VALUES(?,?,?,?,?)";
	            
	            psmt = conn.prepareStatement(sql);
	            // ↑ DB로 보내기 전 셋팅
	            // DB 쪽으로 보낼 SQL문 정의, '보낼 정보 몇개다' 미리 알려줌
	            psmt.setString(1,member.getId());
	            psmt.setString(2,member.getPw());
	            psmt.setString(3,member.getName());
	            psmt.setString(4,member.getNick());
	            psmt.setString(5,member.getTel());
	            
	            cnt = psmt.executeUpdate();
	            
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	          close();
	      }
	      return cnt;
	   } // member_join 종료
	   
	   public MemberDTO member_login(String id, String pw) {
			
			MemberDTO member = null;
			
			try {
				connection();
		         
		         // 3. 쿼리문
		        String sql = "SELECT NICK, P_IMG FROM PROFILE WHERE ID = ? AND PW = ?";
		         
		        psmt = conn.prepareStatement(sql);
		         // ↑ DB로 보내기 전 셋팅
		         // DB 쪽으로 보낼 SQL문 정의, '보낼 정보 몇개다' 미리 알려줌
		        psmt.setString(1,id);
		        psmt.setString(2,pw);
		         
		         // DB에서 조회된 데이터를 rs객체에 저장
		        rs = psmt.executeQuery();
		         
		         // rs객체에 저장이 됐는지 알아보는 메소드 : .next()
		         // rs.next() :::: rs 의 cursor를 한 줄 내려줌
		         // rs.next() 가 true 이다 = DB에서 가져온 정보가 있다
		         if(rs.next()){	// DB로부터 받은 정보 확인
		        	
		        	//String getEmail = rs.getString(1);
		        	
		        	String getNick = rs.getString(1);
		        	String getP_img = rs.getString(2);

		        	// 회원정보를 저장할 수 있는 객체 생성
		        	member = new MemberDTO(id, null, null, getNick, null, null, null, null, getP_img);

		 	      }
		 	      	else{
		 	    	  
		 	      	System.out.println("정보 조회 실패..."); 	      		
		 	      }
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				
				close();
			} // end finally
			return member;
		}
	   
	   public int member_update(MemberDTO update_member) {
			try {
				connection();
				
		        String sql = "UPDATE PROFILE SET NICK=? PW=? NAME=? TEL=? BIR=? GENDER=? ADDR=? WHERE ID=?";
		         
		        psmt = conn.prepareStatement(sql);
		         // ↑ DB로 보내기 전 셋팅
		         // DB 쪽으로 보낼 SQL문 정의, '보낼 정보 몇개다' 미리 알려줌
		         psmt.setString(1,update_member.getNick());
		         psmt.setString(2,update_member.getPw());
		         psmt.setString(3,update_member.getName());
		         psmt.setString(4,update_member.getTel());
		         psmt.setString(5,update_member.getBir());
		         psmt.setString(6,update_member.getGender());
		         psmt.setString(7,update_member.getAddr());
		         psmt.setString(8,update_member.getId());
		         
		         cnt = psmt.executeUpdate();
		         
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				
				close();
			}
			return cnt;
			
		} // end member_update 
	   
}
