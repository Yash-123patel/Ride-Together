package com.nit.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BookingDetails {

	private Long bokkingId;
	private Date bookingDate;
	private Date picUpDate;
	private Date returnDate;
	private String userName;
	private Long aadharNo;
	private String licenseNo;
	private String email;
	private String city;
	private Integer pincode;
	private String carid;
	private String carname;
	private Double perdayCharge;
	private Character returStatus;
	private String paymentType;
	private Double totalAmount;
	
}
