//package controller;
//
//import java.util.List;
//
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//@Controller
//public class CartController<CartDAOImpl, productService, Cart> {
//
//	@Autowired
//	private ProductDAOImpl productService;
//	
//	@Autowired
//	private CartDAOImpl cartService;
//	
//	
//	
//	@RequestMapping("/cart/{productId}")
//	public String cart(@PathVariable("productId") int productId, @RequestParam int units,Model model){
//		productService product =productService.getproductbyid(productId);
//		model.addAttribute("product", product);
//		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//		String username = user.getUsername();
//		System.out.println(username);
//		List<Cart> cartitems = cartService.getCartbyusername(username);
//		
//		for (Cart cartitem : cartitems) {
//			if(cartitem.getProducts().getProductId()==productId){
//				cartitem.setQuantity(cartitem.getQuantity()+1);
//				cartitem.setTotal(product.getPrice()*cartitem.getQuantity());
//				product.setStock(product.getStock()-1);
//				productService.saveProduct(product);
//				cartService.saveCart(cartitem);
//				model.addAttribute("units", cartitem.getQuantity());
//					return "redirect:/mycart";
//					}
//			
//}
//		Cart cart=new Cart();
//		cart.setProductName(product.getProductName());
//		cart.setPrice(product.getPrice());
//		cart.setQuantity(units);
//		cart.setTotal(product.getPrice());
//		cart.setUser(username);
//		cart.setProducts(product);
//		product.setStock(product.getStock()-1);
//		productService.saveProduct(product);
//		cartService.saveCart(cart);
//		return "redirect:/mycart";
//	}
//	
//	@RequestMapping("/mycart")
//	public String getcart(HttpSession session,Model model) {
//		int tot=0;
//		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//		String username = user.getUsername();
//		System.out.println(username);
//		List<Cart> cart = cartService.getCartbyusername(username);
//		for(Cart c:cart){
//			tot=tot+c.getTotal();
//		}
//		model.addAttribute("total", tot);
//		model.addAttribute("i", cart);
//		session.setAttribute("count", cart.size());
//		
//		return "cart";
//	}
//	
//	@RequestMapping("/cart/minus/{id}")
//	public String minus(@PathVariable int id, Model model) {
//		Product product = productService.getproductbyid(id);
//		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//		String username = user.getUsername();
//		List<Cart> cartitems =cartService.getCartbyusername(username) ;
//		
//			for (Cart cartitem : cartitems) {
//				if (cartitem.getProducts().getProductId() == id) {
//					if (cartitem.getQuantity() > 1) {
//					cartitem.setQuantity(cartitem.getQuantity() - 1);
//					cartitem.setTotal(cartitem.getProducts().getPrice() * cartitem.getQuantity());
//					product.setStock(product.getStock() + 1);
//					productService.saveProduct(product);
//					cartService.saveCart(cartitem);
//					
//				}
//			}
//		} 
//			return "redirect:/mycart";
//}
//	
//	@RequestMapping("/cart/plus/{id}")
//	public String plus(@PathVariable int id, Model model) {
//		Product product = productService.getproductbyid(id);
//		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//		String username = user.getUsername();
//		List<Cart> cartitems =cartService.getCartbyusername(username) ;
//		System.out.println(cartitems.size());
//			for (Cart cartitem : cartitems) {
//				if (product.getStock() > 0) {
//					if (cartitem.getProducts().getProductId() == id) {
//					cartitem.setQuantity(cartitem.getQuantity() + 1);
//					cartitem.setTotal(cartitem.getProducts().getPrice() * cartitem.getQuantity());
//					product.setStock(product.getStock() - 1);
//					productService.saveProduct(product);
//					cartService.saveCart(cartitem);
//					System.out.println(cartitem.getQuantity());
//					
//				}
//			}
//		} 
//			return "redirect:/mycart";
//}
//	
//	
//	
//	
//
//	@RequestMapping("/cart/removecartitem/{cartitemid}")
//	public String removecartitem(@PathVariable int cartitemid,Model model) {
//		
//		cartService.removecartitem(cartitemid);
//		return "redirect:/mycart";
//	}
//
//	@RequestMapping("/cart/removecart")
//	public String removecart(Model model) {
//		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//		String username = user.getUsername();
//		
//		cartService.removeallcartitem(username);
//		return "redirect:/mycart";
//	}
//
//	
//}
