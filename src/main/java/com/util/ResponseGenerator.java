package com.util;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Component;

@SuppressWarnings({"rawtypes","unchecked"})
@Component
public class ResponseGenerator {
	
	private static MessageSource messageSource;
	
	@Autowired
	public void setMessageSource(MessageSource messageSource) {
		ResponseGenerator.messageSource = messageSource;
	}

	/**
	 * Generate response.
	 */
	public static JSONResponseWithData generateResponse(String status,String messageKey, Object data) {
		JSONResponseWithData resObj = new JSONResponseWithData();
		resObj.setStatus(status);
		resObj.setMessage(messageSource.getMessage(messageKey, new Object[] {}, Locale.US));
		resObj.setData(data);
		return resObj;
	}

	/**
	 * Generate response.
	 */
	public static JSONResponseWithOutData generateResponse(String status,String messageKey) {
		JSONResponseWithOutData resObj = new JSONResponseWithOutData();
		resObj.setStatus(status);
		resObj.setMessage(messageSource.getMessage(messageKey, new Object[] {}, Locale.US));
		return resObj;
	}
	
	/**
	 * Generate response.
	 */
//	public static JSONResponseWithOutData generateResponse(String status,String messageKey,String dynamicMsg) {
//		JSONResponseWithOutData resObj = new JSONResponseWithOutData();
//		resObj.setStatus(status);
//		resObj.setMessage(dynamicMsg +" "+ messageSource.getMessage(messageKey, new Object[] {}, Locale.US));
//		return resObj;
//	}

	public static Object generateResponse2(String status, String errorMsg) {
		JSONResponseWithOutData resObj = new JSONResponseWithOutData();
		resObj.setStatus(status);
		resObj.setMessage(errorMsg);
		return resObj;
	}

	public static Object generateResponse(String success) {
		JSONResponseWithOutData resObj = new JSONResponseWithOutData();
		resObj.setStatus(success);
		return resObj;
	}

}
