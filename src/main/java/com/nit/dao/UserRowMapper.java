package com.nit.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.nit.model.User;

@Component
public class UserRowMapper implements RowMapper<User>{

	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		return new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getLong(5),rs.getLong(6),rs.getString(7),rs.getString(8));
	}

}
