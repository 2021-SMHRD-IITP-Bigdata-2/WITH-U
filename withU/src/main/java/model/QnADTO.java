package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class QnADTO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	private String id;
	private int q_no;
	private String q_content;
	private int b_no;
	private String q_private;
	private String q_date;
	
	public QnADTO() {}

	
	
	public QnADTO(String id, int q_no, String q_content, int b_no, String q_private, String q_date) {
		super();
		this.id = id;
		this.q_no = q_no;
		this.q_content = q_content;
		this.b_no = b_no;
		this.q_private = q_private;
		this.q_date = q_date;
	}



	@Override
	public String toString() {
		return "QnADTO [id=" + id + ", q_no=" + q_no + ", q_content=" + q_content + ", b_no=" + b_no + ", q_private="
				+ q_private + ", q_date=" + q_date + "]";
	}



	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getQ_no() {
		return q_no;
	}

	public void setQ_no(int q_no) {
		this.q_no = q_no;
	}

	public String getQ_content() {
		return q_content;
	}

	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}

	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public String getQ_private() {
		return q_private;
	}

	public void setQ_private(String q_private) {
		this.q_private = q_private;
	}

	public String getQ_date() {
		return q_date;
	}

	public void setQ_date(String q_date) {
		this.q_date = q_date;
	}

	
}
