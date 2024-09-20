package com.nit.configuration;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"com.nit"})
public class WebMvcConfiuration implements WebMvcConfigurer{
	
	
	@Bean
	public ViewResolver resolver() {
		InternalResourceViewResolver res=new InternalResourceViewResolver();
		res.setPrefix("/WEB-INF/views/");
		res.setSuffix(".jsp");
		return res;
	}
	
	@Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        
        registry.addResourceHandler("/AllImages/**")
                .addResourceLocations("classpath:/static/AllImages/");
    }
	@Bean
	public MessageSource messageSource() {
		ResourceBundleMessageSource rd=new ResourceBundleMessageSource();
		rd.setBasename("error");
		return rd;
	}
	
	@Bean
	public LocalValidatorFactoryBean localValidator() {
		LocalValidatorFactoryBean ld=new LocalValidatorFactoryBean();
		ld.setValidationMessageSource(messageSource());
		return ld;
	}

}
