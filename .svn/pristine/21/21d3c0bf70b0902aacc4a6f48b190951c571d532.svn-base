package com.etc.service;

import java.util.List;

import org.aspectj.apache.bcel.generic.RETURN;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.etc.dao.AdminDao;
import com.etc.entity.Actor;
import com.etc.entity.Admin;
import com.etc.entity.Area;
import com.etc.entity.Comment;
import com.etc.entity.Director;
import com.etc.entity.Movie;
import com.etc.entity.Type;
import com.etc.entity.Users;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class AdminDaoImpl {
@Autowired
     AdminDao ad;
//查询管理员
public List<Admin> getAllAdmin(){
	return ad.queryAllAdmin();
}
//添加管理员
public boolean AddAdmin(Admin AD) {
	int n=ad.addAdmin(AD);
	return n>0;
}
//删除管理员
public boolean DeleteAdmin(int adminId) {
	int n=ad.deleAdmin(adminId);
	return n>0;
	
}
//修改管理员
public boolean UpdateAdmin(Admin AD) {
	int n=ad.updateAdmin(AD);
	return n>0;
}
//查询用户
public List<Users> getAllUsers(){
	return ad.queryAllUsers();
}
//添加用户
public boolean getAddUser(Users user) {
	int n=ad.addUser(user);
	return n>0;
}
//模糊查询用户
public List<Users> getUsersByLike(String userName){
	return ad.queryUsersByLike(userName);
}


//删除用户
public boolean DeleteUsers(int userId) {
	int n=ad.deleUsers(userId);
	return n>0;
	
}

//根据用户id查询用户信息
public Users getUser(int userId) {
	return ad.queryUser(userId);
}

//修改用户
public boolean UpdateUser(Users users) {
	int n=ad.updateUsers(users);
	return n>0;
}
//添加电影
public boolean AddMovie(Movie movie) {
	int n=ad.addMovie(movie);
	return n>0;
}
//查询电影
public List<Movie> getAllMovie(){
	return ad.queryAllMovie();
}

//模糊查询电影
public List<Movie> getMovieLike(String movieName){
	List<Movie> list=ad.queryMovieLike(movieName);
	return list;
}


//id查询电影
public Movie getMovieById(int mid){
	return ad.queryMovieById(mid);
}

//删除电影
public boolean DeleteMovie(int movieId) {
	int n=ad.deleMovie(movieId);
	return n>0;
	
}
//修改电影
public boolean UpdateMovie(Movie moive) {
	int n=ad.updateMovie(moive);
	return n>0;
}
//添加演员
public boolean AddActor(Actor actor) {
	int n=ad.addActor(actor);
	return n>0;
}
//查询演员
public List<Actor> getAllActor(){
	return ad.queryAllActor();
}
//muhu查询演员
public List<Actor> getActorLike(String name){
	return ad.queryActorLike(name);
}
//id查询演员
public Actor getActorById(int id){
	return ad.queryActorById(id);
}
//删除演员
public boolean DeleteActor(int actorId) {
	int n=ad.deleActor(actorId);
	return n>0;
	
}
//修改演员
public boolean UpdateActor(Actor actor) {
	int n=ad.updateActor(actor);
	return n>0;
}
//添加地区
public boolean AddArea(Area area) {
	int n=ad.addArea(area);
	return n>0;
}
//查询地区
public List<Area> getAllArea(){
	return ad.queryAllArea();
}

//id查询地区
public Area getAreaById(int id){
	return ad.queryAreaById(id);
}
//删除地区
public boolean DeleteArea(int areaId) {
	int n=ad.deleArea(areaId);
	return n>0;
	
}
//修改地区
public boolean UpdateArea(Area area) {
	int n=ad.updateArea(area);
	return n>0;
}
//添加留言
public boolean AddComment(Comment comment) {
	int n=ad.addComment(comment);
	return n>0;
}
//查询留言
public List<Comment> getAllComment(){
	return ad.queryAllComment();
}
//查询留言
public Comment getCommentById(int cid){
	return ad.queryCommentById(cid);
}

//查询留言
public List<Comment> getCommentByMovie(String movieName){
	return ad.queryCommentByMovie(movieName);
}



//删除留言
public boolean DeleteComment(int commentId) {
	int n=ad.deleComment(commentId);
	return n>0;
	
}
//修改留言
public boolean UpdateComment(Comment comment) {
	int n=ad.updateComment(comment);
	return n>0;
}
//添加导演信息
public boolean AddDirector(Director director) {
	int n=ad.addDirector(director);
	return n>0;
}
//查询导演信息
public List<Director> getAllDirector(){
	return ad.queryAllDirector();
}

//muhu查询导演信息
public List<Director> getDirectorLike(String name){
	return ad.queryDirectorLike(name);
}
//id查询导演信息
public Director getDirectorById(int did){
	return ad.queryDirectorById(did);
}
//删除导演信息
public boolean DeleteDirector(int directorId) {
	int n=ad.deleDirector(directorId);
	return n>0;
	
}
//修改导演信息
public boolean UpdateDirector(Director comment) {
	int n=ad.updateDirector(comment);
	return n>0;
}
//添加电影类型
public boolean AddType(Type type) {
	int n=ad.addType(type);
	return n>0;
}
//查询电影类型
public List<Type> getAllType(){
	return ad.queryAllType();
}
//id查询电影类型
public Type getTypeById(int typeId){
	return ad.queryTypeById(typeId);
}
//删除电影类型
public boolean DeleteType(int typeId) {
	int n=ad.deleType(typeId);
	return n>0;
	
}
//修改电影类型
public boolean UpdateType(Type type) {
	int n=ad.updateType(type);
	return n>0;
}

//管理员登录
public Admin getadminLogin(String adminName,String adminPwd) {
	return ad.adminLogin(adminName, adminPwd);
}
    
}
