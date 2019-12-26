package com.bean;

import org.springframework.stereotype.Component;

@Component
public class CustomerBean
{
	
	private String name;
	private String email;
	private String pwd;
	private String pincode;
	private String address;
	private String phone;
	
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
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