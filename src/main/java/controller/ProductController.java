//package controller;
//
//import java.io.File;
//import java.io.IOException;
//import java.nio.file.Path;
//import java.nio.file.Paths;
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.validation.BindingResult;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.multipart.MultipartFile;
//
//import model.Category;
//import model.Product;
//import daoimpl.CategoryDAOImpl;
//import daoimpl.ProductDAOImpl;
//
//@Controller
//public class ProductController {
//	@Autowired
//	private CategoryDAOImpl categoryService;
//	
//	@Autowired
//	private ProductDAOImpl productService;
//	
//	/*category start*/
//	@RequestMapping("/getcategoryform")
//	public String getaddcategory(Model model) {
//		model.addAttribute("Category", new Category());
//		return "categoryForm";
//	}
//	
//	@RequestMapping("/savecategory")
//	public String savecategory(@ModelAttribute (name="category") Category category){
//		categoryService.saveCategory(category);
//		System.out.println(category.getCategoryName());
//		return "redirect:/viewCategory";
//	}
//	
//	@RequestMapping("/viewCategory")
//	public String viewCategory(Model model ){
//		List<Category> categories=categoryService.list();
//		model.addAttribute("categoryList", categories);
//		
//		return "viewCategory";
//	}
//		
//	@RequestMapping("/deleteCategory")
//	public String deleteCategory(@RequestParam ("categoryId") int categoryId){
//		categoryService.delete(categoryId);
//		return "redirect:/viewCategory";			
//	}
//	
//	@RequestMapping("/editCategory")
//	public String editCategory(@RequestParam ("categoryId") int categoryId, Model model){
//		Category category = categoryService.getById(categoryId);
//		model.addAttribute("Category", category);
//		model.addAttribute("editCategoryClicked", true);
//		return "categoryForm";
//		
//	}
//	
//	/*category end*/
//	
//	/*product start*/
//	
//	@RequestMapping("/viewProduct")
//	public String viewProduct(Model model ){
//		List<Product> products=productService.getallproducts();
//		model.addAttribute("productList", products);
//		
//		return "viewProduct";
//	}
//	
//	
//	
//	
//	@RequestMapping("/getproductform")
//	public String getaddproduct(Model model) 
//	{
//		
//		List<Category> categories=categoryService.list();
//		model.addAttribute("categories",categories);
//		
//		model.addAttribute("Product",new Product());
//		return "productForm";
//		
//	}
//	
//	@RequestMapping("/saveproduct")
//	public String saveproduct(@ModelAttribute (name="product") Product product){
//		productService.saveProduct(product);
//		MultipartFile image=product.getImage();
//		Path path=Paths.get("C:\\Users\\uthraa\\workspace\\frontend\\src\\main\\webapp\\WEB-INF\\resources\\images\\"+product.getProductId()+".png");
//		try {
//			image.transferTo(new File(path.toString()));
//		} catch (IllegalStateException e) {
//			e.printStackTrace();
//		} catch (IOException e) {
//			e.printStackTrace();
//	}
//		System.out.println(product.getProductName());
//		return "redirect:/home";
//	}
//	
//	@RequestMapping("/deleteProduct")
//	public String deleteProduct(@RequestParam ("productId") int productId){
//		productService.deleteproducts(productId);
//		return "redirect:viewProduct";			
//	}
//	
//	@RequestMapping("/editProduct")
//	public String editProduct(@RequestParam ("productId") int productId, Model model){
//		Product product = productService.getproductbyid(productId);
//		model.addAttribute("Product", product);
//		List<Category> categories=categoryService.list();
//		model.addAttribute("categories",categories);
//		
//		model.addAttribute("editProductClicked", true);
//		return "productForm";
//		
//	}
//	
//	/*Product ends*/
//	
//	/*Single product*/
//	
//	@RequestMapping("/singleProduct")
//	public String singleProduct(@RequestParam ("productId") int productId,Model model){
//		Product product =productService.getproductbyid(productId);
//		model.addAttribute("product", product);
//		return "singleProduct";
//	}
//	
//	/*shop*/
//	@RequestMapping("/shop")
//	public String shop(Model model){
//		List<Product> products=productService.getallproducts();
//		model.addAttribute("productList", products);
//		return "shop";
//	}	
//	
//}
