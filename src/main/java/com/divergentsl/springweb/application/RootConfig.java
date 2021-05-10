package com.divergentsl.springweb.application;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalEntityManagerFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@ComponentScan(basePackages = "com.divergentsl.springweb ")
public class RootConfig {

	@Bean
	public LocalEntityManagerFactoryBean getMangerLocalEntityManagerFactoryBean() {
		LocalEntityManagerFactoryBean bean = new LocalEntityManagerFactoryBean();
		bean.setPersistenceUnitName("PERSISTENCEJPA");
		return bean;
	}

	@Bean
	public JpaTransactionManager getJpaTransactionManager() {
		JpaTransactionManager jpaTransactionManager = new JpaTransactionManager();
		jpaTransactionManager.setEntityManagerFactory(getMangerLocalEntityManagerFactoryBean().getObject());
		return jpaTransactionManager;
	}

}
