package com.nit.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.nit.model.Car;

@Component
public class CarRowMapper implements RowMapper<Car> {

	@Override
	public Car mapRow(ResultSet rs, int rowNum) throws SQLException {
		 
		return new Car(rs.getString(1),rs.getString(2),rs.getDouble(3));
	}

}
