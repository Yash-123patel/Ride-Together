package com.nit.model;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BookingDates {
	
	private LocalDate bookingDate;
	private LocalDate journeyDate;
	private LocalDate returnDate;
	private Integer  numberOfDays;

}
