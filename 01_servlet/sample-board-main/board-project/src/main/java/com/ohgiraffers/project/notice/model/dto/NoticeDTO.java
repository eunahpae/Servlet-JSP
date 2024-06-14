package com.ohgiraffers.project.notice.model.dto;

import java.sql.Date;

import com.ohgiraffers.project.member.model.dto.MemberDTO;

public class NoticeDTO implements java.io.Serializable {
	
	private int no;
	private String title;
	private String body;
	private int writerMemberNo;
	private MemberDTO writer;		//MemberTable과 join하는 경우 1:1 조인이 될 것이기 때문에 MemberDTO 타입으로 생성
	private int count;
	private Date createdDate;
	private String status;
	
	public NoticeDTO() {}
	
	public NoticeDTO(int no, String title, String body, int writerMemberNo, MemberDTO writer, int count,
			Date createdDate, String status) {
		super();
		this.no = no;
		this.title = title;
		this.body = body;
		this.writerMemberNo = writerMemberNo;
		this.writer = writer;
		this.count = count;
		this.createdDate = createdDate;
		this.status = status;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public int getWriterMemberNo() {
		return writerMemberNo;
	}

	public void setWriterMemberNo(int writerMemberNo) {
		this.writerMemberNo = writerMemberNo;
	}

	public MemberDTO getWriter() {
		return writer;
	}

	public void setWriter(MemberDTO writer) {
		this.writer = writer;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "NoticeDTO [no=" + no + ", title=" + title + ", body=" + body + ", writerMemberNo=" + writerMemberNo
				+ ", writer=" + writer + ", count=" + count + ", createdDate=" + createdDate + ", status=" + status
				+ "]";
	}
	
}
