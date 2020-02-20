package com.sachins1221.assignment.demo.config;

import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;

public class SecurityWebApplicationInitializer extends AbstractSecurityWebApplicationInitializer {

	 public SecurityWebApplicationInitializer() {
	        super(DemoSecurityConfig.class);
	    }
}
