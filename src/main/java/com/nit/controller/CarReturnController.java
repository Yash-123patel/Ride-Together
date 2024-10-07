package com.nit.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.time.Period;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nit.dao.UserDao;
import com.nit.model.BookingDetails;
import com.nit.model.User;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CarReturnController {

	@Autowired
	private UserDao dao;

	@RequestMapping("/getCarReturnPage")
	public String getCarReturnPage(HttpServletRequest req, Model model) {
		try {
			HttpSession session = req.getSession(false);
			if(session!=null) {
				Map<String, Object> rideMap = (Map<String, Object>) session.getAttribute("AllInfo");
				User user = (User) rideMap.get("user");
				int bookingStatus = dao.bookingStatus(user.getEmail(), "N");
				if (bookingStatus > 0) {
					BookingDetails bookingDetails = dao.getBookingDetails(user.getEmail(), user.getAadharNo());
					model.addAttribute("details", bookingDetails);
					return "car_return";
				}

				return "no_rentedcar";
			}
			return "sessionExpired";
		} catch (Exception e) {
			return "somethingWrong";
		}
	}

	@RequestMapping("/returnCar")
	public String returnCar(HttpServletRequest req,Model model) {
		Long bookingId = Long.valueOf(req.getParameter("bookingid"));

		try {
			HttpSession session = req.getSession(false);
			Map<String, Object> rideMap = (Map<String, Object>) session.getAttribute("AllInfo");
			User user = (User) rideMap.get("user");
			BookingDetails bookingDetails = dao.getBookingDetails(user.getEmail(),user.getAadharNo());
			
			Date returnDate = bookingDetails.getReturnDate();
			LocalDate rtDate=returnDate.toLocalDate();
			LocalDate today = LocalDate.now();
			 Period period = Period.between(today,rtDate);
			 int days = period.getDays();
			int extra= days*6000;
			if(extra>0) {
				model.addAttribute("extra", period);
				return "payExtra";
			}
			dao.returnCar(bookingId);
		} catch (Exception e) {
			return "somethingWrong";
		}

		return "return_success";
	}

	@RequestMapping("/cancleBookingPage")
	public String cancleBookingPage() {
		return "cancle_booking";
	}

	@RequestMapping("/cancleBooking")
	public String cancleBooking(HttpServletRequest req, Model model) {

		try {
			Long bookingId = Long.valueOf(req.getParameter("bookingid"));
			String emmail = req.getParameter("email");

			BookingDetails cancelationInfo = dao.getCancelationInfo(bookingId, emmail);
			if (cancelationInfo == null) {
				model.addAttribute("message", "invalid Booking id");
				return "redirect:/cancleBookingPage";
			} else {
				Date picUpDate = cancelationInfo.getPicUpDate();
				LocalDate pickupLocalDate = picUpDate.toLocalDate();
				LocalDate today = LocalDate.now();
				 Period period = Period.between(today, pickupLocalDate);
				 System.out.println(period);
				 if(period.getDays()>=0) {
					 model.addAttribute("info", cancelationInfo);
						return "booking_details";
				 }
				 return "noUpcomeing";
				}
		} catch (Exception e) {
			return "somethingWrong";
		}
	}
	
	@RequestMapping("/cancel")
	public String cancel(HttpServletRequest req) {
		try {
			Long bookingId = Long.valueOf(req.getParameter("bookingId"));
			
			dao.cancleBooking(bookingId);
			return "cancleSuccess";
		} catch (Exception e) {
			return "somethingWrong";
		}
	}
	
	@RequestMapping("/getHistoryPage")
	public String getHistoryPage() {
		return "booking_history";
	}
	
	@RequestMapping("/completedJourney")
	public String completedJourney(HttpServletRequest req,Model model) {
		try {
			HttpSession session = req.getSession(false);
			if(session!=null) {
				Map<String, Object> rideMap = (Map<String, Object>) session.getAttribute("AllInfo");
				User user = (User) rideMap.get("user");
				
				List<BookingDetails> list = dao.gethistory(user.getEmail(),"Y");
				model.addAttribute("list", list);
				return "completed_history";
		   }
			return "sessionExpired";
		} catch (Exception e) {
			return "somethingWrong";
		}
	}
	
	@RequestMapping("/upcomeingJourney")
	public String upcomeingJourney(HttpServletRequest req,Model model) {
		
		try {
			HttpSession session = req.getSession(false);
			if(session!=null) {
				Map<String, Object> rideMap = (Map<String, Object>) session.getAttribute("AllInfo");
				User user = (User) rideMap.get("user");
				
				List<BookingDetails> list = dao.gethistory(user.getEmail(),"N");
				model.addAttribute("list", list);
				return "upcoming_history";
			}
			return "sessionExpired";
		} catch (Exception e) {
			return "somethingWrong";
			
		}
	}
	@RequestMapping("/cancleJourney")
	public String cancleJourney(HttpServletRequest req,Model model) {
		
		try {
			HttpSession session = req.getSession(false);
			
			if(session!=null) {
				Map<String, Object> rideMap = (Map<String, Object>) session.getAttribute("AllInfo");
				User user = (User) rideMap.get("user");
				
				List<BookingDetails> list = dao.gethistory(user.getEmail(),"C");
				model.addAttribute("list", list);
				return "cancle_journey";
			}
			return "sessionExpired";
		} catch (Exception e) {
		    return "somethingWrong";
		}
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		session.invalidate();
		return "logout";
	}

	
}
