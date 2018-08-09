package com.accp.entity;

public class Dynamicstate {
	private int statid;
	private int spaceid;
	private String username;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	private String statetext;
	private String statetime;
	private String readed;

	public int getStatid() {
		return statid;
	}

	public void setStatid(int statid) {
		this.statid = statid;
	}

	public int getSpaceid() {
		return spaceid;
	}

	public void setSpaceid(int spaceid) {
		this.spaceid = spaceid;
	}

	public String getStatetext() {
		return statetext;
	}

	public void setStatetext(String statetext) {
		this.statetext = statetext;
	}

	public String getStatetime() {
		return statetime;
	}

	public void setStatetime(String statetime) {
		this.statetime = statetime;
	}

	public String getReaded() {
		return readed;
	}

	public void setReaded(String readed) {
		this.readed = readed;
	}

}
