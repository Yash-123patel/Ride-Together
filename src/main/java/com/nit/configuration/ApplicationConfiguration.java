package com.nit.configuration;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.transaction.TransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.nit.dao.UserDao;
import com.nit.dao.UserDaoImpl;

@Configuration
@EnableTransactionManagement
@ComponentScan(basePackages = {"com.nit"})
public class ApplicationConfiguration {
	
	@Bean(name = "dataSource")
	public DataSource dataSource() {
		DriverManagerDataSource datasource=new DriverManagerDataSource();
		datasource.setDriverClassName("oracle.jdbc.driver.OracleDriver");
		datasource.setUrl("jdbc:oracle:thin:@localhost:1521:xe");
		datasource.setUsername("system");
		datasource.setPassword("root");
		return datasource;
	}
	
	
	@Bean(name = "transactionManager")
	public TransactionManager transactionManager() {
		DataSourceTransactionManager transaction=new DataSourceTransactionManager();
		transaction.setDataSource(dataSource());
		return transaction;
	}
	@Bean(name = "dao")
	public UserDao dao() {
		UserDaoImpl userdao=new UserDaoImpl();
		userdao.setDataSource(dataSource());
		return userdao;
	}
	

	

}
