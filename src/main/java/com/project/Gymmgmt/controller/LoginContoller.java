package com.project.Gymmgmt.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.Gymmgmt.dto.LoginDto;
import com.project.Gymmgmt.service.LoginService;

@RestController
@RequestMapping("/api/users")
public class LoginContoller {

	@Autowired
	private LoginService loginService;

	@PostMapping("/register")
	public boolean registerUser(@RequestBody LoginDto loginDto) {

		return loginService.registerUser(loginDto);

	}
//User updates by admin
	@PostMapping("/updateUser")
	public String updateUser(@RequestBody LoginDto login) {
		boolean service = loginService.updateUser(login);
		if (service) {
			return "User successfully updated";
		} else {
			return "Failed to update User.";
		}
	}
//User login
	@PostMapping("/login")
	public boolean userLogin(@RequestBody LoginDto login) {
		return loginService.loginUser(login);
	}
//Admin Login
	@PostMapping("/admin/login")
	public boolean adminLogin(@RequestBody LoginDto login) {
		return loginService.loginAdmin(login);
	}



}
