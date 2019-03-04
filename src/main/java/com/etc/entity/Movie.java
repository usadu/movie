package com.etc.entity;

import org.springframework.stereotype.Component;

@Component
public class Movie {
	private int movieId;
	private String movieName;
	private int directorId;
	private int typeId;
	private String datetime;
	private String movieScore;
	private String movieIntroduction;
	private String movieImg;
	private String movieTime;
	private int movieStatus;
	private int areaId;
	private String movieUrl;
	private String directorName;
	private String areaName;
	private String typeName;

	
	public String getAreaName() {
		return areaName;
	}

	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public Movie(int movieId, String movieName, int directorId, int typeId, String datetime, String movieScore,
			String movieIntroduction, String movieImg, String movieTime, int movieStatus, int areaId, String movieUrl) {
		super();
		this.movieId = movieId;
		this.movieName = movieName;
		this.directorId = directorId;
		this.typeId = typeId;
		this.datetime = datetime;
		this.movieScore = movieScore;
		this.movieIntroduction = movieIntroduction;
		this.movieImg = movieImg;
		this.movieTime = movieTime;
		this.movieStatus = movieStatus;
		this.areaId = areaId;
		this.movieUrl = movieUrl;
	}

	@Override
	public String toString() {
		return "Movie [movieId=" + movieId + ", movieName=" + movieName + ", directorId=" + directorId + ", typeId="
				+ typeId + ", datetime=" + datetime + ", movieScore=" + movieScore + ", movieIntroduction="
				+ movieIntroduction + ", movieImg=" + movieImg + ", movieTime=" + movieTime + ", movieStatus="
				+ movieStatus + ", areaId=" + areaId + ", movieUrl=" + movieUrl + "]";
	}

	
	
	public String getDirectorName() {
		return directorName;
	}

	public void setDirectorName(String directorName) {
		this.directorName = directorName;
	}

	public int getMovieId() {
		return movieId;
	}

	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}

	public String getMovieName() {
		return movieName;
	}

	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}

	public int getDirectorId() {
		return directorId;
	}

	public void setDirectorId(int directorId) {
		this.directorId = directorId;
	}

	public int getTypeId() {
		return typeId;
	}

	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}

	public String getDatetime() {
		return datetime;
	}

	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}

	public String getMovieScore() {
		return movieScore;
	}

	public void setMovieScore(String movieScore) {
		this.movieScore = movieScore;
	}

	public String getMovieIntroduction() {
		return movieIntroduction;
	}

	public void setMovieIntroduction(String movieIntroduction) {
		this.movieIntroduction = movieIntroduction;
	}

	public String getMovieImg() {
		return movieImg;
	}

	public void setMovieImg(String movieImg) {
		this.movieImg = movieImg;
	}

	public String getMovieTime() {
		return movieTime;
	}

	public void setMovieTime(String movieTime) {
		this.movieTime = movieTime;
	}

	public int getMovieStatus() {
		return movieStatus;
	}

	public void setMovieStatus(int movieStatus) {
		this.movieStatus = movieStatus;
	}

	public int getAreaId() {
		return areaId;
	}

	public void setAreaId(int areaId) {
		this.areaId = areaId;
	}

	public String getMovieUrl() {
		return movieUrl;
	}

	public void setMovieUrl(String movieUrl) {
		this.movieUrl = movieUrl;
	}

	public Movie() {
		// TODO Auto-generated constructor stub
	}

	public Movie(String movieName, int directorId, int typeId, String datetime, String movieScore,
			String movieIntroduction, String movieImg, String movieTime, int movieStatus, int areaId, String movieUrl) {
		super();
		this.movieName = movieName;
		this.directorId = directorId;
		this.typeId = typeId;
		this.datetime = datetime;
		this.movieScore = movieScore;
		this.movieIntroduction = movieIntroduction;
		this.movieImg = movieImg;
		this.movieTime = movieTime;
		this.movieStatus = movieStatus;
		this.areaId = areaId;
		this.movieUrl = movieUrl;
	}
	
	
	
	
}
