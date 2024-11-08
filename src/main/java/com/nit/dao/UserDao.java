package com.nit.dao;

import java.util.List;

import com.nit.model.BookingDetails;
import com.nit.model.Car;
import com.nit.model.User;

public interface UserDao {
	int getRegisterInfo(String email,Long aadhar);
	
	void userRegistration(User user) throws Exception;
	
	User login(String email,String password);
	
	void changePassword(String email,String password);

	Car getCarInfo(String carid);
	
	void savebookingDetails(BookingDetails booking);
	
	int bookingStatus(String email,String returnStatus);
	
	BookingDetails getBookingDetails(String email,Long aadhar);
	Long getBookingId(); 
	
	void returnCar(Long bookingId) ;	
		
	BookingDetails getCancelationInfo(Long BookingId,String email);
	
	void cancleBooking(Long id);
	
	List<BookingDetails> gethistory(String email,String returnStatus);
	
	List<Car> getAllCars();	
}

