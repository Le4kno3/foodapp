package com.foodbox.nav.DAO;

import java.util.List;

import com.foodbox.nav.api.Product;
import com.foodbox.nav.api.User;

public interface foodboxDAO {
	
	List<Product> loadProducts();
	void saveProducttoDB(Product product);
	Product searchProductById(Integer id);
	void saveUpdatestoDB(Product product);
	void deleteProductById(Integer id);
	void registerUser(User user);
	boolean verifyLogin(String username, String password);

}
