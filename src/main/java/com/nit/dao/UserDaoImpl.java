package com.nit.dao;

import static com.nit.constants.Constants.*;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import com.nit.model.BookingDetails;
import com.nit.model.Car;
import com.nit.model.User;

public class UserDaoImpl extends JdbcDaoSupport implements UserDao {

	@Autowired
	private RowMapper<User> rowMapper;

	@Autowired
	private RowMapper<Car> carrowMapper;
	
	@Autowired RowMapper<BookingDetails> bookingRowMapper;

	@Override
	public int getRegisterInfo(String email, Long aadhar) {
		System.out.println(email + " " + aadhar);
		int count = getJdbcTemplate().queryForObject(REGISTERCOUNT, Integer.class, email, aadhar);
		System.out.println(count);
		return count;
	}

	@Override
	@Transactional(rollbackForClassName = { "java.lang.Exception" })
	public void userRegistration(User user) throws Exception {
		int update = getJdbcTemplate().update(REGISTER, user.getFullName(), user.getEmail(), user.getPassword(),
				user.getMobileNo(), user.getAadharNo(), user.getAddress(), user.getLicenseNo());
	
	}

	@Override
	public User login(String email, String password) {
		List<User> user = getJdbcTemplate().query(LOGIN, rowMapper, email, password);
		if (user.isEmpty())
			return null;
		return user.get(0);
	}
	
	@Override
	@Transactional(rollbackForClassName = { "java.lang.Exception" })
	public void changePassword(String email, String password) {
		getJdbcTemplate().update(PASSWORD, password,email);
		
	}

	@Override
	public Car getCarInfo(String carid) {
		List<Car> query = getJdbcTemplate().query(CARDETAILS, carrowMapper, carid);
		return query.get(0);
		
	}

	@Override
	@Transactional(rollbackForClassName = { "java.lang.Exception" })
	public void savebookingDetails(BookingDetails booking) {
		getJdbcTemplate().update(BOOKINGDETAIL,
				booking.getBokkingId(),
		        new java.sql.Date(booking.getBookingDate().getTime()),
		        new java.sql.Date(booking.getPicUpDate().getTime()),
		        new java.sql.Date(booking.getReturnDate().getTime()),
		        booking.getUserName(),
		        booking.getAadharNo(),
		        booking.getLicenseNo(),
		        booking.getEmail(),
		        booking.getCity(),
		        booking.getPincode(),
		        booking.getCarid(),
		        booking.getCarname(),
		        (int) Math.round(booking.getPerdayCharge()),
		        String.valueOf(booking.getReturStatus()),
		        booking.getPaymentType(),
		        booking.getTotalAmount());
	}

	@Override
	public BookingDetails getBookingDetails(String email,Long aadhar) {
		List<BookingDetails> details = getJdbcTemplate().query(GETBOOKINGDETAILS, bookingRowMapper,email,aadhar);
		if(details.isEmpty())
			return null;
		return details.get(0);
	}

	@Override
	public int bookingStatus(String email,  String returnStatus) {
		System.out.println(email+" "+returnStatus);
		Integer count = getJdbcTemplate().queryForObject(GETBOOKINGSTATUS,Integer.class,email,returnStatus);
		return count;
	}

	@Override
	public Long getBookingId() {
		Long bookingId = getJdbcTemplate().queryForObject("select booking.nextval from dual",Long.class);
		return bookingId;
	}

	@Override
	@Transactional(rollbackForClassName = { "java.lang.Exception" })
	public void returnCar(Long bookingId) {
		getJdbcTemplate().update(RETURNCAR, bookingId);
	}

	@Override
	public BookingDetails getCancelationInfo(Long bookingId, String email) {
		 List<BookingDetails> list = getJdbcTemplate().query(CANCELATIONDETAILS,bookingRowMapper,bookingId,email);
		if(list.isEmpty())
		 return null;
		return list.get(0);
	}

	@Override
	@Transactional(rollbackForClassName = { "java.lang.Exception" })
	public void cancleBooking(Long id) {
		getJdbcTemplate().update(CANCLEBOOKING, id);
		
	}

	@Override
	public List<BookingDetails> gethistory(String email,String returnStatus) {
		List<BookingDetails> list = getJdbcTemplate().query(GETHISTORYDETAILS,bookingRowMapper,email,returnStatus);
		return list;
	}

	

	

}
