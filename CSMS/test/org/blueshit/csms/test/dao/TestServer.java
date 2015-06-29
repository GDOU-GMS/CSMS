package org.blueshit.csms.test.dao;

import javax.annotation.Resource;

import org.blueshit.csms.base.DaoSupportImpl;
import org.blueshit.csms.entity.Color;
import org.blueshit.csms.service.ColorService;
import org.blueshit.csms.service.ItemService;
import org.blueshit.csms.service.OrderInService;
import org.blueshit.csms.service.PrivilegeService;
import org.blueshit.csms.service.RoleService;
import org.blueshit.csms.service.SizeService;
import org.blueshit.csms.service.StorageService;
import org.blueshit.csms.service.UserService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/applicationContext.xml")
public class TestServer {
	
	@Resource
	private SessionFactory sessionFactory;
	
	@Resource
	private ColorService colorService;
	@Resource
	private ItemService itemService;
	@Resource
	private OrderInService orderService;
	@Resource
	private PrivilegeService privilegeService;
	@Resource
	private RoleService roleService;
	@Resource
	private SizeService sizeSercice;
	@Resource
	private StorageService storageService;
	@Resource
	private UserService userService;
	
	@Test
	public void testColorAdd(){
		Color color = new Color();
		color.setName("red");
		colorService.save(color);
	}
	
	@Test
	public void testColorDel(){
		colorService.delete(new Long(16));
	}
	
	@Test
	public void testColorEdit(){
		Color color = colorService.findById(new Long(15));
		color.setName("green");
		colorService.update(color);
	}
	
	@Test
	public void testColorFind(){
		Color color = colorService.findById(new Long(15));
		System.out.println(color.getName());
	}
	
	
	
}
