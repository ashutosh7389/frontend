//package controller;
//
//
//
///*import javax.validation.Valid;*/
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.validation.BindingResult;
///*import org.springframework.validation.BindingResult;*/
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
///*import org.springframework.web.bind.annotation.RequestMethod;*/
//
//import model.User;
//import daoimpl.UserDAOImpl;
//
//@Controller
//public class UserController {
//
//	@Autowired
//	private UserDAOImpl userService;
//	
//	@RequestMapping("/signup")
//	public String signup(Model model){
//		model.addAttribute("User", new User());
//		return "signup";
//	}
//	
//	@RequestMapping("/saveuser")
//	public String saveuser( @ModelAttribute (name="user") User user){
//				
//		user.setEnabled(true);
//		userService.saveUser(user);
//		System.out.println(user.getUserName());
//		return "redirect:/home";
//	
//	}
//	
//	
//}
