package com.etc.dao;


import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.etc.entity.Users;

@Repository

public interface IUsersDao {
	//用户登录
	
	public Users login(@Param("userName")String userName,@Param("userPwd")String userPwd);
	
	//用户注册
	public int addUser(Users user);
	
	//查询注册时用户名是否重复
	public Users queryByName(String userName);
	//用户修改信息
	public int updateUser(Users user);
	
	//充值会员修改会员时间
	public int updateVipTime(@Param("userId")int userId,@Param("vipTime")String vipTime);
}
