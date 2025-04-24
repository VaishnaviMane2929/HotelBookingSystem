package com.app;

public class addProdyuctmodule {

	private int hid;
	private String hname;
	private String haddress;
	private int hprice;
	private String hphoto;
	public int getHid() {
		return hid;
	}
	public void setHid(int hid) {
		this.hid = hid;
	}
	public String getHname() {
		return hname;
	}
	public void setHname(String hname) {
		this.hname = hname;
	}
	public String getHaddress() {
		return haddress;
	}
	public void setHaddress(String haddress) {
		this.haddress = haddress;
	}
	public int getHprice() {
		return hprice;
	}
	public void setHprice(int hprice) {
		this.hprice = hprice;
	}
	public String getHphoto() {
		return hphoto;
	}
	public void setHphoto(String hphoto) {
		this.hphoto = hphoto;
	}
	/**
	 * @param hid
	 * @param hname
	 * @param haddress
	 * @param hprice
	 * @param hphoto
	 */
	public addProdyuctmodule(int hid, String hname, String haddress, int hprice, String hphoto) {
		super();
		this.hid = hid;
		this.hname = hname;
		this.haddress = haddress;
		this.hprice = hprice;
		this.hphoto = hphoto;
	}
	/**
	 * @param hname
	 * @param haddress
	 * @param hprice
	 * @param hphoto
	 */
	public addProdyuctmodule(String hname, String haddress, int hprice, String hphoto) {
		super();
		this.hname = hname;
		this.haddress = haddress;
		this.hprice = hprice;
		this.hphoto = hphoto;
	}
	
	
}
