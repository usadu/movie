package com.etc.controller;

import java.text.ParseException;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.etc.entity.Comment;
import com.etc.entity.Danmu;
import com.etc.entity.Movie;
import com.etc.service.PlayerServiceImpl;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("playcon")
public class PlayerController {
	@Resource
	PlayerServiceImpl psi;
	
	
	@RequestMapping("danmu/{mid}")
	@ResponseBody
	public HashMap<String,Object> danmu(@PathVariable int mid) {
		//int id = Integer.parseInt(mid);
		List<Danmu> list=psi.getAllDm(mid);
		HashMap<String,Object> map=new HashMap<>();
		String mname=list.get(0).getMovieName();
		map.put("title", mname);
		map.put("data", list);
		map.put("class","game");
		
		return map;
		
	}
	
	@RequestMapping("cdanmu")
	@ResponseBody
	public HashMap<String,Object> cdanmu(HttpServletRequest request) {
		String word = request.getParameter("word1");
		String color = request.getParameter("color1");
		int speed = Integer.parseInt(request.getParameter("speed1"));
		int top = Integer.parseInt(request.getParameter("top1"));
		int fontSize = Integer.parseInt(request.getParameter("fontSize1"));
		String action = request.getParameter("action1");
		int time = Integer.parseInt(request.getParameter("time1"));
		int movieid=Integer.parseInt(request.getParameter("movieId"));
		Danmu dm=new Danmu(movieid,word,color,speed,top,fontSize,action,time);
		System.out.println(dm);
		psi.addDm(dm);
		return null;
		
	}
	
	@RequestMapping("cmovie/{mid}")
	@ResponseBody
	public Movie cmovie(@PathVariable int mid) {
		//int id = Integer.parseInt(mid);
		Movie movie=psi.getMovie(mid);
		 
		return movie;
		
	}
	
	@RequestMapping("comment/{mid}")
	@ResponseBody
	public  PageInfo<Comment> comment(@PathVariable int mid,@RequestParam(name="pageNo") int pageNo) throws ParseException {
		//int id = Integer.parseInt(mid);
		PageInfo<Comment> pageInfo=psi.getComment(mid,pageNo,3);
		return pageInfo;
		
	}
	@RequestMapping("addcomment")
	@ResponseBody
	public  int addcomment(Comment comment) {
		//int id = Integer.parseInt(mid);
		int a=psi.addComment(comment);
		return a;
		
	}
	@RequestMapping("getfour")
	@ResponseBody
	public  List<Movie> getfour() {
		//int id = Integer.parseInt(mid);
		List<Movie> list=psi.getMovies();
		return list;
	}
	
}
