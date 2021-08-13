package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ProfileDAO {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	private int cnt;
	
	
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
	      
	      try {
	                  
	             if(rs != null) { rs.close();}
	             if(psmt!= null) {psmt.close();}
	             if(conn != null) {conn.close();}
	                     
	             }catch(SQLException e) {
	                e.printStackTrace();
	             }
	   }
	   
	   public int profile_join(ProfileDTO profile) {
		   try {
			   connection();
			   
			   String sql = "INSERT INTO PROFILE VALUES(?,?,?,?,?, NULL, NULL, NULL, NULL)";
			   
			   psmt=conn.prepareStatement(sql);
			   
			   psmt.setString(1, profile.getId());
			   psmt.setString(2, profile.getPw());
			   psmt.setString(3, profile.getName());
			   psmt.setString(4, profile.getNick());
			   psmt.setString(5, profile.getTel());
			   
			   cnt = psmt.executeUpdate();
			   
		   } catch (SQLException e) {
			   e.printStackTrace();
		   } finally {
			   close();
		   }
		   
		   return cnt;
	   }
	   
	   public ProfileDTO profile_login(String id, String pw) {
		   
		   ProfileDTO profile = null;
		   
		   try {
			   connection();
			   
			   String sql = "SELECT NICK, P_IMG FROM PROFILE WHERE ID=? AND PW=?";
			   
			   psmt=conn.prepareStatement(sql);
			   
			   psmt.setString(1, id);
			   psmt.setString(2, pw);
			   
			   rs = psmt.executeQuery();
			   
			   if(rs.next()) {
				   
				   String getNick = rs.getString(1);
				   String getP_img = rs.getString(2);
				   
				   profile = new ProfileDTO(id, pw, null, getNick, null, null, null, null, getP_img);
			   }
			   
			   else {
				   System.out.println("Inquiry Fail in DAO...");
			   }
			   
		   } catch (SQLException e) {
			   e.printStackTrace();
		   } finally {
			   close();
		   }
		   return profile;
	   }
	   
	   public int profile_update(ProfileDTO update_profile) {
		   
		   try {
			   
			   connection();
			   
			   String sql = "UPDATE PROFILE SET NICK=?, PW=?, NAME=?, TEL=?, BIR=?, GENDER=?, ADDR=? WHERE ID=?";
			   
			   psmt = conn.prepareStatement(sql);
			   
			   psmt.setString(1, update_profile.getNick());
			   psmt.setString(2, update_profile.getPw());
			   psmt.setString(3, update_profile.getName());
			   psmt.setString(4, update_profile.getTel());
			   psmt.setString(5, update_profile.getBir());
			   psmt.setString(6, update_profile.getGender());
			   psmt.setString(7, update_profile.getAddr());
			   psmt.setString(8, update_profile.getId());
			   
			   cnt = psmt.executeUpdate();
			   
			   
		   } catch (SQLException e) {
			   e.printStackTrace();
		   } finally {
			   close();
		   }
		   
		   return cnt;
	   }
}
