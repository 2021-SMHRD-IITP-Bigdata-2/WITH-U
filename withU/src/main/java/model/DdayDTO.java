package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DdayDTO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	private String id;
	private String d_start;
	private String d_end;
	
	public DdayDTO() {}

	
	
	public DdayDTO(String id, String d_start, String d_end) {
		super();
		this.id = id;
		this.d_start = d_start;
		this.d_end = d_end;
	}



	@Override
	public String toString() {
		return "DdayDTO [id=" + id + ", d_start=" + d_start + ", d_end=" + d_end + "]";
	}



	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getD_start() {
		return d_start;
	}

	public void setD_start(String d_start) {
		this.d_start = d_start;
	}

	public String getD_end() {
		return d_end;
	}

	public void setD_end(String d_end) {
		this.d_end = d_end;
	}
	
	
}
