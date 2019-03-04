package com.etc.dao;
import java.util.List;

import org.apache.ibatis.annotations.Param;
//XZW
import org.springframework.stereotype.Repository;

import com.etc.entity.Movie;

@Repository
public interface SelectMovieDao {
//轮播电影
	public List<Movie> queryAllMovies();
	
	//精选电影
	public List<Movie> selectionMovie();
	
	//热门观看
	public List<Movie> hotMovie();
	
	//评分最高
	public List<Movie> scoreMovie();
	
	//最近添加
	public List<Movie> newMovie();
	
	//查询电影名
	public List<Movie> queryMovieByLike(@Param("movieName")String movieName);
	
	//精选电影分页
	public List<Movie> selectionMovieByPage();
}
