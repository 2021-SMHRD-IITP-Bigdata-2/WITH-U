package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DiaryDTO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	private String id;
	private String d_title;
	private String d_content;
	private String d_img;
	private int d_private;
	private String d_date;
	private String d_reple;
	
	public DiaryDTO() {}

	
	
	public DiaryDTO(String id, String d_title, String d_content, String d_img, int d_private, String d_date,
			String d_reple) {
		super();
		this.id = id;
		this.d_title = d_title;
		this.d_content = d_content;
		this.d_img = d_img;
		this.d_private = d_private;
		this.d_date = d_date;
		this.d_reple = d_reple;
	}



	@Override
	public String toString() {
		return "DiaryDTO [id=" + id + ", d_title=" + d_title + ", d_content=" + d_content + ", d_img=" + d_img
				+ ", d_private=" + d_private + ", d_date=" + d_date + ", d_reple=" + d_reple + "]";
	}



	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getD_title() {
		return d_title;
	}

	public void setD_title(String d_title) {
		this.d_title = d_title;
	}

	public String getD_content() {
		return d_content;
	}

	public void setD_content(String d_content) {
		this.d_content = d_content;
	}

	public String getD_img() {
		return d_img;
	}

	public void setD_img(String d_img) {
		this.d_img = d_img;
	}

	public int getD_private() {
		return d_private;
	}

	public void setD_private(int d_private) {
		this.d_private = d_private;
	}

	public String getD_date() {
		return d_date;
	}

	public void setD_date(String d_date) {
		this.d_date = d_date;
	}

	public String getD_reple() {
		return d_reple;
	}

	public void setD_reple(String d_reple) {
		this.d_reple = d_reple;
	}
	
	
}
