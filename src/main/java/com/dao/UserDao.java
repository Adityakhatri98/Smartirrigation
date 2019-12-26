package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.bean.CustomerBean;

@Repository
public class UserDao {

	@Autowired
	JdbcTemplate stmt;

	public int insertUser(CustomerBean customerBean) {
		
		
		System.out.println(customerBean);
		Integer pin = new Integer(customerBean.getPincode());	
		String query = "INSERT INTO user_signup(user_name, user_address, user_phone, user_pincode, user_email, user_password) VALUES (?,?,?,?,?,?)";
		int i = stmt.update(query, customerBean.getName(), customerBean.getAddress(), customerBean.getPhone(),
				pin, customerBean.getEmail(), customerBean.getPwd());
		System.out.println(i + " : Record Inserted");
		return i;
	}
	
	
	public Boolean getUser(CustomerBean customerBean) {

		class UserMapper implements RowMapper<CustomerBean> {

			public CustomerBean mapRow(ResultSet row, int rowNu) throws SQLException {
				System.out.println("sucess");
				customerBean.setEmail(row.getString("user_email"));
				customerBean.setPwd(row.getString("user_password"));
				customerBean.setAddress(row.getString("user_address"));
				customerBean.setName(row.getString("user_name").split(" ")[0]);
				customerBean.setPincode(row.getString("user_pincode"));
				customerBean.setPhone(row.getString("user_phone"));
				return customerBean;
			}
		}

		
		String query = "SELECT * FROM user_signup WHERE user_email = '" + customerBean.getEmail()
				+ "' and user_password = '" + customerBean.getPwd() + "'";
		List<CustomerBean> bean =stmt.query(query,new UserMapper());		
		if(bean.isEmpty())
		{
			return false;
		}
		else
		{
			return true;
		}
	}
}
