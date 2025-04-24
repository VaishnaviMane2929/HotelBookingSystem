package com.app.search;

public class searchModel {

	private int sid;
	private String check_in ;
	private String check_out ;
	private String adult ;
	private String children;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getCheck_in() {
		return check_in;
	}
	public void setCheck_in(String check_in) {
		this.check_in = check_in;
	}
	public String getCheck_out() {
		return check_out;
	}
	public void setCheck_out(String check_out) {
		this.check_out = check_out;
	}
	public String getAdult() {
		return adult;
	}
	public void setAdult(String adult) {
		this.adult = adult;
	}
	public String getChildren() {
		return children;
	}
	public void setChildren(String children) {
		this.children = children;
	}
	/**
	 * @param sid
	 * @param check_in
	 * @param check_out
	 * @param adult
	 * @param children
	 */
	public searchModel(int sid, String check_in, String check_out, String adult, String children) {
		super();
		this.sid = sid;
		this.check_in = check_in;
		this.check_out = check_out;
		this.adult = adult;
		this.children = children;
	}
	/**
	 * @param check_in
	 * @param check_out
	 * @param adult
	 * @param children
	 */
	public searchModel(String check_in, String check_out, String adult, String children) {
		super();
		this.check_in = check_in;
		this.check_out = check_out;
		this.adult = adult;
		this.children = children;
	}
	/**
	 * 
	 */
	public searchModel() {
		super();
	}
	
	
	
}