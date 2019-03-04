package com.etc.test;
//XZW


import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.etc.entity.Movie;

import com.etc.service.SelectMovieDaoImpl;



public class TestSelectMovie {
    
	SelectMovieDaoImpl smd;
	@Before
	public void getMovie() {
		@SuppressWarnings("resource")
		ApplicationContext context =new ClassPathXmlApplicationContext("applicationContext.xml");
		smd=(SelectMovieDaoImpl) context.getBean("selectMovieDaoImpl");
	}
	@Test
	//轮播电影
	public void getAllMovie() {
		List<Movie> list=smd.getQueryAllMovies();
		for (Movie movie : list) {
			System.out.println(movie.toString());
		}
	}
	@Test
	//精选电影
	public void getselectionMoive() {
		List<Movie> list=smd.getSelectionMovie();
		for (Movie movie : list) {
			System.out.println(movie.toString());
		}
	}
        //热门电影
	@Test
	public void gethotMoive() {
		List<Movie> list=smd.getHotMovie();
		for (Movie movie : list) {
			System.out.println(movie.toString());
		}
	}
	
	//评分最高
	@Test
	public void getscoreMovie() {
		List<Movie> list=smd.getscoreMovie();
		for (Movie movie : list) {
			System.out.println(movie.toString());
		}
	}
	//最近添加
	@Test
	public void getnewMovie() {
		List<Movie> list=smd.getnewMovie();
		for (Movie movie : list) {
			System.out.println(movie.toString());
		}
	}
	@Test
	//模糊查询电影名
	public void getqueryMovieByLike() {
		List<Movie> list=smd.queryMovieByLike("极");
		for (Movie movie : list) {
			System.out.println(movie.toString());
		}
		
	}
}
