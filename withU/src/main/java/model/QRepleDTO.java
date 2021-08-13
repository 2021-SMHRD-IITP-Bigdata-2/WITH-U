package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class QRepleDTO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	private String id;
	private String nick;
	private int b_no;
	private String q_re;
	
	public QRepleDTO() {}
	
	
	public QRepleDTO(String id, String nick, int b_no, String q_re) {
		super();
		this.id = id;
		this.nick = nick;
		this.b_no = b_no;
		this.q_re = q_re;
	}





	@Override
	public String toString() {
		return "QRepleDTO [id=" + id + ", nick=" + nick + ", b_no=" + b_no + ", q_re=" + q_re + "]";
	}





	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public String getQ_re() {
		return q_re;
	}
	public void setQ_re(String q_re) {
		this.q_re = q_re;
	}
	
	
}
