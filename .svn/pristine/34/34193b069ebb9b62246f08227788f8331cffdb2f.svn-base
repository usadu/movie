package com.etc.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.etc.entity.Admin;
import com.etc.entity.Area;
import com.etc.entity.Comment;
import com.etc.entity.Movie;
import com.etc.entity.Users;
import com.etc.service.AdminDaoImpl;
import com.github.pagehelper.PageInfo;

public class TestAdmin {
	AdminDaoImpl ad;
	@Before
	public void getAdmin() {
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		ad=(AdminDaoImpl) context.getBean("adminDaoImpl");
	}
	//管理员
	@Test
	public void getAllAdmin() {
		List<Admin> list=ad.getAllAdmin();
		for (Admin admin : list) {
			System.out.println(admin);
		}
	}
	@Test
	public void getAddAdmin() {
    Admin u=new Admin("李四","123");
	boolean flag=ad.AddAdmin(u);
	    System.out.println(flag);
	}
	@Test
	public void getDeleteadmin() {
	boolean flag=ad.DeleteAdmin(3);
	    System.out.println(flag);
	}
	@Test
	public void getUpdateAdmin() {
	Admin a=new Admin(2,"李四","1234");
	boolean flag=ad.UpdateAdmin(a);
	    System.out.println(flag);
	}
	//用户
	@Test
	public void getAllUsers() {
		List<Users> u=ad.getAllUsers();
		for (Users user : u) {
			System.out.println(user);
		}
	}
	@Test
	public void getaddUsers() {
		boolean flag=ad.getAddUser(new Users("aaa","dd","111","fff","a",1,"2019-02-02"));
		System.out.println(flag);
	}

	@Test
	public void getDeleteUsers() {
	boolean flag=ad.DeleteUsers(2);
	    System.out.println(flag);
	}
	@Test
	public void getUpdateUsers() {
    Users a=new Users(2,"李四","1234","李四","1234",2,"2018-10-01 10:10:10");
	boolean flag=ad.UpdateUser(a);
	    System.out.println(flag);
	}
	//电影
		@Test
		public void getAllMovie() {
			List<Movie> u=ad.getAllMovie();
			for (Movie movie : u) {
				System.out.println(movie);
			}
		}
		
		/*@Test
		public void getMovieLike() {
			PageInfo<Movie> pageInfo=ad.getMovieLike("",1);
			for (Movie movie : pageInfo.getList()) {
				System.out.println(movie);
			}
		}
*/
		@Test
		public void getDeleteMovie() {
		boolean flag=ad.DeleteMovie(3);
		    System.out.println(flag);
		}
		@Test
		public void getUpdateMovie() {
	    Movie a=new Movie(3,"wan5w",1234,1,"2018-10-01 10:10:10","wdw","wd","wd","wda",1,2,"wd");
		boolean flag=ad.UpdateMovie(a);
		    System.out.println(flag);
		}
		@Test
		public void getAddMovie() {
		Movie u=new Movie("李四",1234,1,"2018-10-01 10:10:10","wdw","wd","wd","wda",1,2,"wd");
		boolean flag=ad.AddMovie(u);
		    System.out.println(flag);
		}
		//地区
				@Test
				public void getAllArea() {
					List<Area> u=ad.getAllArea();
					for (Area area : u) {
						System.out.println(area);
					}
				}

				@Test
				public void getDeleteArea() {
				boolean flag=ad.DeleteArea(12);
				    System.out.println(flag);
				}
				@Test
				public void getUpdateArea() {
			    Area a=new Area(12,"韩国","韩语");
				boolean flag=ad.UpdateArea(a);
				    System.out.println(flag);
				}
				@Test
				public void getAddArea() {
					Area u=new Area("德国","德语");
				boolean flag=ad.AddArea(u);
				    System.out.println(flag);
				}
				//评论
				@Test
				public void getAllComment() {
					List<Comment> u=ad.getAllComment();
					for (Comment comment : u) {
						System.out.println(comment);
					}
				}
				
				@Test
				public void getCommentByLike() {
					List<Comment> u=ad.getCommentByMovie("");
					for (Comment comment : u) {
						System.out.println(comment);
					}
				}

				@Test
				public void getDeleteComment() {
				boolean flag=ad.DeleteComment(12);
				    System.out.println(flag);
				}
				@Test
				public void getUpdateComment() {
			    Area a=new Area(12,"韩国","韩语");
				boolean flag=ad.UpdateArea(a);
				    System.out.println(flag);
				}
				@Test
				public void getAddComment() {
					Area u=new Area("德国","德语");
				boolean flag=ad.AddArea(u);
				    System.out.println(flag);
				}
				@Test
				public void getAdminLogin() {
					
				     Admin admin=ad.getadminLogin("张三", "123");
				     System.out.println(admin);
				}

				
}