package com.etc.service;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
//XZW
import org.springframework.stereotype.Service;

import com.etc.dao.SelectMovieDao;
import com.etc.entity.Movie;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class SelectMovieDaoImpl {
	@Autowired
	SelectMovieDao selectMovieDao; 
	//轮播电影
		public List<Movie> getQueryAllMovies(){
			return selectMovieDao.queryAllMovies();			
		}
		//精选电影
		public List<Movie> getSelectionMovie(){
			return selectMovieDao.selectionMovie();
		}
		//热门电影
		public List<Movie> getHotMovie(){
			return selectMovieDao.hotMovie();
		}
		//评分最高
		public List<Movie> getscoreMovie(){
			return selectMovieDao.scoreMovie();
		}
		//最近添加
		public List<Movie> getnewMovie(){
			return selectMovieDao.newMovie();
		}
		//模糊查询电影名
		public List<Movie> queryMovieByLike(@Param("movieName")String movieName){
			
			return selectMovieDao.queryMovieByLike(movieName);
		}
		
		//精选电影分页
		public PageInfo<Movie> getmovieByPage(int pageNum,int pageSize){
			PageHelper.startPage(pageNum,pageSize);
			  List<Movie> list=selectMovieDao.selectionMovieByPage();
			PageInfo<Movie> pagefo=new PageInfo<>(list);
			return pagefo;
			
	
		}
		
}
