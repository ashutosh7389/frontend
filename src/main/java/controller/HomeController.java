//package controller;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//@Controller
//public class HomeController {
//
//	@RequestMapping("/home")
//	public String home(){
//		return "home";
//	}
//	
//	@RequestMapping("/nav")
//	public String nav(){
//		return "nav";
//	}
//	
//	@RequestMapping("/login")
//	public String login(@RequestParam(value = "error", required = false) String error, 
//			@RequestParam(value = "logout", required = false) String logout, Model model)
//	{
//		if(error != null) {
//			model.addAttribute("error", "Username or Password Incorrect");
//			}
//		
//		if(logout != null) {
//			model.addAttribute("logout", "Logged out Successfully");
//		}
//		return "login";
//	}
//	
//	
//
//	@RequestMapping("/about")
//	public String about(){
//		return "about";
//	}
//	
//	@RequestMapping("/contact")
//	public String contact(){
//		return "contact";
//	}
//	
//	@RequestMapping("/newproduct")
//	public String newproduct(){
//		return "productForm";
//	}
//	@RequestMapping("/services")
//	public String services(){
//		return "services";
//	}
//	
//	
//}
