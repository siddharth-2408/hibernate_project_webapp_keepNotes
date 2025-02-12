package com.entity;

import java.util.Date;
import java.util.Random;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class KeepNotesData 
{
	@Id
	private int id;
	private String title;
	
	@Column(length=1500)
	private String content;
	
	private Date date;
	
	public KeepNotesData(String title, String content, Date date) 
	{
		super();
		this.id = new Random().nextInt(1000000);
		this.title = title;
		this.content = content;
		this.date = date;
	}
	public int getId()
	{
		return id;
	}
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public KeepNotesData() {
		super();
		// TODO Auto-generated constructor stub
	}
}
