package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class QuestionDTO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	private int q_no;
	private String question;
	
	public QuestionDTO() {}
	
	

	public QuestionDTO(int q_no, String question) {
		super();
		this.q_no = q_no;
		this.question = question;
	}



	@Override
	public String toString() {
		return "QuestionDTO [q_no=" + q_no + ", question=" + question + "]";
	}



	public int getQ_no() {
		return q_no;
	}

	public void setQ_no(int q_no) {
		this.q_no = q_no;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}
	
	
}
