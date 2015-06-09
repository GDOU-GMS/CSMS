package org.blueshit.csms.install;

import javax.annotation.Resource;

import org.apache.commons.codec.digest.DigestUtils;
import org.blueshit.csms.entity.Privilege;
import org.blueshit.csms.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
public class Installer {

	@Resource
	private SessionFactory sessionFactory;
	
	@Transactional
	private void install(){
		Session session = sessionFactory.openSession();
		
		//安装超级管理员
		User user = new User();
		user.setLoginName("admin");
		user.setUserName("超级管理员");
		user.setPassword(DigestUtils.md5Hex("admin"));
		
		session.save(user);
		
		//安装权限数据
		Privilege menu,menu1,menu2,menu3,menu4,menu5,menu6;
		
		//系统管理总菜单
		menu = new Privilege("系统管理", null, null);
		menu1 = new Privilege("用户管理", "/user_list", menu);
		menu2 = new Privilege("货号管理", "/item_list", menu);
		menu3 = new Privilege("仓库管理", "/storage_list", menu);
		menu4 = new Privilege("角色管理","/role_list",menu);
		menu5 = new Privilege("颜色管理","/color_list",menu);
		menu6 = new Privilege("尺码管理","/size_list",menu);

		session.save(menu);
		session.save(menu4);
		session.save(menu1);
		session.save(menu2);
		session.save(menu3);
		session.save(menu5);
		session.save(menu6);
		
			//角色管理
		session.save(new Privilege("角色列表", "/role_list", menu4));
		session.save(new Privilege("角色删除", "/role_delete", menu4));
		session.save(new Privilege("角色添加", "/role_add", menu4));
		session.save(new Privilege("角色修改", "/role_edit", menu4));
			//用户管理
		session.save(new Privilege("用户列表", "/user_list", menu1));
		session.save(new Privilege("用户修改", "/user_edit", menu1));
		session.save(new Privilege("用户删除","/user_delete",menu1));
		session.save(new Privilege("用户添加","/user_add",menu1));
		session.save(new Privilege("用户查询","/user_query",menu1));
		session.save(new Privilege("重置密码","/user_resetPwd",menu1));
			//货号
		session.save(new Privilege("货号列表", "/item_list", menu2));
		session.save(new Privilege("货号修改", "/item_edit", menu2));
		session.save(new Privilege("货号删除","/item_delete",menu2));
		session.save(new Privilege("货号添加","/item_add",menu2));
		session.save(new Privilege("货号查询","/item_query",menu2));
			//仓库
		session.save(new Privilege("仓库列表", "/storage_list", menu3));
		session.save(new Privilege("仓库修改", "/storage_edit", menu3));
		session.save(new Privilege("仓库删除","/storage_delete",menu3));
		session.save(new Privilege("仓库添加","/storage_add",menu3));
		session.save(new Privilege("仓库查询","/storage_query",menu3));
			//颜色管理
		session.save(new Privilege("颜色列表", "/color_list", menu5));
		session.save(new Privilege("颜色删除", "/color_delete", menu5));
		session.save(new Privilege("颜色添加", "/color_add", menu5));
		session.save(new Privilege("颜色修改", "/color_edit", menu5));
			//尺码管理
		session.save(new Privilege("尺码列表", "/size_list", menu6));
		session.save(new Privilege("尺码删除", "/size_delete", menu6));
		session.save(new Privilege("尺码添加", "/size_add", menu6));
		session.save(new Privilege("尺码修改", "/size_edit", menu6));
	
		
		//库存管理总菜单
		menu = new Privilege("库存管理", null, null);
		menu1 = new Privilege("入库管理", "/orderin_list", menu);
		menu2 = new Privilege("出库管理", "/orderout_list", menu);
		
		session.save(menu);
		session.save(menu1);
		session.save(menu2);
		
			//入库管理
		session.save(new Privilege("入库列表", "/orderin_list", menu1));
		session.save(new Privilege("入库修改", "/orderin_edit", menu1));
		session.save(new Privilege("入库删除","/orderin_delete",menu1));
		session.save(new Privilege("入库添加","/orderin_add",menu1));
		session.save(new Privilege("入库查询","/orderin_query",menu1));
		session.save(new Privilege("入库单列表", "/orderList_list", menu1));
		session.save(new Privilege("入库单修改", "/orderList_edit", menu1));
		session.save(new Privilege("入库单删除","/orderList_delete",menu1));
		session.save(new Privilege("入库单添加","/orderList_add",menu1));
		
			//出库管理
		session.save(new Privilege("出库列表", "/orderout_list", menu2));
		session.save(new Privilege("出库修改", "/orderout_edit", menu2));
		session.save(new Privilege("出库删除","/orderout_delete",menu2));
		session.save(new Privilege("出库添加","/orderout_add",menu2));
		session.save(new Privilege("出库查询","/orderout_query",menu2));
		session.save(new Privilege("出库单列表", "/orderList_list", menu2));
		session.save(new Privilege("出库单修改", "/orderList_edit", menu2));
		session.save(new Privilege("出库单删除","/orderList_delete",menu2));
		session.save(new Privilege("出库单添加","/orderList_add",menu2));
		
		
		//辅助管理总菜单
		menu = new Privilege("辅助管理", null, null);
		menu1 = new Privilege("修改密码", "/user_updatePwd", menu);
		
		session.save(menu);
		session.save(menu1);
		
	}
	
	
	/**
	 * 执行主程序实现安装
	 * @param args
	 */
	public static void main(String args []){
		System.out.println("正在初始化数据......");
		
		@SuppressWarnings("resource")
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		Installer installer = (Installer) ac.getBean("installer");
		installer.install();
		
		System.out.println("初始化数据完毕......");

	}
	
	
}
