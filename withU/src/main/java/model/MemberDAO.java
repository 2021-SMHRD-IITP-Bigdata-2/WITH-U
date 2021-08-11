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
	   
	   // �����ͺ��̽� �������, ������
	   public void connection() {
	      try {
	         
	         // 1. ����Ŭ ����̹� ���� �ε� 
	         Class.forName("oracle.jdbc.driver.OracleDriver");
	         
	         // 2. �����ͺ��̽� ����
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
	      // 4. �����ͺ��̽� ���� ����
	      // ������ ���� catch ���� ��������-> ���� �޼��� -> (������������) ���� �Ǿ����
	      // --> ������ ���� DB ������ �����ϴ� �κ��� �ʿ��� 
	      try {
	                  
	             if(rs != null) { rs.close();}
	             if(psmt!= null) {psmt.close();}
	             if(conn != null) {conn.close();}
	                     
	             }catch(SQLException e) {
	                e.printStackTrace();
	             }
	   }
	   
	   
	   // ȸ������ : id, pw, nick, name, tel �Է��ؾ���
	   public int member_join(MemberDTO member) {
	      
	      try {
	         connection();
	         // 3. ������ ����
	            String sql = "INSERT INTO PROFILE(ID, PW, NAME, NICK, TEL) VALUES(?,?,?,?,?)";
	            
	            psmt = conn.prepareStatement(sql);
	            // �� DB�� ������ �� ����
	            // DB ������ ���� SQL�� ����, '���� ���� ���' �̸� �˷���
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
	   } // member_join ����
	   
	   public MemberDTO member_login(String id, String pw) {
			
			MemberDTO member = null;
			
			try {
				connection();
		         
		         // 3. ������
		        String sql = "SELECT NICK, P_IMG FROM PROFILE WHERE ID = ? AND PW = ?";
		         
		        psmt = conn.prepareStatement(sql);
		         // �� DB�� ������ �� ����
		         // DB ������ ���� SQL�� ����, '���� ���� ���' �̸� �˷���
		        psmt.setString(1,id);
		        psmt.setString(2,pw);
		         
		         // DB���� ��ȸ�� �����͸� rs��ü�� ����
		        rs = psmt.executeQuery();
		         
		         // rs��ü�� ������ �ƴ��� �˾ƺ��� �޼ҵ� : .next()
		         // rs.next() :::: rs �� cursor�� �� �� ������
		         // rs.next() �� true �̴� = DB���� ������ ������ �ִ�
		         if(rs.next()){	// DB�κ��� ���� ���� Ȯ��
		        	
		        	//String getEmail = rs.getString(1);
		        	
		        	String getNick = rs.getString(1);
		        	String getP_img = rs.getString(2);

		        	// ȸ�������� ������ �� �ִ� ��ü ����
		        	member = new MemberDTO(id, null, null, getNick, null, null, null, null, getP_img);

		 	      }
		 	      	else{
		 	    	  
		 	      	System.out.println("���� ��ȸ ����..."); 	      		
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
		         // �� DB�� ������ �� ����
		         // DB ������ ���� SQL�� ����, '���� ���� ���' �̸� �˷���
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
