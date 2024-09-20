package com.nit.model;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
	
	
	private Integer id;

	@Size(min = 4,max = 20)
	private String fullName;
	
	@Email
	@Size(min = 4,max = 30)
	private String email;
	

	@NotBlank
	private String password;
	
	@Min(10)
	private Long mobileNo;
	
	@Min(12)
	private Long aadharNo;
	

	@Size(max = 30,min = 4)
	private String address;
	
	@Size(max = 15,min = 10)
	private String licenseNo;

}
