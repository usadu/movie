package com.etc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.etc.dao.IGenresDao;
import com.etc.entity.Area;
import com.etc.entity.Movie;
import com.etc.entity.Type;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class GenresServiceImpl {

	@Autowired
	IGenresDao gd;
	
	//查询全部电影类型
	public List<Type> getAllType(){
		return gd.selectType();
	}
	
	
	//查询全部地区
	public List<Area> getAllArea(){
		return gd.selectArea();
	}
	
	//根据电影类型查询电影+分页
	public PageInfo<Movie> getMovieByType(int typeId,int pageNum){
		PageHelper.startPage(pageNum, 6);
		List<Movie> list=gd.selectMovieByType(typeId);
		PageInfo<Movie> pageinfo=new PageInfo<Movie>(list);
		return pageinfo;
	}
	
	
	//根据地区查询电影+分页
	public PageInfo<Movie> getMovieByArea(int areaId,int pageNum){
		PageHelper.startPage(pageNum, 6);
		List<Movie> list=gd.selectMovieByArea(areaId);
		PageInfo<Movie> pageinfo=new PageInfo<Movie>(list);
		return pageinfo;
	}
	
	//多条件查询电影+分页
	public PageInfo<Movie> getMovieByMore(int typeId,int areaId,String datetime,int movieStatus,int pageNum){
		PageHelper.startPage(pageNum, 6);
		List<Movie> list=gd.selectMovieByMore(typeId, areaId, datetime, movieStatus);
		PageInfo<Movie> pageinfo=new PageInfo<Movie>(list);
		return pageinfo;
	}
	
	//根据电影名，演员名、导演名查询电影
	public List<Movie> getMovie(String movieName){
		return gd.selectMovie(movieName);
		
	}
}
