package com.etc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.etc.entity.Area;
import com.etc.entity.Movie;
import com.etc.entity.Type;

@Repository
public interface IGenresDao {

	//查询全部电影类型
	public List<Type> selectType();
	
	
	//查询全部地区
	public List<Area> selectArea();
	
	
	//根据电影类型查询电影
	public List<Movie> selectMovieByType(int typeId);
	
	
	//根据电影类型查询电影
	public List<Movie> selectMovieByTypePage(int typeId,int num);
	
	
	//根据地区查询电影
	public List<Movie> selectMovieByArea(int areaId);
	
	
	//多条件查询电影
	public List<Movie> selectMovieByMore(@Param("typeId")int typeId,@Param("areaId")int areaId,@Param("datetime")String datetime,@Param("movieStatus")int movieStatus);
	
	
	//根据电影名，演员名、导演名查询电影
	public List<Movie> selectMovie(String movieName);
}
