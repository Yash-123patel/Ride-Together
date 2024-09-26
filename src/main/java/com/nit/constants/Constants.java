package com.nit.constants;

public class Constants {
	public static final String REGISTERCOUNT="select count(*) from ridetogetherusers where email=? OR aadharno=?";
	public static final String REGISTER="insert into ridetogetherusers values(user_seq.nextval,?,?,?,?,?,?,?)";

	//public static final String LOGINCOUNT="select count(*) from ridetogetherusers where email=? and password=?";
	public static final String LOGIN= "select * from ridetogetherusers where email=? and password=?";

	public static final String PASSWORD="update ridetogetherusers set password=? where email=?";
	
   public static final String CARDETAILS="select * from ridetogethercars where carid=?";
   
   public static final String BOOKINGDETAIL="INSERT INTO ridetogetherbooking VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";


   public static final String GETBOOKINGDETAILS="select * from ridetogetherbooking where email=? and aadharno=?";
   
   public static final String GETBOOKINGSTATUS="select count(*) from ridetogetherbooking where EMAIL=? AND RETURNSTATUS=? ";

   public static final String RETURNCAR="update ridetogetherbooking set returnstatus='Y' where bookingid=?";
   
   public static final String CANCELATIONDETAILS="select * from ridetogetherbooking where bookingid=? and email=?";

   public static final String CANCLEBOOKING="update ridetogetherbooking set returnstatus='C' where bookingid=?"; 

   public static final String GETHISTORYDETAILS="select * from ridetogetherbooking where email=? and returnstatus=?";
}
