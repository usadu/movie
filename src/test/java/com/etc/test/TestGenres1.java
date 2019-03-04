package com.etc.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.etc.entity.Area;
import com.etc.entity.Movie;
import com.etc.entity.Type;
import com.etc.service.GenresServiceImpl;

public class TestGenres1 {

		GenresServiceImpl gs;
		@Before
		public void getGenres() {
			@SuppressWarnings("resource")
			ApplicationContext context =new ClassPathXmlApplicationContext("applicationContext.xml");
		    gs=(GenresServiceImpl) context.getBean("genresServiceImpl");
		}
		@Test
		public void getTypes() {
			List<Type> list=gs.getAllType();
			for (Type type : list) {
				System.out.println(type);
			}
		}
		
		@Test
		public void getAreas() {
			List<Area> list=gs.getAllArea();
			for (Area area : list) {
				System.out.println(area);
			}
		}
		
		/*@Test
		public void getMovie1() {
			List<Movie> list=gs.getMovieByType(2);
			for (Movie movie : list) {
				System.out.println(movie);
			}
		}*/
		
		/*@Test
		public void getMovie2() {
			List<Movie> list=gs.getMovieByMore(2, 3, "2017", 1);
			for (Movie movie : list) {
				System.out.println(movie);
			}
		}*/

		@Test
		public void getMovie3() {
			List<Movie> list=gs.getMovie("极");
			for (Movie movie : list) {
				System.out.println(movie);
			}
		}

}
