package com.foodbox.nav.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class foodboxAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {	//this tells the location of config file.
		// TODO Auto-generated method stub
		Class[] configFiles = {foodboxAppConfig.class};
		return configFiles;
	}

	@Override
	protected String[] getServletMappings() {
		// TODO Auto-generated method stub
		String[] mappings = {"/"};	//this basically defines the scope which the dispatcher will handle, setting it to "/" means handle all requests to any page. example "/localhost" will only resolve request when you are working locally, but in prodcution this config will fail, as URL will be like www.some.com
		return mappings;
	}

}
