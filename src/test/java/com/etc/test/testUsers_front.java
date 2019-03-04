package com.etc.test;


import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.etc.entity.Users;
import com.etc.service.UsersServerImpl;

public class testUsers_front {
	UsersServerImpl usi;
	
	@Before
	public void getUsers() {
		@SuppressWarnings("resource")
		ApplicationContext context =new ClassPathXmlApplicationContext("applicationContext.xml");
	    usi=(UsersServerImpl) context.getBean("usersServerImpl");
	  }
	  
	
		@Test
		//登录
		public void login() {
			Users user= usi.getLogin("小明", "123");
			System.out.println(user);
		}
	    @Test   
	    //注册
	    public void register() {
	    Users user = new Users(null,"小丽","123","丽丽","女",1,"2019-01-01 09:29:39");
	    int n= usi.addUser(user);
	    System.out.println(user);
	    System.out.println(n);
	    }
	    @Test
	    //修改个人信息
	    public void update() {
	    Users user	= new Users(4,"aaaa","小红","123456","阿斯顿","男", 1);
	    int n = usi.updateUser(user);
	    System.out.println(user);
	    System.out.println(n);
	    	
	    }
	    @Test
	    //修改个人信息
	    public void updateVip() {
	    boolean flag = usi.updaVipTime(2,"2018-08-02 12:12:12");
	    System.out.println(flag);
	    }
	}
	
