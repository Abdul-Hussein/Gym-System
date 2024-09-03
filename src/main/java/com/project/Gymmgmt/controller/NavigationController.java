package com.project.Gymmgmt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NavigationController {
//User login navigation
	@RequestMapping(value = { "/", "/login" })
	public String employee() {

		return "user/login";
	}

//Register navigation
	@RequestMapping(value = { "/register" })
	public String registrationPage() {

		return "user/register";

	}

//Admin navigation
	@RequestMapping(value = { "/admin" })
	public String adminLoginPage() {

		return "user/adminLogin";
	}

//Session page navigation
	@RequestMapping(value = { "/api/sessions/view" })
	public String displaySessionPage() {

		return "user/sessions";
	}

//Trainers navigation
	@RequestMapping(value = { "/trainers/view" })
	public String displayTrainersPage() {
		return "user/trainers";
	}

//Packages navigation
	@RequestMapping(value = { "/packages/view" })
	public String getPackageController() {
		return "user/package"; // This should correspond to a JSP file named package.jsp in the
								// WEB-INF/view/user directory
	}

//Gym memberships navigation
	@RequestMapping(value = { "/api/gymMemberships/view" })
	public String displayGymMembershipPage() {
		return "user/gymmembership";
	}

	// New method for THE CLUB
	@RequestMapping(value = { "/club" })
	public String showClubPage() {
		return "user/theclub";
	}

	@RequestMapping(value = { "/home" })
	public String showHomePage() {
		return "user/home";
	}

	@RequestMapping(value = { "/contact" })
	public String showContactPage() {
		return "user/contact";
	}

}
