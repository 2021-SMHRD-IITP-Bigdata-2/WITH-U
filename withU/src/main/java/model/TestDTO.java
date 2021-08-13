package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class TestDTO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	private String id;
	private int score1;
	private int score2;
	private int score3;
	
	public TestDTO() {}

	public TestDTO(String id, int score1, int score2, int score3) {
		super();
		this.id = id;
		this.score1 = score1;
		this.score2 = score2;
		this.score3 = score3;
	}

	@Override
	public String toString() {
		return "TestDTO [id=" + id + ", score1=" + score1 + ", score2=" + score2 + ", score3=" + score3 + "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getScore1() {
		return score1;
	}

	public void setScore1(int score1) {
		this.score1 = score1;
	}

	public int getScore2() {
		return score2;
	}

	public void setScore2(int score2) {
		this.score2 = score2;
	}

	public int getScore3() {
		return score3;
	}

	public void setScore3(int score3) {
		this.score3 = score3;
	}
	
	
}
