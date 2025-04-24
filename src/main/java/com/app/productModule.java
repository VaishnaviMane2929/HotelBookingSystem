package com.app;

public class productModule {

	private int uid;
	private String hcheck_in;
	private int hcheck_out;
	private String hadults;
	private String hchildren;
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getHcheck_in() {
		return hcheck_in;
	}
	public void setHcheck_in(String hcheck_in) {
		this.hcheck_in = hcheck_in;
	}
	public int getHcheck_out() {
		return hcheck_out;
	}
	public void setHcheck_out(int hcheck_out) {
		this.hcheck_out = hcheck_out;
	}
	public String getHadults() {
		return hadults;
	}
	public void setHadults(String hadults) {
		this.hadults = hadults;
	}
	public String getHchildren() {
		return hchildren;
	}
	public void setHchildren(String hchildren) {
		this.hchildren = hchildren;
	}
	/**
	 * @param uid
	 * @param hcheck_in
	 * @param hcheck_out
	 * @param hadults
	 * @param hchildren
	 */
	public productModule(int uid, String hcheck_in, int hcheck_out, String hadults, String hchildren) {
		super();
		this.uid = uid;
		this.hcheck_in = hcheck_in;
		this.hcheck_out = hcheck_out;
		this.hadults = hadults;
		this.hchildren = hchildren;
	}
	/**
	 * @param hcheck_in
	 * @param hcheck_out
	 * @param hadults
	 * @param hchildren
	 */
	public productModule(String hcheck_in, int hcheck_out, String hadults, String hchildren) {
		super();
		this.hcheck_in = hcheck_in;
		this.hcheck_out = hcheck_out;
		this.hadults = hadults;
		this.hchildren = hchildren;
	}
	

}