package com.foodbox.nav.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.foodbox.nav.api.Product;
import com.foodbox.nav.api.User;

public class ProductRowMapper implements RowMapper<Product> {

	@Override
	public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		
		Product product = new Product();

		// the below few lines will only fetch the first row.
		product.setId(rs.getInt("id"));
		product.setName(rs.getString("name"));
		product.setPrice(rs.getString("price"));
		product.setImage(rs.getString("image"));

		return product;
	}


}