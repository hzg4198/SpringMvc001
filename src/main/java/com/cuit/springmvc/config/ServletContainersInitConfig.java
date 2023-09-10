package com.cuit.springmvc.config;

import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import javax.servlet.Filter;

public class ServletContainersInitConfig extends AbstractAnnotationConfigDispatcherServletInitializer {


	protected Class<?>[] getRootConfigClasses() {
		return new Class[]{SpringConfig.class};
	}

	protected Class<?>[] getServletConfigClasses() {
		return new Class[]{SpringMvcConfig.class};
	}

	protected String[] getServletMappings() {
		return new String[]{"/"};
	}
}
