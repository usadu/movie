package com.etc.service;


import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.dao.PlayerMapper;
import com.etc.entity.Comment;
import com.etc.entity.Danmu;
import com.etc.entity.Movie;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class PlayerServiceImpl {
	@Resource
	PlayerMapper dao;
	public List<Danmu> getAllDm(int mid){
		List<Danmu> list = dao.getAllDm(mid);
		return list;
	}
	
	public void addDm(Danmu danmu) {
		dao.addDm(danmu);
	}
	
	public Movie getMovie(int mid) {
		Movie movie=dao.getMovie(mid);
		return movie;
	}
	
	public PageInfo<Comment> getComment(int mid,int pageNo,int pageSize) throws ParseException {
		PageHelper.startPage(pageNo,pageSize);
		
		List<Comment> list=dao.getComment(mid);
		for (Comment comment : list) {
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			java.util.Date date= df.parse(comment.getCommentTime());
			String Datetime  = df.format(date);
			comment.setCommentTime(Datetime);;

		}
		PageInfo<Comment> pageInfo=new PageInfo<>(list);
		return pageInfo;
	}
	public int addComment(Comment comment) {
		
		return dao.addComment(comment);
		
	}
	public List<Movie> getMovies(){
		return dao.getMovies();
		
	}
}
