package com.etc.test;

import java.text.ParseException;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.etc.entity.Comment;
import com.etc.service.AdminDaoImpl;
import com.etc.service.PlayerServiceImpl;
import com.github.pagehelper.PageInfo;

public class TestAll {
	PlayerServiceImpl psi;
	@Before
	public void getAdmin() {
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		psi=(PlayerServiceImpl) context.getBean("playerServiceImpl");
	}
	@Test
	public void getAll() throws ParseException {
		PageInfo<Comment> pi=psi.getComment(1, 1, 10);
		List<Comment> list=pi.getList();
		for (Comment comment : list) {
			System.out.println(comment);
		}
		
	}
}
