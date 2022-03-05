package com.foodbox.nav.config;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration	// to tell that this file is a configuration file.
@EnableWebMvc	//tells the config that I am using that I am using this app for webmvc
@ComponentScan(basePackages = {"com.foodbox"})	//to locate the files, it first need to scan all folders.
public class foodboxAppConfig implements WebMvcConfigurer{
	
	@Bean
	InternalResourceViewResolver viewResolver(){
		
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setPrefix("/WEB-INF/view/");
		viewResolver.setSuffix(".jsp");
		
		return viewResolver;
	}
	
//	Alternative method to resolve resouces
//	@Bean
//	InternalResourceViewResolver cssResolver(){
//		
//		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
//		viewResolver.setPrefix("/resources/css/");
//		viewResolver.setSuffix(".css");
//		
//		return viewResolver;
//	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		
		registry
		.addResourceHandler("/staticfiles/**")
		.addResourceLocations("/resources/");
		
		
	}
	

	
	@Bean
	public JdbcTemplate jdbcTemplate() {
		
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource());
		
		return jdbcTemplate;
	}
	
	@Bean
	public DataSource dataSource(){
		
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		
		//set the db info to the datasource object
		dataSource.setUsername("root");
		dataSource.setPassword("12Password12#");
		dataSource.setUrl("jdbc:mysql://172.17.0.1:3306/cart_db?useSSL=false");
		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		
		return dataSource;
	}
	
	@Bean
	public JdbcTemplate jdbcUserTemplate() {
		
		JdbcTemplate jdbcUserTemplate = new JdbcTemplate(userDataSource());
		
		return jdbcUserTemplate;
	}
	
	@Bean
	public DataSource userDataSource(){
		
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		
		//set the db info to the datasource object
		dataSource.setUsername("root");
		dataSource.setPassword("12Password12#");
		dataSource.setUrl("jdbc:mysql://172.17.0.1:3306/test?useSSL=false");
		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		
		return dataSource;
	}
}
