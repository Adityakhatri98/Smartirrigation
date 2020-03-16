package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.bean.CustomerBean;

@Repository
public class UserDao {

	@Autowired
	JdbcTemplate stmt;
	@Autowired
	CustomerBean customerBean;

	public boolean checkEmail(CustomerBean customerBean) {
		String query = "select * from User_signup where user_email = '" + customerBean.getEmail() + "'";
		List<CustomerBean> bean = stmt.query(query, new UserMapper());
		if (bean.isEmpty()) {
			return false;
		} else {
			System.out.println("Dao : " + bean);
			return true;
		}
	}
	

	public int insertUser(CustomerBean customerBean) {
		int i = 0;
		if (checkEmail(customerBean)) {
			return i;
		} else {
			Integer pin = new Integer(customerBean.getPincode());
			String query = "INSERT INTO user_signup(user_name, user_address, user_phone, user_pincode, user_email, user_password,user_node,user_auth) VALUES (?,?,?,?,?,?,?,?)";
			i = stmt.update(query, customerBean.getName(), customerBean.getAddress(), customerBean.getPhone(), pin,
					customerBean.getEmail(), customerBean.getPwd(), customerBean.getNode(), customerBean.getAuth());
			System.out.println(i + " : Record Inserted");
			return i;
		}
	}
	
	class UserMapper implements RowMapper<CustomerBean> {

		public CustomerBean mapRow(ResultSet row, int rowNu) throws SQLException {
			System.out.println("Row Mapper : Called");
			String email = row.getString("user_email").toLowerCase();
			customerBean.setId(row.getInt("user_id"));
			customerBean.setEmail(email);
			customerBean.setPwd(row.getString("user_password"));
			customerBean.setAddress(row.getString("user_address"));
			customerBean.setName(row.getString("user_name"));
			customerBean.setPincode(row.getString("user_pincode"));
			customerBean.setPhone(row.getString("user_phone"));
			customerBean.setNode(row.getString("user_node"));
			customerBean.setAuth(row.getString("user_auth"));
			System.out.println("in Mapper : " + customerBean);
			return customerBean;
		}
	}

	public Boolean getUser(CustomerBean customerBean) {

		this.customerBean = customerBean;
		String query = "SELECT * FROM user_signup WHERE user_email = '" + customerBean.getEmail()
				+ "' and user_password = '" + customerBean.getPwd() + "'";
		List<CustomerBean> bean = stmt.query(query, new UserMapper());
		if (bean.isEmpty()) {
			return false;
		} else {
			System.out.println("Dao : " + bean);
			return true;
		}
	}

	// rest
	public CustomerBean getUserRest(CustomerBean customerBean) {

		this.customerBean = customerBean;
		String query = "SELECT * FROM user_signup WHERE user_email = '" + customerBean.getEmail()
				+ "' and user_password = '" + customerBean.getPwd() + "'";
		List<CustomerBean> bean = stmt.query(query, new UserMapper());
		if (bean.isEmpty()) {
			return null;
		} else {
			System.out.println("Dao : " + bean);
			return bean.get(0);
		}
	}

	public CustomerBean getUser(String email) {

		String query = "SELECT * FROM user_signup WHERE user_email = '" + email + "'";
		List<CustomerBean> user = stmt.query(query, new UserMapper());
		return user.get(0);

	}

	public int updateUser(CustomerBean bean) {

		String query = "update user_signup set user_name=?,user_address=?,user_pincode=?,user_password=?,user_phone=? where user_email='"
				+ bean.getEmail() + "'";
		int i = stmt.update(query, bean.getName(), bean.getAddress(), bean.getPincode(), bean.getPwd(),
				bean.getPhone());
		System.out.println("Record Inserted Dao: " + i);
		return i;
	}

}
