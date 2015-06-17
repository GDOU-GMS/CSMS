package org.blueshit.csms.test;

import java.util.List;

import org.blueshit.csms.entity.Storage;
import org.blueshit.csms.service.OrderInService;
import org.blueshit.csms.service.impl.OrderInServiceImpl;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class OrderInServiceTest {

	
	@Test
	public void test_queryStorages(){
		
		ApplicationContext apx= new ClassPathXmlApplicationContext("file:C:/Users/Administrator/git/CSMS/CSMS/config/applicationContext.xml");
		OrderInService orderInService=(OrderInService) apx.getBean("orderInServiceImpl");
		List<Storage> list=orderInService.queryStorages();
		System.out.println(list);
	}
	
}
