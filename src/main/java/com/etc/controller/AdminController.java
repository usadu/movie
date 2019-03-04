package com.etc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.etc.entity.Admin;
import com.etc.entity.Movie;
import com.etc.entity.Type;
import com.etc.entity.Users;
import com.etc.entity.Area;
import com.etc.entity.Actor;
import com.etc.entity.Director;
import com.etc.entity.Comment;
import com.etc.service.AdminDaoImpl;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("adminController")
public class AdminController {
	@Autowired
	AdminDaoImpl adi;
	@RequestMapping("/admin")
	@ResponseBody
	public List<Admin> admin() {
		System.out.println("查询所有管理员");
		List<Admin> list=adi.getAllAdmin();
		System.out.println(list);
		return list;
		
	}
	@RequestMapping("/user")
	@ResponseBody
	public List<Users> user(@RequestParam(value="searchUser",defaultValue="")String searchUser) {
		System.out.println("查询所有用户");
		List<Users> list=adi.getUsersByLike(searchUser);
		System.out.println(list);
		return list;
	}
	
	@RequestMapping("/userLike")
	public List<Users> userLike(String searchUser) {
		List<Users> list=adi.getUsersByLike(searchUser);
		
		return list;
	}
	
	
	@RequestMapping("/getUserById")
	@ResponseBody
	public Users getUserById(int userId) {
		//System.out.println("查询所有用户");
		Users user=adi.getUser(userId);
		//System.out.println("11111111111111111111111111111111111111"+user);
		return user;
}
	@RequestMapping("/addUser")
	public void addUser(Users user,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		boolean flag=adi.getAddUser(user);
		System.out.println("=============================="+flag);
		request.setAttribute("op", "adduser");
		request.getRequestDispatcher("/adminShow.jsp").forward(request, response);
	}
	
	@RequestMapping("/deleteUser")
	@ResponseBody
	public List<Users> deleUser(@RequestParam(value="userId")int userId) {
		System.out.println("删除用户");
		adi.DeleteUsers(userId);
		List<Users> list=adi.getAllUsers();
		return list;
	}
	
	
	//修改用户信息
	@RequestMapping(value="updateUser",method=RequestMethod.POST)
	public void update(Users users,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		System.out.println("修改用户信息");
		adi.UpdateUser(users);
		List<Users> list=adi.getAllUsers();
		request.setAttribute("list", list);
		request.setAttribute("op", "user");
		
		request.getRequestDispatcher("/adminShow.jsp").forward(request, response);
	}
	//管理员登录
	@RequestMapping("/adminLogin")
	public ModelAndView adminLogin(@RequestParam(value="adminName",defaultValue="")String adminName,@RequestParam(value="adminPwd",defaultValue="")String adminPwd,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		ModelAndView mv=new ModelAndView();
		Admin admin=adi.getadminLogin(adminName, adminPwd);
		
		if(null != admin ) {
			mv.addObject("admin",admin);
			request.getSession().setAttribute("admin", admin);
			request.setAttribute("msg", "登录成功");
			mv.setViewName("forward:/adminShow.jsp");
			return mv;
		}else {
			request.setAttribute("msg", "登录失败");
			request.getRequestDispatcher("/adminlogin.jsp").forward(request, response);
			return null;
		}
		
		
		
	}
	
	//管理员登录
	@RequestMapping("/adminExit")
	public String adminExit(HttpServletRequest request){
		System.out.println("进入exit");
		request.getSession().removeAttribute("admin");
		return "forward:/adminlogin.jsp";
		
	}
	
	//管理员信息修改
	@RequestMapping(value="updaAdmin",method=RequestMethod.POST)
	public void updateMovie(Admin admin,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		
		adi.UpdateAdmin(admin);
		request.setAttribute("op", "updaadmin");
		request.getRequestDispatcher("/adminShow.jsp").forward(request, response);
	}
	
	//查询所有电影
	/*@RequestMapping("/Movie")
	@ResponseBody
	public List<Movie> movie(@RequestParam(value="searchMovie",defaultValue="")String searchMovie) {
		//System.out.println("------------------查询所有电影----------");
		List<Movie> list=adi.getMovieLike(searchMovie);
		//System.out.println(list);
		return list;
	}
	
	@RequestMapping("/deleMovie")
	@ResponseBody
	public List<Movie> deleMovie(@RequestParam(value="movieId")int movieId) {
		System.out.println("删除用户");
		adi.DeleteMovie(movieId);
		List<Movie> list=adi.getMovieLike("");
		return list;
	}*/
	
	/*@RequestMapping("MovieByType")
	@ResponseBody
	public PageInfo<Movie> ByType(@RequestParam("typeid")String typeid,@RequestParam(value="pageNum",defaultValue="1")int pageNum){
		int tid=Integer.parseInt(typeid);
		//System.out.println("类型id"+typeid);
		PageInfo<Movie> pageinfo=gs.getMovieByType(tid,pageNum);
		//System.out.println(list);
		return pageinfo;
	}*/
	
	//查询所有电影
	@RequestMapping("/Movie")
	@ResponseBody
	public List<Movie> movie(@RequestParam(value="searchMovie",defaultValue="")String searchMovie) {
		//System.out.println("------------------查询所有电影----------");
		List<Movie> list=adi.getMovieLike(searchMovie);
		//System.out.println(list);
		return list;
	}
	
	@RequestMapping("/deleMovie")
	@ResponseBody
	public List<Movie> deleMovie(@RequestParam(value="movieId")int movieId) {
		//System.out.println("删除用户");
		adi.DeleteMovie(movieId);
		List<Movie> list=adi.getMovieLike("");
		return list;
	}
	
	@RequestMapping("/getMovieById")
	@ResponseBody
	public Movie getMovieById(int movieId) {
		//System.out.println("查询所有用户");
		Movie movie=adi.getMovieById(movieId);
		//System.out.println("11111111111111111111111111111111111111"+user);
		return movie;
}
	
	//修改电影信息
	@RequestMapping(value="updateMovie",method=RequestMethod.POST)
	public void updateMovie(Movie movie,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		//System.out.println("修改用户信息");
		adi.UpdateMovie(movie);
		/*List<Movie> list=adi.getMovieLike("");
		request.setAttribute("list", list);*/
		request.setAttribute("op", "movie");
		
		request.getRequestDispatcher("/adminShow.jsp").forward(request, response);
	}
	
	//增加电影信息
	@RequestMapping(value="getAddMovie",method=RequestMethod.POST)
	public void getAddMovie(Movie movie,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		//System.out.println("修改用户信息");
		adi.AddMovie(movie);
		request.setAttribute("op", "addmovie");
		request.getRequestDispatcher("/adminShow.jsp").forward(request, response);
	}
	
	
	
	//查询电影类型
	@RequestMapping("/Type")
	@ResponseBody
	public List<Type> Type(){
		List<Type> list=adi.getAllType();
		return list;
	} 
	//删除电影类型
	@RequestMapping("/deleType")
	@ResponseBody
	public List<Type> deleType(int typeId){
		adi.DeleteType(typeId);
		List<Type> list=adi.getAllType();
		return list;
	}
	
	//id查电影类型
	@RequestMapping("/getTypeById")
	@ResponseBody
	public Type getTypeById(int typeId){
		
		Type type=adi.getTypeById(typeId);
		return type;
	}
	
	//修改电影类型
	@RequestMapping("/updaType")
	public void updaType(Type type,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		adi.UpdateType(type);
		List<Type> list=adi.getAllType();
		request.setAttribute("list", list);
		request.setAttribute("op", "type");
		request.getRequestDispatcher("/adminShow.jsp").forward(request, response);
	}
	
	//修改电影类型
	@RequestMapping("/getAddType")
	public void getAddType(Type type,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		adi.AddType(type);
		request.setAttribute("op", "addtype");
		request.getRequestDispatcher("/adminShow.jsp").forward(request, response);
	}
	
	
	//查询地区类型
	@RequestMapping("/Area")
	@ResponseBody
	public List<Area> Area(){
		List<Area> list=adi.getAllArea();
		return list;
	} 
	//删除地区
	@RequestMapping("/deleArea")
	@ResponseBody
	public List<Area> deleArea(int areaId){
		adi.DeleteArea(areaId);
		List<Area> list=adi.getAllArea();
		return list;
	}
	
	//id查地区
	@RequestMapping("/getAreaById")
	@ResponseBody
	public Area getAreaById(int areaId){
		
		Area area=adi.getAreaById(areaId);
		return area;
	}
	
	//修改地区
	@RequestMapping("/updaArea")
	public void updaArea(Area area,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		adi.UpdateArea(area);
		List<Area> list=adi.getAllArea();
		request.setAttribute("list", list);
		request.setAttribute("op", "area");
		request.getRequestDispatcher("/adminShow.jsp").forward(request, response);
	}
	
	//增加地区
	@RequestMapping("/getAddArea")
	public void getAddArea(Area area,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		adi.AddArea(area);
		request.setAttribute("op", "addarea");
		request.getRequestDispatcher("/adminShow.jsp").forward(request, response);
	}
	
	//查询演员
	@RequestMapping("/Actor")
	@ResponseBody
	public List<Actor> Actor(@RequestParam(value="searchActor",defaultValue="")String searchActor){
		List<Actor> list=adi.getActorLike(searchActor);
		return list;
	} 
	//删除演员
	@RequestMapping("/deleActor")
	@ResponseBody
	public List<Actor> deleActor(int actorId){
		adi.DeleteActor(actorId);
		List<Actor> list=adi.getActorLike("");
		return list;
	}
	
	//id查演员
	@RequestMapping("/getActorById")
	@ResponseBody
	public Actor getActorById(int actorId){
		
		Actor actor=adi.getActorById(actorId);
		return actor;
	}
	
	//修改演员
	@RequestMapping("/updaActor")
	public void updaActor(Actor actor,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		adi.UpdateActor(actor);
		List<Actor> list=adi.getActorLike("");
		request.setAttribute("list", list);
		request.setAttribute("op", "actor");
		request.getRequestDispatcher("/adminShow.jsp").forward(request, response);
	}
	
	//增加演员
	@RequestMapping("/getAddActor")
	public void getAddActor(Actor actor,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		adi.AddActor(actor);
		request.setAttribute("op", "addactor");
		request.getRequestDispatcher("/adminShow.jsp").forward(request, response);
	}
	
	//查询导演
	@RequestMapping("/Director")
	@ResponseBody
	public List<Director> Director(@RequestParam(value="searchDirector",defaultValue="")String searchDirector){
		List<Director> list=adi.getDirectorLike(searchDirector);
		return list;
	} 
	//删除导演
	@RequestMapping("/deleteDirector")
	@ResponseBody
	public List<Director> deleDirector(int directorId){
		adi.DeleteDirector(directorId);
		List<Director> list=adi.getDirectorLike("");
		return list;
	}
	
	//id查导演
	@RequestMapping("/getDirectorById")
	@ResponseBody
	public Director getDirectorById(int directorId){
		
		Director director=adi.getDirectorById(directorId);
		return director;
	}
	
	//修改导演
	@RequestMapping("/updaDirector")
	public void updaDirector(Director director,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		adi.UpdateDirector(director);
		List<Director> list=adi.getDirectorLike("");
		request.setAttribute("list", list);
		request.setAttribute("op", "director");
		request.getRequestDispatcher("/adminShow.jsp").forward(request, response);
	}
	
	//增加导演
	@RequestMapping("/getAddDirector")
	public void getAddDirector(Director director,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		adi.AddDirector(director);
		request.setAttribute("op", "adddirector");
		request.getRequestDispatcher("/adminShow.jsp").forward(request, response);
	}
	
	//查询留言
	@RequestMapping("/Comment")
	@ResponseBody
	public List<Comment> Comment(){
		List<Comment> list=adi.getAllComment();
		return list;
	} 
	//根据电影名模糊查询查询留言
	@RequestMapping("/CommentByMovie")
	@ResponseBody
	public List<Comment> CommentByMovie(@RequestParam(value="searchByMovie",defaultValue="")String searchByMovie){
		List<Comment> list=adi.getCommentByMovie(searchByMovie);
		return list;
	}
	
	//删除留言
	@RequestMapping("/deleComment")
	@ResponseBody
	public List<Comment> deleComment(int commentId){
		adi.DeleteComment(commentId);
		List<Comment> list=adi.getCommentByMovie("");
		return list;
	}
}
