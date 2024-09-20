<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ride Together</title>
      <link rel="icon" href="/ride/AllImages/logo.jpg">
<style>
<%@include file="/AllCssFiles/givelocation.css"  %>
</style>
</head>
<body>
	<div class="container">
		<img src="/ride/AllImages/logo.jpg" alt="Car Rental Logo"
			style="width: 100px; height: auto; margin-bottom: 20px;">
		<h1>Enter Location Information</h1>
		<form action="locationInfo" method="POST" onsubmit="return checkPinCode() ">
			<div class="form-group">
				<label for="state">State</label> <input type="text" id="state"
					name="state" list="suggestion" required>

				<datalist id="suggestion">
					<option value="Andhra Pradesh"></option>
					<option value="Arunachal Pradesh"></option>
					<option value="Assam"></option>
					<option value="Bihar"></option>
					<option value="Chhattisgarh"></option>
					<option value="Goa"></option>
					<option value="Gujarat"></option>
					<option value="Haryana"></option>
					<option value="Himachal Pradesh"></option>
					<option value="Jharkhand"></option>
					<option value="Karnataka"></option>
					<option value="Kerala"></option>
					<option value="Madhya Pradesh"></option>
					<option value="Maharashtra"></option>
					<option value="Manipur"></option>
					<option value="Meghalaya"></option>
					<option value="Mizoram"></option>
					<option value="Nagaland"></option>
					<option value="Odisha"></option>
					<option value="Punjab"></option>
					<option value="Rajasthan"></option>
					<option value="Sikkim"></option>
					<option value="Tamil Nadu"></option>
					<option value="Telangana"></option>
					<option value="Tripura"></option>
					<option value="Uttar Pradesh"></option>
					<option value="Uttarakhand"></option>
					<option value="West Bengal"></option>
				</datalist>

			</div>
			<div class="form-group">
				<label for="city">City</label> <input type="text" id="city"
					name="city" required>
			</div>
			<div class="form-group">
				<label for="pincode">PinCode</label> 
				<input type="number" id="pincode"
					name="pincode" required>
			</div>
			<button type="submit" class="submit-button">Submit</button>
		</form>
	</div>
</body>
<script>
    function checkPinCode() {
        let pincode=document.getElementById("pincode");
       
        if (pincode.value.trim().length != 6) {
                alert("Invalid pincode");
                return false;
            }
    }

</script>
</html>