package com.etc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.etc.entity.Actor;
import com.etc.entity.Admin;
import com.etc.entity.Area;
import com.etc.entity.Comment;
import com.etc.entity.Director;
import com.etc.entity.Movie;
import com.etc.entity.Type;
import com.etc.entity.Users;


@Repository
public interface AdminDao {
	//查询管理员
	public List<Admin> queryAllAdmin();
	
	//删除管理员
	public int deleAdmin(int adminId);
	
	//修改管理员信息
	public int updateAdmin(Admin AD);
	
	//注册管理员
	public int addAdmin(Admin AD);
	//查询用户
    public List<Users> queryAllUsers();
    
    //添加用户
    public int addUser(Users user);
    
    //查询用户
    public List<Users> queryUsersByLike(String uname);
			
	//删除用户
	public int deleUsers(int userId);
	
	//根据用户id查询用户信息
	public Users queryUser(int userId);
			
	//修改用户
	public int updateUsers(Users users);
	//查询电影
    public List<Movie> queryAllMovie();
    
    //查询电影
    public List<Movie> queryMovieLike(String mname);
    
  //id查询电影
    public Movie queryMovieById(int mid);
				
    //删除电影
    public int deleMovie(int movieId);
				
    //修改电影信息
    public int updateMovie(Movie moive);
   //添加电影
  	public int addMovie(Movie movie);
  //查询演员
    public List<Actor> queryAllActor();
    
  //模糊查询演员
    public List<Actor> queryActorLike(String name);
    
    //id查询演员
    public Actor queryActorById(int actorId);
				
    //删除演员
    public int deleActor(int actorId);
				
    //修改演员信息
    public int updateActor(Actor actor);
   //添加演员
  	public int addActor(Actor actor);
  //查询地区
    public List<Area> queryAllArea();
		
    //id查询地区
    public Area queryAreaById(int aid);
    
    //删除地区
    public int deleArea(int areaId);
				
    //修改地区信息
    public int updateArea(Area area);
   //添加地区
  	public int addArea(Area area);
    //查询留言
    public List<Comment> queryAllComment();
    
  //查询留言
    public List<Comment> queryCommentByMovie(String movieName);
    
  //id查询留言
    public Comment queryCommentById(int commentId);
				
    //删除留言
    public int deleComment(int commentId);
				
    //修改留言
    public int updateComment(Comment comment);
   //添加留言
  	public int addComment(Comment comment);
    //查询导演信息
    public List<Director> queryAllDirector();
    
  //模糊查询导演信息
    public List<Director> queryDirectorLike(String name);
    
    //id查询导演信息
    public Director queryDirectorById(int directorId);
				
    //删除导演信息
    public int deleDirector(int directorId);
				
    //修改导演信息
    public int updateDirector(Director director);
   //添加导演信息
  	public int addDirector(Director director);
  	 //查询类型信息
    public List<Type> queryAllType();
    
    //查询类型信息
    public Type queryTypeById(int id);
				
    //删除类型信息
    public int deleType(int typeId);
				
    //修改类型信息
    public int updateType(Type type);
   //添加类型信息
  	public int addType(Type type);
  	
  	//管理员登录
  	public Admin adminLogin(@Param("adminName")String adminName,@Param("adminPwd")String adminPwd);
}