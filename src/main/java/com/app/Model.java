package com.app;

public class Model {
	private int uid;
    private String usm;
    private String email;
    private String pass;
	private String photo;
	private String role;
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUsm() {
		return usm;
	}
	public void setUsm(String usm) {
		this.usm = usm;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	/**
	 * @param uid
	 * @param usm
	 * @param email
	 * @param pass
	 * @param photo
	 * @param role
	 */
	public Model(int uid, String usm, String email, String pass, String photo, String role) {
		super();
		this.uid = uid;
		this.usm = usm;
		this.email = email;
		this.pass = pass;
		this.photo = photo;
		this.role = role;
	}
	/**
	 * @param usm
	 * @param email
	 * @param pass
	 * @param photo
	 * @param role
	 */
	public Model(String usm, String email, String pass, String photo, String role) {
		super();
		this.usm = usm;
		this.email = email;
		this.pass = pass;
		this.photo = photo;
		this.role = role;
	}
	/**
	 * @param upassword 
	 * @param username 
	 * 
	 */
	public Model(String username, String upassword) {
		super();
	}
	

}