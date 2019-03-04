package com.etc.entity;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

@Component
public class Users {
	private int userId;
	private String userImg;
	private String userName;
	private String userPwd;
	private String userNickname;
	private String userSex;
	private int userStatus;
	private String vipTime;
	
	public String getUserImg() {
		return userImg;
	}
	public void setUserImg(String userImg) {
		this.userImg = userImg;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	public int getUserStatus() {
		return userStatus;
	}
	public void setUserStatus(int userStatus) {
		this.userStatus = userStatus;
	}
	public String getVipTime() {
		return vipTime;
	}
	public void setVipTime(String vipTime) {
		this.vipTime = vipTime;
	}
	
	@Override
	public String toString() {
		return "Users [userId=" + userId + ", userImg=" + userImg + ", userName=" + userName + ", userPwd=" + userPwd
				+ ", userNickname=" + userNickname + ", userSex=" + userSex + ", userStatus=" + userStatus
				+ ", vipTime=" + vipTime + "]";
	}
	public Users(int userId, String userName, String userPwd, String userNickname, String userSex, int userStatus,
			String vipTime) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
		this.userNickname = userNickname;
		this.userSex = userSex;
		this.userStatus = userStatus;
		this.vipTime = vipTime;
	}
	public Users() {
		// TODO Auto-generated constructor stub
	}
	public Users(String userName, String userPwd, String userNickname, String userSex, int userStatus, String vipTime) {
		super();
		this.userName = userName;
		this.userPwd = userPwd;
		this.userNickname = userNickname;
		this.userSex = userSex;
		this.userStatus = userStatus;
		this.vipTime = vipTime;
	}
	public Users(int userId, String userName, String userPwd, String userNickname, String userSex) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
		this.userNickname = userNickname;
		this.userSex = userSex;
	}
	public Users(int userId, String userName, String userPwd, String userNickname, String userSex, int userStatus) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
		this.userNickname = userNickname;
		this.userSex = userSex;
		this.userStatus = userStatus;
	}
	public Users(int userId, String userImg, String userName, String userPwd, String userNickname, String userSex,
			int userStatus, String vipTime) {
		super();
		this.userId = userId;
		this.userImg = userImg;
		this.userName = userName;
		this.userPwd = userPwd;
		this.userNickname = userNickname;
		this.userSex = userSex;
		this.userStatus = userStatus;
		this.vipTime = vipTime;
	}
	public Users(String userImg, String userName, String userPwd, String userNickname, String userSex, int userStatus,
			String vipTime) {
		super();
		this.userImg = userImg;
		this.userName = userName;
		this.userPwd = userPwd;
		this.userNickname = userNickname;
		this.userSex = userSex;
		this.userStatus = userStatus;
		this.vipTime = vipTime;
	}
	public Users(int userId, String userImg, String userName, String userPwd, String userNickname, String userSex,
			int userStatus) {
		super();
		this.userId = userId;
		this.userImg = userImg;
		this.userName = userName;
		this.userPwd = userPwd;
		this.userNickname = userNickname;
		this.userSex = userSex;
		this.userStatus = userStatus;
	}
	
}
