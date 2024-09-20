package com.nit.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nit.dao.UserDao;
import com.nit.model.BookingDates;
import com.nit.model.BookingDetails;
import com.nit.model.Car;
import com.nit.model.Location;
import com.nit.model.User;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CarBookingController {
	
	@Autowired
	private UserDao dao;
	@RequestMapping("/getOptionPage")
	public String getOptionPage() {
		return "login_options";
	}
	
	
	@RequestMapping("/gettermsPage")
	public String gettermsPage(HttpServletRequest req) {
        try {
        	 HttpSession session = req.getSession(false);
    		 if(session!=null) {
    			 Map<String, Object> rideMap = (Map<String, Object>) session.getAttribute("AllInfo");
    				User user = (User)rideMap.get("user");
    				
    				if(dao.bookingStatus(user.getEmail(),"N")>0)
    					 return "allreadyBook";
    				return "termsAndConditions";
    		 }
    		 return "sessionExpired";
		} catch (Exception e) {
			return "somethingWrong";
		}
	}

	@RequestMapping("/getLocationPage")
	public String getLocationPage() {
		return "givelocation";
	}
	

	@RequestMapping("/locationInfo")
	public String locationInfo(HttpServletRequest req) {

		try {
			Location location = new Location(req.getParameter("state"), req.getParameter("city"),
					Integer.valueOf(req.getParameter("pincode")));

			HttpSession session = req.getSession(false);
			

			if(session!=null) {
				Map<String, Object> rideMap = (Map<String, Object>) session.getAttribute("AllInfo");

				
				rideMap.put("location", location);
				session.setAttribute("AllInfo", rideMap);

				return "availablecars";
			}
			return "sessionExpired";
		} catch (Exception e) {
			return "somethingWrong";
		}

	}

	@RequestMapping("/bookingdates")
	public String bookingdates(HttpServletRequest req) {
		try {
			String carId = req.getParameter("car-id");
			Car carInfo = dao.getCarInfo(carId);
	       System.out.println(carInfo);
			HttpSession session = req.getSession(false);
			
			if(session!=null) {
				Map<String, Object> rideMap = (Map<String, Object>) session.getAttribute("AllInfo");
				rideMap.put("carInfo", carInfo);
				session.setAttribute("AllInfo", rideMap);
				
				return "droping_date";
			}
			return "sessionExpired";
		} catch (Exception e) {
			return "somethingWrong";
		}
	}
	
	@RequestMapping("/bookingAllInfo")
	public String bookingAllInfo(HttpServletRequest req,Model model) {
		
		try {
			String journeyDatestr = req.getParameter("journey");
			String returnDatestr = req.getParameter("returnd");
	        
	       
	       DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	       
	       LocalDate jdate = LocalDate.parse(journeyDatestr, formatter);
	       LocalDate rdate = LocalDate.parse(returnDatestr, formatter);
	       LocalDate bookingDate=LocalDate.now();
	       
	       
	      
	       
	      Period period = Period.between(jdate, rdate);
	      int days = period.getDays();
	      days=days+1;
	      BookingDates dates=new BookingDates(bookingDate,jdate,rdate,days);
	      
			HttpSession session = req.getSession(false);
			 

			if(session!=null) {
				Map<String, Object> rideMap = (Map<String, Object>) session.getAttribute("AllInfo");
				
			     Car car=(Car)rideMap.get("carInfo");
				rideMap.put("dates", dates);
				rideMap.put("totalAmount", days*car.getPerDayCharge());
				
				model.addAttribute("bookingInfo", rideMap);
				session.setAttribute("AllInfo", rideMap);
				return "confirmBooking";
			}
			return "sessionExpired";
		} catch (Exception e) {
			return "somethingWrong";
		}
	}
	
	@RequestMapping("/paymentPage")
	public String paymentPage(){
		return "payment";
	}
	
	@RequestMapping("/doPayment")
	public String doPayment(HttpServletRequest req,Model model) {
		String method = req.getParameter("paymentMethod");
		HttpSession session = req.getSession(false);
		 

		if(session!=null) {
			Map<String, Object> rideMap = (Map<String, Object>) session.getAttribute("AllInfo");
			
			
			Double totalAmount=(Double)rideMap.get("totalAmount");
			
			model.addAttribute("total", totalAmount);
			if(method.equals("creditCard")||method.equals("debitCard")) {
				
				return "card";
				}
			
			else if(method.equals("upi")) {
				
				return "upi";
			}
	        else if(method.equals("netBanking")) {
				
				return "netbanking";
			}
			
			else 
				return "somethingWrong";
		}
		return "sessionExpired";
		
	}
	@RequestMapping("/bookingDetails")
	public String bookingDetails(HttpServletRequest req,Model model) {
		try {
			String paymentTpye = req.getParameter("paymentTpye");
			
			HttpSession session = req.getSession(false);
			 

			if(session!=null) {	
				
				Map<String, Object> rideMap = (Map<String, Object>) session.getAttribute("AllInfo");
				 User user = (User) rideMap.get("user"); 
				 Location location = (Location) rideMap.get("location");
				 Car car = (Car) rideMap.get("carInfo"); 
				 BookingDates dates = (BookingDates) rideMap.get("dates");
				 
				 Date bookingdate=Date.valueOf(dates.getBookingDate());
				 Date picupdate=Date.valueOf(dates.getJourneyDate());
				 Date returndate=Date.valueOf(dates.getReturnDate());
				 
				 Double totalAmount=(Double)rideMap.get("totalAmount");
				 
				 BookingDetails details=new BookingDetails(dao.getBookingId(),bookingdate,picupdate,returndate, user.getFullName(), user.getAadharNo(), user.getLicenseNo(), user.getEmail(), location.getCity(), location.getPincode(), car.getCarId(), car.getCarName(), car.getPerDayCharge(), 'N', paymentTpye,totalAmount);
				 
				 dao.savebookingDetails(details);
				 
				
				 rideMap.put("bookingDetails", details);
				 
				 
				
				rideMap.put("paymentTpye", paymentTpye);
				
				model.addAttribute("alldetails", rideMap);
				
				session.setAttribute("AllInfo", rideMap);
			
				return "booking_success";

			}
			return "sessionExpired";
			
			
		} catch (Exception e) {
			return "somethingWrong";
		}
		
	}
}
