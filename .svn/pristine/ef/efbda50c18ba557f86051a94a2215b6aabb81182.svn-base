package com.etc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.etc.dao.IUsersDao;
import com.etc.entity.Users;
@Service
public class UsersServerImpl {
    @Autowired	
	IUsersDao ud;
	
	//登录
    public Users getLogin(String userName,String userPwd) {
    	return ud.login(userName, userPwd);
    }
    //注册
	public int addUser(Users user) {
		 return ud.addUser(user);
	}
	
	//查询注册时用户名是否重复
	public Users getQueryByName(String userName) {
		return ud.queryByName(userName);
	}
	//修改用户信息
	public int updateUser(Users user) {
		return ud.updateUser(user);
	}

	//充值会员修改会员时间
	public boolean updaVipTime(int id,String vtime) {
		int n=ud.updateVipTime(id,vtime);
		return n>0;
	}
}
