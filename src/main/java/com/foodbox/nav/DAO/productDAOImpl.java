package com.foodbox.nav.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Repository;

import com.foodbox.nav.api.Product;
import com.foodbox.nav.api.User;
import com.foodbox.nav.rowmapper.ProductRowMapper;

@Repository
public class productDAOImpl implements foodboxDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private JdbcTemplate jdbcUserTemplate;
	
	@Override
	public List<Product> loadProducts(){
		//some
		
		String sql = "SELECT * FROM products";
		
		List<Product> theListofProduct = jdbcTemplate.query(sql, new ProductRowMapper());
		
		return theListofProduct;
	}

	@Override
	public void saveProducttoDB(Product product) {
		
		Object[] sqlParameters = {product.getName(), product.getPrice(), product.getImage()};
		
		String sql = "INSERT INTO products(name, price, image) VALUES(?, ?, ?)";
		
		jdbcTemplate.update(sql, sqlParameters);
		
		System.out.println("1 new record added in products.");

	}

	@Override
	public Product searchProductById(Integer id) {
		// TODO Auto-generated method stub
		
		String sql = "SELECT * FROM products WHERE id = ?";
		
		Product searched_product = jdbcTemplate.queryForObject(sql, new ProductRowMapper(), id);
		
		return searched_product;
	}

	@Override
	public void saveUpdatestoDB(Product product) {
		
		
		//UPDATE products SET name=?, price=?, image=?  WHERE id = ?
		String sql = "UPDATE products SET name=?, price=?, image=?  WHERE id = ?";
		
		Object[] sqlParameters = {product.getName(), product.getPrice(), product.getImage(), product.getId()};
		
		
		jdbcTemplate.update(sql, sqlParameters);
		
		System.out.println("1 new record updated in products.");
		
	}

	@Override
	public void deleteProductById(Integer id) {
		// TODO Auto-generated method stub
		
		//DELETE FROM products WHERE id = $id
		String sql = "DELETE FROM products WHERE id = ?";
		
		jdbcTemplate.update(sql, id);
		
	}

	@Override
	public void registerUser(User user) {
		// TODO Auto-generated method stub
		//INSERT INTO registration(firstName, lastName, userName, phone, email, password, conpassword, address) VALUES(\"" . $firstName . '" ,"' . $lastName . '" , "' . $userName . '" , "' . $phone . '" , "' . $email . '" , "' . $password . '" , "' . $conpassword . '" , "' . $address . "\")
		Object[] sqlParameters = {user.getFirstName(), user.getLastName(), user.getUserName(), user.getPhone(), user.getEmail(), user.getPassword(), user.getConpassword(), user.getAddress()};
		
		String sql = "INSERT INTO registration(firstName, lastName, userName, phone, email, password, conpassword, address) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
		
		jdbcUserTemplate.update(sql, sqlParameters);
		
		System.out.println("1 new user added via registration.");
	}
	
	@Override
	public boolean verifyLogin(String username, String password) {
		
		boolean exists = false;
		
		//SELECT * FROM registration WHERE userName='" . $email_id . "' AND password='
		String sql = "SELECT count(*) FROM registration WHERE userName = ? AND password= ?";
		
//		System.out.println(sql);
		
//		String sql = "SELECT count(*) FROM MyTable WHERE Param = ?";
		int count = jdbcUserTemplate.queryForObject(sql, new Object[] { username, password }, Integer.class);
		exists = count > 0;
		
		return exists;
	}	
	

	

}
