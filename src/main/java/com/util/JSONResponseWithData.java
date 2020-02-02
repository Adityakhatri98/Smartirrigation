package com.util;

import java.io.Serializable;

public class JSONResponseWithData<T> implements Serializable {
	
	private static final long serialVersionUID = 3927656989682261161L;
	
	private String status;
	private String message;
	T data;
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public T getData() {
		return data;
	}
	public void setData(T data) {
		this.data = data;
	}
}


