package com.nit.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.nit.model.BookingDetails;

@Component
public class BookingRowMapper implements RowMapper<BookingDetails> {

	@Override
	public BookingDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
		BookingDetails details=new BookingDetails();
		details.setBokkingId(rs.getLong(1));
		details.setBookingDate(rs.getDate(2));
		details.setPicUpDate(rs.getDate(3));
		details.setReturnDate(rs.getDate(4));
		details.setUserName(rs.getString(5));
		details.setAadharNo(rs.getLong(6));
		details.setLicenseNo(rs.getString(7));
		details.setEmail(rs.getString(8));
		details.setCity(rs.getString(9));
		details.setPincode(rs.getInt(10));
		details.setCarid(rs.getString(11));
		details.setCarname(rs.getString(12));
		details.setPerdayCharge(rs.getDouble(13));
		details.setReturStatus(rs.getString(14).charAt(0));
		details.setPaymentType(rs.getString(15));
		details.setTotalAmount(rs.getDouble(16));
		return details;
	}

	
}
