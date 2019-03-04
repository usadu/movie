package com.etc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.etc.entity.Area;
import com.etc.entity.Movie;
import com.etc.entity.Type;
import com.etc.service.GenresServiceImpl;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/Genres")
public class GenresController {

	@Autowired
	GenresServiceImpl gs;
	
	@RequestMapping("/AllType")
	@ResponseBody
	public List<Type> getType(){
		System.out.println("查询全部电影类型");
		List<Type> list=gs.getAllType();
		return list;
	}
	
	@RequestMapping("/AllArea")
	@ResponseBody
	public List<Area> getArea(){
		System.out.println("查询全部地区");
		List<Area> list=gs.getAllArea();
		System.out.println(list);
		return list;
	}
	
	@RequestMapping("MovieByType")
	@ResponseBody
	public PageInfo<Movie> ByType(@RequestParam("typeid")String typeid,@RequestParam(value="pageNum",defaultValue="1")int pageNum){
		int tid=Integer.parseInt(typeid);
		//System.out.println("类型id"+typeid);
		PageInfo<Movie> pageinfo=gs.getMovieByType(tid,pageNum);
		//System.out.println(list);
		return pageinfo;
	}
	
	@RequestMapping("MovieByArea")
	@ResponseBody
	public PageInfo<Movie> ByArea(@RequestParam("areaid")String areaid,@RequestParam(value="pageNum",defaultValue="1")int pageNum){
		int aid=Integer.parseInt(areaid);
		//System.out.println("diqid"+aid);
		PageInfo<Movie> pageinfo=gs.getMovieByArea(aid,pageNum);
		//System.out.println(list);
		return pageinfo;
	}
	
	@RequestMapping("searchMovieByMore")
	@ResponseBody
	public PageInfo<Movie> searchMovieByMore(@RequestParam("stype")int stype,@RequestParam("sarea")int sarea,@RequestParam("svip")int svip,@RequestParam("syear")String syear,@RequestParam(value="pageNum",defaultValue="1")int pageNum){
		PageInfo<Movie> pageinfo=gs.getMovieByMore(stype, sarea, syear, svip,pageNum);
		//System.out.println("------------------------------------------------------------------------------"+stype+sarea+syear+svip+pageNum);
		return pageinfo;
	}
	
	//搜索电影
   @RequestMapping("/queryMovieByLike")
   public ModelAndView queryMovieByLike(@RequestParam(value="movieName",defaultValue="")String movieName,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
	   ModelAndView mv=new ModelAndView();
	   List<Movie> movieList=gs.getMovie(movieName);
	   mv.addObject("movieList",movieList);
	   mv.setViewName("forward:/genres.jsp");
	   return mv;
   }
}
