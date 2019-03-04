package com.etc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.etc.entity.Comment;
import com.etc.entity.Danmu;
import com.etc.entity.Movie;
@Repository
public interface PlayerMapper {
	//根据电影id获取弹幕数据
	public List<Danmu> getAllDm(int mid);
	//获取新输入弹幕添加到mysql
	public void addDm(Danmu danmu);
	//根据电影id获取电影数据
	public Movie getMovie(int mid);
	//根据电影id获取评论
	public List<Comment> getComment(int mid);
	//添加评论
	public int addComment(Comment comment);
	//查最新4部
	public List<Movie> getMovies();
}
