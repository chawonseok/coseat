package com.web.dto;

public class User {
	private int User_code;
	private String IsMem;
	private String ID;
	private String Password;
	private String Name;
	private String E_mail;

	public int getUser_code() {
		return User_code;
	}
	public void setUser_code(int user_code) {
		User_code = user_code;
	}
	public String getIsMem() {
		return IsMem;
	}
	public void setIsMem(String isMem) {
		IsMem = isMem;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getE_mail() {
		return E_mail;
	}
	public void setE_mail(String e_mail) {
		E_mail = e_mail;
	}
	
}
