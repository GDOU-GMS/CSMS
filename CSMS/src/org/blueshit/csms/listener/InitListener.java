package org.blueshit.csms.listener;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.blueshit.csms.entity.Privilege;
import org.blueshit.csms.service.PrivilegeService;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

public class InitListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		
		System.out.println("==============进入初始化监听器==============");
		
		ServletContext application = sce.getServletContext();
		
		//获取sprin监听器对象
		ApplicationContext ac = WebApplicationContextUtils.getWebApplicationContext(application);
		//获取privilegeService
		PrivilegeService privilegeService = (PrivilegeService) ac.getBean("privilegeService");
		
		//把所有顶级菜单放到application里面去，用于显示菜单
		List<Privilege> topPrivilegeList = privilegeService.getTopPrivilege();
		application.setAttribute("topPrivilegeList", topPrivilegeList);
		//把所有权限都放到application中去
		List<Privilege> allPrivilegeList = privilegeService.findAll();
		application.setAttribute("allPrivilegeList", allPrivilegeList);
		//把所有的权限URL放到application里面去，用于权限控制
		List<String> allPrivilegeUrls = privilegeService.findAllPrivilegeUrls();
		application.setAttribute("allPrivilegeUrls", allPrivilegeUrls);
		
		
		
		System.out.println("==============退出初始化监听器==============");
		
	}

}
