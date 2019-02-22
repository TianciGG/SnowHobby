package com.snowhobby.db.entity;

public class Team {
	private String tid;

	private String name;

	private String introduction;

	private String altitude;

	private String dayno;

	private String gooff;

	private String dpecity;

	private String imagepath;

	private String title;

	public String getTid() {
		return tid;
	}

	public void setTid(String tid) {
		this.tid = tid == null ? null : tid.trim();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction == null ? null : introduction.trim();
	}

	public String getAltitude() {
		return altitude;
	}

	public void setAltitude(String altitude) {
		this.altitude = altitude;
	}

	public String getDayno() {
		return dayno;
	}

	public void setDayno(String dayno) {
		this.dayno = dayno;
	}

	public String getGooff() {
		return gooff;
	}

	public void setGooff(String gooff) {
		this.gooff = gooff;
	}

	public String getDpecity() {
		return dpecity;
	}

	public void setDpecity(String dpecity) {
		this.dpecity = dpecity;
	}

	public String getImagepath() {
		return imagepath;
	}

	public void setImagepath(String imagepath) {
		this.imagepath = imagepath == null ? null : imagepath.trim();
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title == null ? null : title.trim();
	}
}