package com.etc.controller;
import java.io.IOException;
//XZW
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.etc.entity.Movie;
import com.etc.service.SelectMovieDaoImpl;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/selectMovieController")

public class SelectMovieController {
   @Autowired
   SelectMovieDaoImpl smd;
   
   //主页电影轮播
   @RequestMapping("/selectmovie_ajax")
   @ResponseBody
   public List<Movie> selectmovie(){	  
	   List<Movie> list=smd.getQueryAllMovies();
	   return list;
   }
   
   
   //主页精选
   @RequestMapping("/selectiontmovie_ajax")
   @ResponseBody
   public List<Movie> selectiontmovie(){
	   List<Movie> list=smd.getSelectionMovie();
	   return list;
	   
   }
   //热门电影
   @RequestMapping("/selecthostmovie_ajax")
   @ResponseBody
   public List<Movie> selecthostmovie(){
	   List<Movie> list=smd.getHotMovie();
	   return list;
	   
   }
   //评分最高
   
   @RequestMapping("/selectscoremovie_ajax")
   @ResponseBody
   public List<Movie> electscoremovie(){
	   List<Movie> list=smd.getscoreMovie();
	   return list;
	   
   }
   
   //最近添加
   @RequestMapping("/selectnewmovie_ajax")
   @ResponseBody
   public List<Movie> electnewmovie(){
	   List<Movie> list=smd.getnewMovie();
	   return list;
	   
   }
   
   //精选电影分页
   @RequestMapping("/selectionMovieByPage")
   @ResponseBody
   public PageInfo<Movie> selectionMovieByPage(@RequestParam(value="pageNum",defaultValue="1")int pageNum,@RequestParam(value="pageSize",defaultValue="6")int pageSize){
	   PageInfo<Movie> pageinfo=smd.getmovieByPage(pageNum, pageSize);

	   return pageinfo;
   }
   
   
   /*//搜索电影
   @RequestMapping("/queryMovieByLike")
   public ModelAndView queryMovieByLike(String movieName,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
	   ModelAndView mv=new ModelAndView();
	   List<Movie> movieList=smd.queryMovieByLike(movieName);
	   mv.addObject("movieList",movieList);
	  mv.setViewName("forward:/genres.jsp");
	   return mv;
   }*/
  
}
