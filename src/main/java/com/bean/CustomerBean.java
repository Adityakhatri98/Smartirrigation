package com.bean;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Email;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

@Component
public class CustomerBean {
	@Size(max = 30, min = 3, message = "Username must be alphabetic and contain 3-30 characters !!")
	@NotNull(message = "Please enter valid Name !!")
	private String name;

	private int id;

	@Email(regexp = "[a-z0-9]+([-+._][a-z0-9]+){0,2}@.*?(\\.(a(?:[cdefgilmnoqrstuwxz]|ero|(?:rp|si)a)|b(?:[abdefghijmnorstvwyz]iz)|c(?:[acdfghiklmnoruvxyz]|at|o(?:m|op))|d[ejkmoz]|e(?:[ceghrstu]|du)|f[ijkmor]|g(?:[abdefghilmnpqrstuwy]|ov)|h[kmnrtu]|i(?:[delmnoqrst]|n(?:fo|t))|j(?:[emop]|obs)|k[eghimnprwyz]|l[abcikrstuvy]|m(?:[acdeghklmnopqrstuvwxyz]|il|obi|useum)|n(?:[acefgilopruz]|ame|et)|o(?:m|rg)|p(?:[aefghklmnrstwy]|ro)|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|t(?:[cdfghjklmnoprtvwz]|(?:rav)?el)|u[agkmsyz]|v[aceginu]|w[fs]|y[etu]|z[amw])\\b){1,2}", message = "Please enter valid Email !!")
	@NotNull(message = "Please enter valid Email !!")
	private String email;

	@Size(max = 20, min = 8, message = "Password must be contain 8-20 characters !!")
	@NotNull(message = "Please enter valid Password !!")
	private String pwd;

	@Size(min = 6, max = 8, message = "Pincode must be contain 6-8 Numbers !!")
	@NotNull(message = "Please enter valid Pincode !!")
	private String pincode;

	@Size(min = 10, max = 50, message = "Address must be contain 10-50 characters !!")
	@NotNull(message = "Please enter valid Address !!")
	private String address;

	@Size(min = 10, max = 10, message = "Please Enter 10 Digit !!")
	@NotNull(message = "Please enter valid Phone !!")
	private String phone;
	private String node="user3";
	private String auth="0";
	
	public String getAuth() {
		return auth;
	}

	public void setAuth(String auth) {
		this.auth = auth;
	}

	public String getNode() {
		return node;
	}

	public void setNode(String node) {
		this.node = node;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	@Override
	public String toString() {
		return "CustomerBean [name=" + name + ", email=" + email + ", pwd=" + pwd + ", pincode=" + pincode
				+ ", address=" + address + ", phone=" + phone + "]";
	}
}