package com.foodbox.nav.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.foodbox.nav.DAO.foodboxDAO;
import com.foodbox.nav.DAO.productDAOImpl;
import com.foodbox.nav.api.Product;
import com.foodbox.nav.api.User;


@Controller
public class foodboxController {
	
	//foodboxDAO foodboxDAO = new productDAOImpl();
	// or
	@Autowired	//because spring has already created this object due to the "Repository annotation" which is always called automatically by spring.
	private foodboxDAO foodboxDAO;
	
//	@RequestMapping(value = "/admin_page", method = RequestMethod.POST)
//	or
	@PostMapping("/admin_page")
	public String adminPagePost(Model model) {
		
		//call the DAO method to get the data.
		List<Product> ProductList = foodboxDAO.loadProducts();
		
		model.addAttribute("products",ProductList);
		
		Product product = new Product();
		
		model.addAttribute("product", new Product());
		
		//next is we need to configure the jsp page to accept the data
		return "productList";	//this return will actually return "productList.jsp" from WEB-INF->views (folder).
	}

	@GetMapping("/admin_page")
	public String adminPageGet(Model model) {
		
		//call the DAO method to get the data.
		List<Product> ProductList = foodboxDAO.loadProducts();
		
		model.addAttribute("products",ProductList);
		
		Product product = new Product();
		
		model.addAttribute("product", new Product());
		
		//next is we need to configure the jsp page to accept the data
		return "productList";	//this return will actually return "productList.jsp" from WEB-INF->views (folder).
	}
	
	
	@PostMapping("/save-new-product")
	public String saveProduct(Product product) {
		
		foodboxDAO.saveProducttoDB(product);
		
		return "redirect:/admin_page";	
	}
	
	@GetMapping("/admin_update")
	public String updateProduct(@RequestParam("productid") int id, @ModelAttribute("product") Product product) {	
		
// 		or paraemter = "Model model"
//		Product myproduct = new Product(); 
//		model.addAttribute("products",myproduct);
		
//		System.out.println("looking for id " + id);
		
		Product theproduct = foodboxDAO.searchProductById(id);
		
		// sending the desired value in the model attribute "product" that will be used by jsp to print data to front end.
		product.setId(theproduct.getId());
		product.setName(theproduct.getName());
		product.setPrice(theproduct.getPrice());
		product.setImage(theproduct.getImage());
		
		return "admin_update";	
	}

	@PostMapping("/save_admin_update")
	public String saveUpdateChanges(Product product) {	
		foodboxDAO.saveUpdatestoDB(product);
		
		return "redirect:/admin_page";	
	}
	
	@GetMapping("/admin_delete")
	public String deleteProduct(@RequestParam("productid") int id) {	
		
		foodboxDAO.deleteProductById(id);
		

		return "redirect:/admin_page";	
	}
	
	//USER REGISTRATION--------------------------
	
	@GetMapping("/index")
	public String indexPage(Model model) {
		
		model.addAttribute("user", new User());
		
		return "index";	
	}
	
	@GetMapping("/")
	public String indexPageDefault(Model model) {
		
		model.addAttribute("user", new User());
		
		return "index";	
	}

	@PostMapping("/register-new-user")
	public String registerNewUser(User user_new) {
		
		foodboxDAO.registerUser(user_new);
		
		return "SuccessNewUser";	
	}
	
	//USER LOGIN------------------------------
	
	@PostMapping("/login")
	public String loginSubmit(@RequestParam("email_id") String email_id, @RequestParam("pass") String password) {	
		
		
//		String username = request.getParameter("value1");
		
		System.out.println(email_id);
		System.out.println(password);
		
		boolean result = foodboxDAO.verifyLogin(email_id, password);
		
		if (result) {
			return "LoginSuccessPage";
		}
		else {
			return "LoginFailedPage";	
		}
		
	}




	
	
	
}
