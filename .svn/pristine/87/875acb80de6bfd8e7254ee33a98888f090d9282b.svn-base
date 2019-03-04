<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="ch">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="一部电影管理系统">
        <meta name="keywords" content="一部电影管理系统 ">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <meta name="format-detection" content="telephone=no">
        <title>一部电影管理系统</title>
        <script src="${pageContext.request.contextPath}/dist/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/dist/js/bootstrap.min.js"></script>
        <link href="${pageContext.request.contextPath }/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
		<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css" media="all" />
		<link href="${pageContext.request.contextPath }/css/medile.css" rel='stylesheet' type='text/css' />
		<link href="${pageContext.request.contextPath }/css/single.css" rel='stylesheet' type='text/css' />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/contactstyle.css" type="text/css" media="all" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/faqstyle.css" type="text/css" media="all" />
		<!-- news-css -->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/news-css/news.css" type="text/css" media="all" />
		<!-- //news-css -->
		<!-- list-css -->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/list-css/list.css" type="text/css" media="all" />
		<!-- //list-css -->
		<!-- font-awesome icons -->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome.min.css" />
		        <script>
            $(function() {
                $(".meun-item").click(function() {
                    $(".meun-item").removeClass("meun-item-active");
                    $(this).addClass("meun-item-active");
                    var itmeObj = $(".meun-item").find("img");
                    itmeObj.each(function() {
                        var items = $(this).attr("src");
                        items = items.replace("_grey.png", ".png");
                        items = items.replace(".png", "_grey.png")
                        $(this).attr("src", items);
                    });
                    var attrObj = $(this).find("img").attr("src");
                    ;
                    attrObj = attrObj.replace("_grey.png", ".png");
                    $(this).find("img").attr("src", attrObj);
                });
                $("#topAD").click(function() {
                    $("#topA").toggleClass(" glyphicon-triangle-right");
                    $("#topA").toggleClass(" glyphicon-triangle-bottom");
                });
                $("#topBD").click(function() {
                    $("#topB").toggleClass(" glyphicon-triangle-right");
                    $("#topB").toggleClass(" glyphicon-triangle-bottom");
                });
                $("#topCD").click(function() {
                    $("#topC").toggleClass(" glyphicon-triangle-right");
                    $("#topC").toggleClass(" glyphicon-triangle-bottom");
                });
                $(".toggle-btn").click(function() {
                    $("#leftMeun").toggleClass("show");
                    $("#rightContent").toggleClass("pd0px");
                })
            });
        </script>
<!-- <script type="text/javascript">
//进页面获取管理员信息
	var aid=${admin.adminId};
	var aname=${admin.adminName};
	var apwd=${admin.adminPwd};
	$("#adminId").val(aid);
	$("#adminName").val(aname);
	$("#adminPwd").val(apwd);
</script> -->
<!-- 用户管理 -->
<script type="text/javascript">
       $(function(){
    	   
    	   
	   	//遍历用户信息
    	   var searchUser="";
    	   ShowUser(searchUser);
    	   //调用ShowUser
    	    $("#users").click(function(){
    	    	ShowUser(searchUser);
    	 	});
    	   
    	   function ShowUser(searchUser){
    		 //发送ajax请求进行遍历用户
    		 $.ajax({
   	 	 			 url:"${pageContext.request.contextPath }/adminController/user",
   	 	 			 type:"POST",
   	 	 			 data:{searchUser:searchUser},
   	 	 			 dataType:"json",
   	 	 			 success:function(data){
   	 	 				 //显示数据
   	 	 				 $("#content_title").html('<div class="col-xs-1">头像</div><div class="col-xs-1">用户名</div><div class="col-xs-1">密码</div><div class="col-xs-1">昵称</div><div class="col-xs-1">性别</div><div class="col-xs-1">等级</div><div class="col-xs-3" style="text-align:center">VIP时间</div></div><div class="col-xs-3">操作</div>'
   	  	 	         ); 
   	 	 				 $("#addBtn").html('<button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addUser" style="float:right;margin-top:20px;margin-right:800px;front-size:30px;" >添加用户</button>');
   	 	 				$("#showMessage").empty();
   	 	 				for (var i = 0; i < data.length; i++) {
   	 	 				$("#showMessage").append('<div class="row"><div class="col-xs-1"><img src="'+data[i].userImg+'" style="height:64px;width:64px;border-radius:50% 50%;border:1px solid gray;"/></div><div class="col-xs-1">'+
   	 	 									data[i].userName+'</div><div class="col-xs-1">'+
   	 	 									data[i].userPwd+'</div><div class="col-xs-1">'+
   	 	 									data[i].userNickname+'</div><div class="col-xs-1">'+
   	 	 									data[i].userSex+'</div><div class="col-xs-1">'+
   	 	 									data[i].userStatus+'</div><div class="col-xs-3">'+
   	 	 									data[i].vipTime+
   	 	 									'</div><div class="col-xs-3"><a href="javascript:void(0)" title="'+data[i].userId+'" data-toggle="modal" data-target="#update"  class="updataUser">修改</a>&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" class="deleteUsers" title="'+data[i].userId+'">删除</a></div>'
   	 	 									);
   	 	 				}
   	 	 				$("#exf_title").html("用户列表");
	   	 	 			$("#searchFrom").html('<input type="text" class="searchUser" id="searchUser" name="searchUser" placeholder="搜索用户" style="hight:30px"/>'+
	                    	'<input type="button" id="searchUser_btn" value="搜索"/>');
				
   	 	 				//删除用户
   	 	 			    deleteUser();
   	 	 				//修改用户信息
   	 	 				updateUser();
   	 	 				/* updateUser(); */
   	 	 				search_user();
   	 	 			 }  
   	 	 		  });
    	   }
    	   //模糊查询调用显示用户方法
    	   function search_user(){
    		   $("#searchUser_btn").click(function(){
    			   searchUser=$("#searchUser").val();
    			   ShowUser(searchUser);
        	   });
    	   }
    	   
 		  
       
       //删除用户按钮的点击事件
      function  deleteUser(){
    		$(".deleteUsers").on("click",function(){
	 				 var aobj=$(this);
	 				 var userId=aobj.prop("title");//获取title属性的值,其实就是userid
	 			  if(confirm("是否确定删除?")){
	 			  $.ajax({
	 	 			 url:"${pageContext.request.contextPath }/adminController/deleteUser",
	 	 			 type:"GET",
	 	 			 data:{userId:userId},
	 	 			 dataType:"json",
	 	 			 success:function(data){
	 	 				 //显示数据
	 	 				 $("#content_title").html('<div class="col-xs-1">用户名</div><div class="col-xs-2">密码</div><div class="col-xs-1">昵称</div><div class="col-xs-1">昵称</div><div class="col-xs-2">等级</div><div class="col-xs-3">VIP时间</div></div><div class="col-xs-2">操作</div>'
	  	 	         ); 
   	 	 				 $("#addBtn").html('<button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addUser" style="float:right;margin-top:20px;margin-right:800px;front-size:30px;" >添加用户</button>');

	 	 				$("#showMessage").empty();
	 	 				for (var i = 0; i < data.length; i++) {
	 	 					$("#showMessage").append('<div class="row"><div class="col-xs-1"><img src="'+data[i].userImg+'" style="height:64px;width:64px;border-radius:50% 50%;border:1px solid gray;"/></div><div class="col-xs-1">'+
	 									data[i].userName+'</div><div class="col-xs-1">'+
	 									data[i].userPwd+'</div><div class="col-xs-1">'+
	 									data[i].userNickname+'</div><div class="col-xs-1">'+
	 									data[i].userSex+'</div><div class="col-xs-1">'+
	 									data[i].userStatus+'</div><div class="col-xs-3">'+
	 									data[i].vipTime+
	 									'</div><div class="col-xs-3"><a href="javascript:void(0)" title="'+data[i].userId+'" data-toggle="modal" data-target="#update"  class="updataUser">修改</a>&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" class="deleteUsers" title="'+data[i].userId+'">删除</a></div>'
	 									);
	 	 				};
	 	 				$("#exf_title").html("用户列表");
	 	 				$("#searchFrom").html('<input type="text" class="searchUser" id="searchUser" name="searchUser" placeholder="搜索用户" style="hight:30px"/>'+
	 	 						'<input type="button" id="searchUser_btn" value="搜索"/>');
	 	 				
	 	 				deleteUser();
	 	 				//修改用户信息
	  	 	 			updateUser();
	 	 				
	  	 	 			search_user();
	 	 			 }  
	 	 		  });
	 			  };
	 			 });
       	}
    
    //修改用户信息
  	function updateUser(){
  		$(".updataUser").on("click",function(){
  			var userId=$(this).attr("title");
  			//alert(userId);
  			//点击通过id查询用户信息显示在模态框里
  			$.ajax({
  				url:"${pageContext.request.contextPath }/adminController/getUserById",
  				type:"POST",
	 			data:{userId:userId},
	 			dataType:"json",
	 			success:function(data){
	 				//alert(data);
	 				$("#userId").val(data.userId);
	 				$("#userImg").val(data.userImg);
	 				$("#userName").val(data.userName);
	 				$("#userPwd").val(data.userPwd);
	 				$("#userNickname").val(data.userNickname);
	 				$("#userSex").val(data.userSex);
	 				$("#userStatus").val(data.userStatus);
	 				$("#vipTime").val(data.vipTime);
	 				alert(data.vipTime)
	 			}
  			});
  		});
  	}
    
    //判断op值，刷新操作页面
    var op='${requestScope.op}';
    //alert(op);
    if("user"==op || "adduser"==op || "updaadmin"==op){
    	//调用ShowUser
 	    ShowUser();
    }
 		
});     
      
</script>

<!-- <script type="text/javascript">

$(function(){
	
	var searchMovie="";
	
	function pageByMovie(pageNum) {
		var searchMovie=$("#searchMovie").text();
		$.ajax({url:"${pageContext.request.contextPath }/adminController/Movie",
			type:"GET",
			dataType:"json",
			data:{searchMovie:searchMovie,pageNum:pageNum},
			success:function(data) {
				
				ShowMovie(data);
			}
		});
	};



	//调用ShowMovie
	$("#movieManage").click(function(){
		//alert("ddd");
		pageByMovie(1);
		});

	function ShowMovie(data) {
		//alert("进入显示1");
		var mydata=data.list;
		var page = "";
		var info = "";
		$("#content_title").html('<div class="col-xs-12"></div>');
		$("#addBtn").html('<button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#getAddMovie" style="float:right;margin-top:20px;margin-right:800px;front-size:30px;" >添加影片</button>');
		$("#showMessage").empty();
		//alert(mydata);
		$.each(mydata, function (i,movie) {
			//alert(movie.movieName);
			//alert(movie.movieStatus);
			if(movie.movieStatus==0){
				info +='<div class="col-md-2 w3l-movie-gride-agile"><a href="javascript:void(0)" class="hvr-shutter-out-horizontal">'+
						'<img src="'+movie.movieImg+'" title="电影海报" alt="电影海报" />'+
						'<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div></a>'+
						'<div class="mid-1"><div class=""><h6><a href="javascript:void(0)">'+movie.movieName+'</a></h6></div>'+
						'<div class="mid-2" style="margin-left:30px"><p><a href="javascript:void(0)" title="'+movie.movieId+'" class="updateMovie"  data-toggle="modal" data-target="#updateMovie">修改</a>&nbsp;&nbsp;&nbsp;</p><div class="mid-2" style="float:right; margin-right:30px"><p><a href="javascript:void(0)" title="'+movie.movieId+'" class="deleMovie">删除</a></p>'+
						'<div class="clearfix"></div></div></div><div class="ribben" style="margin-left:40px"><p>免费</p></div></div>';
						
			}else{
				info +='<div class="col-md-2 w3l-movie-gride-agile"><a href="javascript:void(0)" class="hvr-shutter-out-horizontal">'+
						'<img src="'+movie.movieImg+'" title="电影海报" alt="电影海报" />'+
						'<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div></a>'+
						'<div class="mid-1"><div class=""><h6><a href="javascript:void(0)">'+movie.movieName+'</a></h6></div>'+
						'<div class="mid-2" style="margin-left:30px"><p><a href="javascript:void(0)" title="'+movie.movieId+'" class="updateMovie"  data-toggle="modal" data-target="#updateMovie">修改</a>&nbsp;&nbsp;&nbsp;</p><div class="mid-2" style="float:right; margin-right:30px"><p><a href="javascript:void(0)" title="'+movie.movieId+'" class="deleMovie">删除</a></p>'+
						'<div class="clearfix"></div></div></div><div class="ribben" style="margin-left:40px"><p>VIP</p></div></div>';
			}
		});
		
			$("#exf_title").html("影片列表");
			$("#searchFrom").html('<input type="text" class="searchMovie" id="searchMovie" name="searchMovie" placeholder="搜索影片" style="hight:30px"/>'+
		 							'<input type="button" id="searchMovie_btn" value="搜索"/>');

			//删除用户
		    deleMovie();
			//修改用户信息
			updateMovie();
			search_movie();
		
		for (var i = 1; i <= data.pages; i++) {
	   		if (i==data.pageNum) {
	   			page+='<li class="page-item"><a  class="page-link text-dark zyx-page text-color" style="color:white" href="javascript:pageByMovie('+i+')">'+i+'</a></li>';
			}else{
				page+='<li class="page-item"><a  class="page-link text-dark" href="javascript:pageByMovie('+i+')">'+i+'</a></li>';
			}
		};
		var nextPage=Number(data.pageNum)+Number(1);
	   	var prePage=Number(data.pageNum)-Number(1);
	   	if (parseInt(nextPage)>parseInt(data.pages)) {
	   		nextPage=Number(data.pageNum);
		};
		if (parseInt(prePage)<=parseInt(0)) {
			prePage=Number(data.pageNum);
		};{
			
		}
		alert()
		$("#showMessage").html(info);
		
		$("#showPage").html('<li class="page-item"><a  class="page-link text-dark" href="javascript:pageByMovie(1)">首页</a></li>'
							+'<li class="page-item"><a  class="page-link text-dark" href="javascript:pageByMovie('+prePage+')">上一页</a></li>'+ page 
							+'<li class="page-item"><a  class="page-link text-dark" href="javascript:pageByMovie('+nextPage+')">下一页</a></li>'
							+'<li class="page-item"><a  class="page-link text-dark" href="javascript:pageByMovie('+data.pages+')">末页</a></li>');
	}

});

</script> -->



<!-- 影片管理 -->
<script type="text/javascript">

	$(function(){

		
	   var searchMovie="";
	   
	   //调用ShowMovie
	    $("#movieManage").click(function(){
	    	//alert("ddd");
	    	ShowMovie(searchMovie);
	 	});
	   
	   function ShowMovie(searchMovie){
		 //发送ajax请求进行遍历用户
		 $.ajax({
 	 			 url:"${pageContext.request.contextPath }/adminController/Movie",
 	 			 type:"POST",
 	 			 data:{searchMovie:searchMovie},
 	 			 dataType:"json",
 	 			 success:function(data){
	 	 				 //alert(data);
 	 				 //显示数据
 	 				$("#content_title").html('<div class="col-xs-12"></div>');
	 	 			$("#addBtn").html('<button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#getAddMovie" style="float:right;margin-top:20px;margin-right:800px;front-size:30px;" >添加影片</button>');
 	 				$("#showMessage").empty();
 	 				for (var i = 0; i < data.length; i++) {
 	 					if(data[i].movieStatus==1){
 	 						$("#showMessage").append('<div class="col-md-2 w3l-movie-gride-agile"><a href="javascript:void(0)" class="hvr-shutter-out-horizontal">'+
 		 	 						'<img src="'+data[i].movieImg+'" title="电影海报" alt="电影海报" />'+
 		 	 						'<div class="w3l-action-icon"></div></a>'+
 		 	 						'<div class="mid-1"><div class=""><h6><a href="javascript:void(0)">'+data[i].movieName+'</a></h6></div>'+
 		 	 						'<div class="mid-2" style="margin-left:30px"><p><a href="javascript:void(0)" title="'+data[i].movieId+'" class="updateMovie"  data-toggle="modal" data-target="#updateMovie">修改</a>&nbsp;&nbsp;&nbsp;</p><div class="mid-2" style="float:right; margin-right:30px"><p><a href="javascript:void(0)" title="'+data[i].movieId+'" class="deleMovie">删除</a></p>'+
 		 	 						'<div class="clearfix"></div></div></div><div class="ribben" style="margin-left:40px"><p>VIP</p></div></div>'
 		 	 						);
 	 					}else{
 	 						$("#showMessage").append('<div class="col-md-2 w3l-movie-gride-agile"><a href="javascript:void(0)" class="hvr-shutter-out-horizontal">'+
 		 	 						'<img src="'+data[i].movieImg+'" title="电影海报" alt="电影海报" />'+
 		 	 						'<div class="w3l-action-icon"></div></a>'+
 		 	 						'<div class="mid-1"><div class=""><h6><a href="javascript:void(0)">'+data[i].movieName+'</a></h6></div>'+
 		 	 						'<div class="mid-2" style="margin-left:30px"><p><a href="javascript:void(0)" title="'+data[i].movieId+'" class="updateMovie"  data-toggle="modal" data-target="#updateMovie">修改</a>&nbsp;&nbsp;&nbsp;</p><div class="mid-2" style="float:right; margin-right:30px"><p><a href="javascript:void(0)" title="'+data[i].movieId+'" class="deleMovie">删除</a></p>'+
 		 	 						'<div class="clearfix"></div></div></div><div class="ribben" style="margin-left:40px"><p>免费</p></div></div>'
 		 	 						);
 	 					}
	 	 				
 	 				}
 	 				$("#exf_title").html("影片列表");
	 	 			$("#searchFrom").html('<input type="text" class="searchMovie" id="searchMovie" name="searchMovie" placeholder="搜索影片" style="hight:30px"/>'+
                 	'<input type="button" id="searchMovie_btn" value="搜索"/>');
			
 	 				//删除用户
 	 			    deleMovie();
 	 				//修改用户信息
 	 				updateMovie();
 	 				search_movie();
 	 			 }  
 	 		  });
	   }
		//模糊查询调用显示电影方法
	   function search_movie(){
		   $("#searchMovie_btn").click(function(){
			   searchMovie=$("#searchMovie").val();
			   ShowMovie(searchMovie);
    	   });
	   }
		
	 //删除电影按钮的点击事件
	      function  deleMovie(){
	    		$(".deleMovie").on("click",function(){
		 				 var aobj=$(this);
		 				 var movieId=aobj.prop("title");//获取title属性的值,其实就是movieid
		 			  if(confirm("是否确定删除?")){
		 			  $.ajax({
		 	 			 url:"${pageContext.request.contextPath }/adminController/deleMovie",
		 	 			 type:"POST",
		 	 			 data:{movieId:movieId},
		 	 			 dataType:"json",
		 	 			 success:function(data){
		 	 				//显示数据
		 	 				$("#content_title").html('<div class="col-xs-12"></div>');
			 	 			$("#addBtn").html('<button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#getAddMovie" style="float:right;margin-top:20px;margin-right:800px;front-size:30px;" >添加影片</button>');
		 	 				$("#showMessage").empty();
		 	 				for (var i = 0; i < data.length; i++) {
		 	 					if(data[i].movieStatus==1){
		 	 						$("#showMessage").append('<div class="col-md-2 w3l-movie-gride-agile"><a href="javascript:void(0)" class="hvr-shutter-out-horizontal">'+
		 		 	 						'<img src="'+data[i].movieImg+'" title="电影海报" alt="电影海报" />'+
		 		 	 						'<div class="w3l-action-icon"></div></a>'+
		 		 	 						'<div class="mid-1"><div class=""><h6><a href="javascript:void(0)">'+data[i].movieName+'</a></h6></div>'+
		 		 	 						'<div class="mid-2" style="margin-left:30px"><p><a href="javascript:void(0)" title="'+data[i].movieId+'" class="updateMovie"  data-toggle="modal" data-target="#updateMovie">修改</a>&nbsp;&nbsp;&nbsp;</p><div class="mid-2" style="float:right; margin-right:30px"><p><a href="javascript:void(0)" title="'+data[i].movieId+'" class="deleMovie">删除</a></p>'+
		 		 	 						'<div class="clearfix"></div></div></div><div class="ribben" style="margin-left:40px"><p>VIP</p></div></div>'
		 		 	 						);
		 	 					}else{
		 	 						$("#showMessage").append('<div class="col-md-2 w3l-movie-gride-agile"><a href="javascript:void(0)" class="hvr-shutter-out-horizontal">'+
		 		 	 						'<img src="'+data[i].movieImg+'" title="电影海报" alt="电影海报" />'+
		 		 	 						'<div class="w3l-action-icon"></div></a>'+
		 		 	 						'<div class="mid-1"><div class=""><h6><a href="javascript:void(0)">'+data[i].movieName+'</a></h6></div>'+
		 		 	 						'<div class="mid-2" style="margin-left:30px"><p><a href="javascript:void(0)" title="'+data[i].movieId+'" class="updateMovie"  data-toggle="modal" data-target="#updateMovie">修改</a>&nbsp;&nbsp;&nbsp;</p><div class="mid-2" style="float:right; margin-right:30px"><p><a href="javascript:void(0)" title="'+data[i].movieId+'" class="deleMovie">删除</a></p>'+
		 		 	 						'<div class="clearfix"></div></div></div><div class="ribben" style="margin-left:40px"><p>免费</p></div></div>'
		 		 	 						);
		 	 					}
			 	 				
		 	 				}
		 	 				$("#exf_title").html("影片列表");
			 	 			$("#searchFrom").html('<input type="text" class="searchMovie" id="searchMovie" name="searchMovie" placeholder="搜索影片" style="hight:30px"/>'+
		                 	'<input type="button" id="searchMovie_btn" value="搜索"/>');
					
		 	 				//删除用户
		 	 			    deleMovie();
		 	 				//修改用户信息
		 	 				updateMovie();
		 	 				search_movie();
		 	 			 }  
		 	 		  });
		 			  };
		 			 });
	       	}
	    
	    //修改电影信息
	  	function updateMovie(){
	  		$(".updateMovie").on("click",function(){
	  			var movieId=$(this).attr("title");
	  			//alert(movieId);
	  			//点击通过id查询用户信息显示在模态框里
	  			$.ajax({
	  				url:"${pageContext.request.contextPath }/adminController/getMovieById",
	  				type:"POST",
		 			data:{movieId:movieId},
		 			dataType:"json",
		 			success:function(data){
		 				//alert(data);
		 				$("#movieId").val(data.movieId);
		 				$("#movieName").val(data.movieName);
		 				$("#directorId").val(data.directorId);
		 				$("#typeId").val(data.typeId);
		 				$("#datetime").val(data.datetime);
		 				$("#movieScore").val(data.movieScore);
		 				$("#movieIntroduction").val(data.movieIntroduction);
		 				$("#movieImg").val(data.movieImg);
		 				$("#movieTime").val(data.movieTime);
		 				$("#movieStatus").val(data.movieStatus);
		 				$("#areaId").val(data.areaId);
		 				$("#movieUrl").val(data.movieUrl);
		 			}
	  			});
	  		});
	  	}
	   
	    //判断op值，刷新操作页面
	    var op='${requestScope.op}';
	    //alert(op);
	    if("movie"==op || "addmovie"==op){
	    	//调用ShowUser
	 	    ShowMovie(searchMovie);
	    }
	    
	    
	});     
</script>
<!-- 类型管理 -->
<script type="text/javascript">
	$(function(){
		
		$("#typeManage").click(function(){
			//alert("ddd");
			ShowType();
			
		});
		//显示类型
		function ShowType(){
			$.ajax({
				url:"${pageContext.request.contextPath }/adminController/Type",
  				type:"POST",
	 			dataType:"json",
	 			success:function(data){
	 				//alert(data);
	 				//显示数据
	 				$("#addBtn").html('<button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#getAddType" style="float:right;margin-top:20px;margin-right:800px;front-size:30px;" >添加影片类型</button>');

 	 				$("#content_title").html('<div class="col-xs-4">类型id</div><div class="col-xs-4">类型</div><div class="col-xs-4">操作</div>'); 
 	 				$("#showMessage").empty();
 	 				for (var i = 0; i < data.length; i++) {
 	 				$("#showMessage").append('<div class="row"><div class="col-xs-4">'+data[i].typeId+'</div>'+
 	 										 '<div class="col-xs-4">'+data[i].typeName+'</div>'+
 	 										 '<div class="col-xs-4"><a href="javascript:void(0)" title="'+data[i].typeId+'" style="display:inline-block" data-toggle="modal" data-target="#updateType"  class="updateType">修改</a>&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" style="display:inline-block" class="deleteType" title="'+data[i].typeId+'">删除</a></div>'
 	 									);
 	 				}
 	 				$("#exf_title").html("类型列表");
 	 				$("#searchFrom").html("");
 	 				//删除类型
 	 			    deleteType();
 	 				//修改类型信息
 	 				updateType();
	 			}
			});
		}
		
		//删除类型
		function deleteType(){
			$(".deleteType").on("click",function(){
				var typeId=$(this).attr("title");
				if(confirm("是否确定删除?")){
					$.ajax({
			 			 url:"${pageContext.request.contextPath }/adminController/deleType",
			 			 type:"POST",
			 			 data:{typeId:typeId},
			 			 dataType:"json",
			 			 success:function(data){
			 				//显示数据
			 					$("#addBtn").html('<button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#getAddType" style="float:right;margin-top:20px;margin-right:800px;front-size:30px;" >添加影片类型</button>');

			 	 				$("#content_title").html('<div class="col-xs-4">类型id</div><div class="col-xs-4">类型</div><div class="col-xs-4">操作</div>'); 
			 	 				$("#showMessage").empty();
			 	 				for (var i = 0; i < data.length; i++) {
			 	 				$("#showMessage").append('<div class="row"><div class="col-xs-4">'+data[i].typeId+'</div>'+
			 	 										 '<div class="col-xs-4">'+data[i].typeName+'</div>'+
			 	 										 '<div class="col-xs-4"><a href="javascript:void(0)" title="'+data[i].typeId+'" style="display:inline-block" data-toggle="modal" data-target="#updateType"  class="updateType">修改</a>&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" style="display:inline-block" class="deleteType" title="'+data[i].typeId+'">删除</a></div>'
			 	 									);
			 	 				}
			 	 				$("#exf_title").html("类型列表");
			 	 				$("#searchFrom").html("");
			 	 				//删除类型
			 	 			    deleteType();
			 	 				//修改类型信息
			 	 				updateType();
			 			}
					});
				}
			});
		} 
		
		
		//修改类型
		function updateType(){
	  		$(".updateType").on("click",function(){
	  			var typeId=$(this).attr("title");
	  			//点击通过id查询类型信息显示在模态框里
	  			$.ajax({
	  				url:"${pageContext.request.contextPath }/adminController/getTypeById",
	  				type:"POST",
		 			data:{typeId:typeId},
		 			dataType:"json",
		 			success:function(data){
		 				//alert(data);
		 				$("#type_Id").val(data.typeId);
		 				$("#type_Name").val(data.typeName);
		 				
		 			}
	  			});
	  		});
	  	}
	   
	    //判断op值，刷新操作页面
	    var op='${requestScope.op}';
	    //alert(op);
	    if("type"==op || "addtype"==op){
	    	//调用ShowUser
	 	    ShowType();
	    }
	});


</script>

<!-- 地区管理 -->
<script type="text/javascript">
	$(function(){
		
		$("#areaManage").click(function(){
			//alert("ddd");
			ShowArea();
			
		});
		//显示类型
		function ShowArea(){
			$.ajax({
				url:"${pageContext.request.contextPath }/adminController/Area",
  				type:"POST",
	 			dataType:"json",
	 			success:function(data){
	 				//alert(data);
	 				//显示数据
	 				$("#addBtn").html('<button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#getAddArea" style="float:right;margin-top:20px;margin-right:800px;front-size:30px;" >添加地区</button>');

 	 				$("#content_title").html('<div class="col-xs-3">地区id</div><div class="col-xs-3">地区</div><div class="col-xs-3">语言</div><div class="col-xs-3">操作</div>'); 
 	 				$("#showMessage").empty();
 	 				for (var i = 0; i < data.length; i++) {
 	 				$("#showMessage").append('<div class="row"><div class="col-xs-3">'+data[i].areaId+'</div>'+
 	 										 '<div class="col-xs-3">'+data[i].areaName+'</div>'+
 	 										 '<div class="col-xs-3">'+data[i].areaLanuage+'</div>'+
 	 										 '<div class="col-xs-3"><a href="javascript:void(0)" title="'+data[i].areaId+'" style="display:inline-block" data-toggle="modal" data-target="#updateArea"  class="updateArea">修改</a>&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" style="display:inline-block" class="deleteArea" title="'+data[i].areaId+'">删除</a></div>'
 	 									);
 	 				}
 	 				$("#exf_title").html("地区列表");
 	 				$("#searchFrom").html("");
 	 				//删除类型
 	 			    deleteArea();
 	 				//修改类型信息
 	 				updateArea();
	 			}
			});
		}
		
		//删除类型
		function deleteArea(){
			$(".deleteArea").on("click",function(){
				var areaId=$(this).attr("title");
				if(confirm("是否确定删除?")){
					$.ajax({
			 			 url:"${pageContext.request.contextPath }/adminController/deleArea",
			 			 type:"POST",
			 			 data:{areaId:areaId},
			 			 dataType:"json",
			 			 success:function(data){
			 				//显示数据
			 				$("#addBtn").html('<button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#getAddArea" style="float:right;margin-top:20px;margin-right:800px;front-size:30px;" >添加地区</button>');

			 				$("#content_title").html('<div class="col-xs-3">地区id</div><div class="col-xs-3">地区</div><div class="col-xs-3">语言</div><div class="col-xs-3">操作</div>'); 
		 	 				$("#showMessage").empty();
		 	 				for (var i = 0; i < data.length; i++) {
		 	 				$("#showMessage").append('<div class="row"><div class="col-xs-3">'+data[i].areaId+'</div>'+
		 	 										 '<div class="col-xs-3">'+data[i].areaName+'</div>'+
		 	 										 '<div class="col-xs-3">'+data[i].areaLanuage+'</div>'+
		 	 										 '<div class="col-xs-3"><a href="javascript:void(0)" title="'+data[i].areaId+'" style="display:inline-block" data-toggle="modal" data-target="#updateArea"  class="updateArea">修改</a>&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" style="display:inline-block" class="deleteArea" title="'+data[i].areaId+'">删除</a></div>'
		 	 									);
		 	 				}
		 	 				$("#exf_title").html("地区列表");
		 	 				$("#searchFrom").html("");
		 	 				//删除类型
		 	 			    deleteArea();
		 	 				//修改类型信息
		 	 				updateArea();
			 			}
					});
				}
			});
		} 
		
		
		//修改地区
		function updateArea(){
	  		$(".updateArea").on("click",function(){
	  			var areaId=$(this).attr("title");
	  			//点击通过id查询类型信息显示在模态框里
	  			$.ajax({
	  				url:"${pageContext.request.contextPath }/adminController/getAreaById",
	  				type:"POST",
		 			data:{areaId:areaId},
		 			dataType:"json",
		 			success:function(data){
		 				//alert(data);
		 				$("#area_Id").val(data.areaId);
		 				$("#area_Name").val(data.areaName);
		 				$("#area_Lanuage").val(data.areaLanuage);
		 			}
	  			});
	  		});
	  	}
	   
	    //判断op值，刷新操作页面
	    var op='${requestScope.op}';
	    //alert(op);
	    if("area"==op || "addarea"==op){
	    	//调用ShowUser
	 	    ShowArea();
	    }
	});


</script>

<!-- 演员管理 -->
<script type="text/javascript">
	$(function(){
		var searchActor="";
		$("#actorManage").click(function(){
			//alert("ddd");
			ShowActor(searchActor);
			
		});
		//显示类型
		function ShowActor(searchActor){
			$.ajax({
				url:"${pageContext.request.contextPath }/adminController/Actor",
  				type:"POST",
  				data:{searchActor:searchActor},
	 			dataType:"json",
	 			success:function(data){
	 				//alert(data);
	 				//显示数据
		 			$("#addBtn").html('<button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#getAddActor" style="float:right;margin-top:20px;margin-right:800px;front-size:30px;" >添加演员</button>');
 				
	 				$("#content_title").html('<div class="col-xs-12"></div>'); 
  	 				$("#showMessage").empty();
  	 				for (var i = 0; i < data.length; i++) {
 	 	 				$("#showMessage").append('<div class="col-md-2 w3l-movie-gride-agile">'+
 	 	 						'<img src="'+data[i].actorImg+'" title="" alt=""  style="width:180px;height:236px"/>'+
 	 	 						'<div class="mid-1"><div class=""><h6>'+data[i].actorName+'</h6></div>'+
 	 	 						'<div class="mid-2" style="margin-left:30px"><p><a href="javascript:void(0)" title="'+data[i].actorId+'" class="updateActor" data-toggle="modal" data-target="#updateActor">修改信息</a></p><div class="mid-2" style="float:right;margin-right:30px"><p><a href="javascript:void(0)" title="'+data[i].actorId+'" class="deleteActor">删除</a></p>'
 	 	 						);
  	 				}
  	 				$("#exf_title").html("演员列表");
 	 	 			$("#searchFrom").html('<input type="text" class="searchActor" id="searchActor" name="searchActor" placeholder="搜索演员" style="hight:30px"/>'+
                  						  '<input type="button" id="searchActor_btn" value="搜索"/>');
 			
 	 	 			//删除演员
 	 			    deleteActor();
 	 				//修改演员信息
 	 				updateActor();
  	 				search_actor();
	 			}
			});
		}
		
		//模糊查询调用显示电影方法
	   function search_actor(){
		   $("#searchActor_btn").click(function(){
			   searchActor=$("#searchActor").val();
			   ShowActor(searchActor);
    	   });
	   }
		
		//删除类型
		function deleteActor(){
			$(".deleteActor").on("click",function(){
				var actorId=$(this).attr("title");
				//alert(actorId);
				if(confirm("是否确定删除?")){
					$.ajax({
			 			 url:"${pageContext.request.contextPath }/adminController/deleActor",
			 			 type:"POST",
			 			 data:{actorId:actorId},
			 			 dataType:"json",
			 			 success:function(data){
			 				//显示数据
			 				$("#addBtn").html('<button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#getAddActor" style="float:right;margin-top:20px;margin-right:800px;front-size:30px;" >添加演员</button>');

			 				$("#content_title").html('<div class="col-xs-12"></div>'); 
		  	 				$("#showMessage").empty();
		  	 				for (var i = 0; i < data.length; i++) {
		  	 					$("#showMessage").append('<div class="col-md-2 w3l-movie-gride-agile">'+
		 	 	 						'<img src="'+data[i].actorImg+'" title="" alt=""  style="width:180px;height:236px"/>'+
		 	 	 						'<div class="mid-1"><div class=""><h6>'+data[i].actorName+'</h6></div>'+
		 	 	 						'<div class="mid-2" style="margin-left:30px"><p><a href="javascript:void(0)" title="'+data[i].actorId+'" class="updateActor" data-toggle="modal" data-target="#updateActor">修改信息</a></p><div class="mid-2" style="float:right;margin-right:30px"><p><a href="javascript:void(0)" title="'+data[i].actorId+'" class="deleteActor">删除</a></p>'
		 	 	 						);
		  	 				}
		  	 				$("#exf_title").html("演员列表");
		 	 	 			$("#searchFrom").html('<input type="text" class="searchActor" id="searchActor" name="searchActor" placeholder="搜索演员" style="hight:30px"/>'+
		                  						  '<input type="button" id="searchActor_btn" value="搜索"/>');
		 			
		 	 	 			//删除演员
		 	 			    deleteActor();
		 	 				//修改演员信息
		 	 				updateActor();
		  	 				search_actor();
			 			}
					});
				}
			});
		} 
		
		
		//修改演员
		function updateActor(){
	  		$(".updateActor").on("click",function(){
	  			var actorId=$(this).attr("title");
	  			//alert(actorId);
	  			//点击通过id查询类型信息显示在模态框里
	  			$.ajax({
	  				url:"${pageContext.request.contextPath }/adminController/getActorById",
	  				type:"POST",
		 			data:{actorId:actorId},
		 			dataType:"json",
		 			success:function(data){
		 				//alert(data);
		 				$("#actor_Id").val(data.actorId);
		 				$("#actor_Name").val(data.actorName);
		 				$("#actor_Img").val(data.actorImg);
		 			}
	  			});
	  		});
	  	}
	   
	    //判断op值，刷新操作页面
	    var op='${requestScope.op}';
	    //alert(op);
	    if("actor"==op || "addactor"==op){
	    	//调用ShowActor
	 	    ShowActor();
	    }
	});


</script>


<!-- 导演管理 -->
<script type="text/javascript">
	$(function(){
		var searchDirector="";
		$("#directorManage").click(function(){
			//alert("ddd");
			ShowDirector(searchDirector);
			
		});
		//显示导演
		function ShowDirector(searchDirector){
			$.ajax({
				url:"${pageContext.request.contextPath }/adminController/Director",
  				type:"POST",
  				data:{searchDirector:searchDirector},
	 			dataType:"json",
	 			success:function(data){
	 				//alert(data);
	 				//显示数据
	 				$("#addBtn").html('<button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#getAddDirector" style="float:right;margin-top:20px;margin-right:800px;front-size:30px;" >添加导演</button>');

	 				$("#content_title").html('<div class="col-xs-12"></div>'); 
  	 				$("#showMessage").empty();
  	 				for (var i = 0; i < data.length; i++) {
  	 					$("#showMessage").append('<div class="col-md-2 w3l-movie-gride-agile">'+
 	 	 						'<img src="'+data[i].directorImg+'" title="" alt=""  style="width:180px;height:236px"/>'+
 	 	 						'<div class="mid-1"><div class=""><h6>'+data[i].directorName+'</h6></div>'+
 	 	 						'<div class="mid-2" style="margin-left:30px"><p><a href="javascript:void(0)" title="'+data[i].directorId+'" class="updateDirector" data-toggle="modal" data-target="#updateDirector">修改信息</a></p><div class="mid-2" style="float:right;margin-right:30px"><p><a href="javascript:void(0)" title="'+data[i].directorId+'" class="deleDirector">删除</a></p>'
 	 	 						);
  	 				}
  	 				$("#exf_title").html("导演列表");
 	 	 			$("#searchFrom").html('<input type="text" class="searchDirector" id="searchDirector" name="searchDirector" placeholder="搜索导演" style="hight:30px"/>'+
                  						  '<input type="button" id="searchDirector_btn" value="搜索"/>');
 			
 	 	 			//删除导演
 	 			    deleteDirector(); 
 	 				//修改导演信息
 	 				updateDirector();
  	 				search_director();
	 			}
			});
		}
		
		//模糊查询调用显示导演
	   function search_director(){
		   $("#searchDirector_btn").click(function(){
			   searchDirector=$("#searchDirector").val();
			   ShowDirector(searchDirector);
    	   });
	   }
		
		//删除导演
		function deleteDirector(){
			$(".deleDirector").on("click",function(){
				var directorId=$(this).attr("title");
				//alert(directorId);
				if(confirm("是否确定删除?")){
					$.ajax({
			 			 url:"${pageContext.request.contextPath }/adminController/deleteDirector",
			 			 type:"POST",
			 			 data:{directorId:directorId},
			 			 dataType:"json",
			 			 success:function(data){
			 				//显示数据
			 				$("#addBtn").html('<button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#getAddDirector" style="float:right;margin-top:20px;margin-right:800px;front-size:30px;" >添加导演</button>');

			 				$("#content_title").html('<div class="col-xs-12"></div>'); 
		  	 				$("#showMessage").empty();
		  	 				for (var i = 0; i < data.length; i++) {
		  	 					$("#showMessage").append('<div class="col-md-2 w3l-movie-gride-agile">'+
		 	 	 						'<img src="'+data[i].directorImg+'" title="" alt=""  style="width:180px;height:236px"/>'+
		 	 	 						'<div class="mid-1"><div class=""><h6>'+data[i].directorName+'</h6></div>'+
		 	 	 						'<div class="mid-2" style="margin-left:30px"><p><a href="javascript:void(0)" title="'+data[i].directorId+'" class="updateDirector" data-toggle="modal" data-target="#updateDirector">修改信息</a></p><div class="mid-2" style="float:right;margin-right:30px"><p><a href="javascript:void(0)" title="'+data[i].directorId+'" class="deleDirector">删除</a></p>'
		 	 	 						);
		  	 				}
		  	 				$("#exf_title").html("导演列表");
		 	 	 			$("#searchFrom").html('<input type="text" class="searchDirector" id="searchDirector" name="searchDirector" placeholder="搜索导演" style="hight:30px"/>'+
		                  	'<input type="button" id="searchDirector_btn" value="搜索"/>');
		 			
		 	 	 			//删除导演
		 	 			    deleteDirector();
		 	 				//修改导演信息
		 	 				updateDirector()
		  	 				search_Director();
			 			}
					});
				}
			});
		} 
		
		
		//修改导演
		function updateDirector(){
	  		$(".updateDirector").on("click",function(){
	  			var directorId=$(this).attr("title");
	  			//点击通过id查询导演信息显示在模态框里
	  			$.ajax({
	  				url:"${pageContext.request.contextPath }/adminController/getDirectorById",
	  				type:"POST",
		 			data:{directorId:directorId},
		 			dataType:"json",
		 			success:function(data){
		 				//alert(data);
		 				$("#director_Id").val(data.directorId);
		 				$("#director_Name").val(data.directorName);
		 				$("#director_Img").val(data.directorImg);
		 			}
	  			});
	  		});
	  	}
	   
	    //判断op值，刷新操作页面
	    var op='${requestScope.op}';
	    //alert(op);
	    if("director"==op || "adddirector"==op){
	    	//调用ShowActor
	 	    ShowDirector("");
	    }
	});


</script>

<!-- 评论管理 -->

<!-- <script type="text/javascript">
	$(function(){
		
		var searchByMovie="";
		
		$("#commentManage").click(function(){
			
			ShowComment("");
		});
		//显示类型
		function ShowComment(searchByMovie){
			$("#addBtn").html('');
			var searchByMovie=$("#searchByMovie").text();
			$.ajax({
				url:"${pageContext.request.contextPath }/adminController/CommentByMovie",
  				type:"POST",
  				data:{movieName:movieName},
	 			dataType:"json",
	 			success:function(data){
	 				//alert(data);
	 				//显示数据
 					$("#content_title").html('<div class="col-xs-1">评论id</div><div class="col-xs-1">用户昵称</div><div class="col-xs-1">电影名</div><div class="col-xs-4">评论内容</div><div class="col-xs-3">评论时间</div><div class="col-xs-2">操作</div>'); 
 	 				$("#showMessage").empty();
 	 				$.each(data,function(i,comment){
	 					
 	 				$("#showMessage").append('<div class="row"><div class="col-xs-1">'+comment.commentId+'</div>'+
 	 										 '<div class="col-xs-1">'+comment.userNickname+'</div>'+
 	 										 '<div class="col-xs-1">'+comment.movieName+'</div>'+
 	 										 '<div class="col-xs-4">'+comment.commentContent+'</div>'+
 	 										 '<div class="col-xs-3">'+comment.commentTime+'</div>'+
 	 										 '<div class="col-xs-2"><a href="javascript:void(0)" style="display:inline-block" class="deleComment" title="'+comment.commentId+'">删除</a></div>'
 	 									);
 	 				
 	 				});
 	 				$("#exf_title").html("留言列表");
 	 				$("#searchFrom").html('<input type="text" class="searchByMovie" id="searchByMovie" name="searchByMovie" placeholder="搜索电影" style="hight:30px"/>'+
                  	'<input type="button" id="searchByMovie_btn" value="搜索"/>');
 	 				//删除类型
 	 			    deleteComment();
 	 				
 	 			  	searchByMovie();
	 			}
			});
		}
		
		//模糊查询调用显示留言
		   function searchByMovie(){
			   $("#searchByMovie_btn").click(function(){
				   searchByMovie=$("#searchByMovie").val();
				   alert(searchByMovie);
				   ShowComment(searchByMovie);
	    	   });
		   }
		
		//删除类型
		function deleteComment(){
			$(".deleComment").on("click",function(){
				var commentId=$(this).attr("title");
				if(confirm("是否确定删除?")){
					$.ajax({
			 			 url:"${pageContext.request.contextPath }/adminController/deleComment",
			 			 type:"POST",
			 			 data:{commentId:commentId},
			 			 dataType:"json",
			 			 success:function(data){
			 				//显示数据
			 				$("#content_title").html('<div class="col-xs-1">评论id</div><div class="col-xs-1">用户昵称</div><div class="col-xs-1">电影名</div><div class="col-xs-4">评论内容</div><div class="col-xs-3">评论时间</div><div class="col-xs-2">操作</div>'); 
		 	 				$("#showMessage").empty();
		 	 				$.each(data,function(i,comment){
			 					
		 	 				$("#showMessage").append('<div class="row"><div class="col-xs-1">'+comment.commentId+'</div>'+
		 	 										 '<div class="col-xs-1">'+comment.userNickname+'</div>'+
		 	 										 '<div class="col-xs-1">'+comment.movieName+'</div>'+
		 	 										 '<div class="col-xs-4">'+comment.commentContent+'</div>'+
		 	 										 '<div class="col-xs-3">'+comment.commentTime+'</div>'+
		 	 										 '<div class="col-xs-2"><a href="javascript:void(0)" style="display:inline-block" class="deleComment" title="'+comment.commentId+'">删除</a></div>'
		 	 									);
		 	 				
		 	 				});
		 	 				$("#exf_title").html("留言列表");
		 	 				$("#searchFrom").html('<input type="text" class="searchByMovie" id="searchByMovie" name="searchByMovie" placeholder="搜索电影" style="hight:30px"/>'+
		                  	'<input type="button" id="searchByMovie_btn" value="搜索"/>');
		 	 				//删除类型
		 	 			    deleteComment();
		 	 				
		 	 			  	searchByMovie();
			 			}
					});
				}
			});
		} 
	});
	
		
		
</script> -->



<!-- 评论管理 -->
<script type="text/javascript">
	$(function(){
		
		var searchByMovie="";
		
		$("#commentManage").click(function(){
			$("#addBtn").html('');
			ShowComment("");
		});
		//显示类型
		function ShowComment(searchByMovie){
			$.ajax({
				url:"${pageContext.request.contextPath }/adminController/CommentByMovie",
  				type:"POST",
  				data:{searchByMovie:searchByMovie},
	 			dataType:"json",
	 			success:function(data){
	 				//alert(data);
	 				//显示数据
					$("#content_title").html('<div class="col-xs-1">评论id</div><div class="col-xs-1">用户昵称</div><div class="col-xs-1">电影名</div><div class="col-xs-4">评论内容</div><div class="col-xs-3">评论时间</div><div class="col-xs-2">操作</div>');
	 				$("#showMessage").empty();
	 				$.each(data,function(i,comment){
	 	 				$("#showMessage").append('<div class="row"><div class="col-xs-1">'+comment.commentId+'</div>'+
	 	 										 '<div class="col-xs-1">'+comment.userNickname+'</div>'+
	 	 										 '<div class="col-xs-1">'+comment.movieName+'</div>'+
	 	 										 '<div class="col-xs-4">'+comment.commentContent+'</div>'+
	 	 										 '<div class="col-xs-3">'+comment.commentTime+'</div>'+
	 	 										 '<div class="col-xs-2"><a href="javascript:void(0)" style="display:inline-block" class="deleComment" title="'+comment.commentId+'">删除</a></div>'
	 	 									);
 	 				});
 	 				$("#exf_title").html("评论列表");
 	 				$("#searchFrom").html('<input type="text" class="searchByMovie" id="searchByMovie" name="searchByMovie" placeholder="搜索电影评论" style="hight:30px"/>'+
                  						'<input type="button" id="searchByMovie_btn" value="搜索"/>');
 	 				//删除类型
 	 			    deleteComment();
 	 				
 	 			    searchByMovieName();
	 			}
			});
		}
		
		//模糊查询调用显示留言
		   function searchByMovieName(){
			   $("#searchByMovie_btn").click(function(){
				   searchByMovie=$("#searchByMovie").val();
				   //alert(22);
				   ShowComment(searchByMovie);
	    	   });
		   }
		
		//删除类型
		function deleteComment(){
			$(".deleComment").on("click",function(){
				var commentId=$(this).attr("title");
				if(confirm("是否确定删除?")){
					$.ajax({
			 			 url:"${pageContext.request.contextPath }/adminController/deleComment",
			 			 type:"POST",
			 			 data:{commentId:commentId},
			 			 dataType:"json",
			 			 success:function(data){
			 				//显示数据
		 	 				$("#content_title").html('<div class="col-xs-1">评论id</div><div class="col-xs-1">用户昵称</div><div class="col-xs-1">电影名</div><div class="col-xs-4">评论内容</div><div class="col-xs-3">评论时间</div><div class="col-xs-2">操作</div>');
			 				$("#showMessage").empty();
			 				$.each(data,function(i,comment){
			 	 				$("#showMessage").append('<div class="row"><div class="col-xs-1">'+comment.commentId+'</div>'+
			 	 										 '<div class="col-xs-1">'+comment.userNickname+'</div>'+
			 	 										 '<div class="col-xs-1">'+comment.movieName+'</div>'+
			 	 										 '<div class="col-xs-4">'+comment.commentContent+'</div>'+
			 	 										 '<div class="col-xs-3">'+comment.commentTime+'</div>'+
			 	 										 '<div class="col-xs-2"><a href="javascript:void(0)" style="display:inline-block" class="deleComment" title="'+comment.commentId+'">删除</a></div>'
			 	 									);
		 	 				});
		 	 				$("#exf_title").html("评论列表");
		 	 				$("#searchFrom").html('<input type="text" class="searchByMovie" id="searchByMovie" name="searchByMovie" placeholder="搜索电影评论" style="hight:30px"/>'+
		                  						'<input type="button" id="searchByMovie_btn" value="搜索"/>');
		 	 				//删除类型
		 	 			    deleteComment();
		 	 				
		 	 			    searchByMovie();
			 			}
					});
				}
			});
		} 
	});
	
		
		
</script>

    <link href="${pageContext.request.contextPath}/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/css/common.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/css/slide.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/css/flat-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/css/jquery.nouislider.css">
    </head>

    <body>
        <div id="wrap">
            <!-- 左侧菜单栏目块 -->
            <div class="leftMeun" id="leftMeun">
                <div id="logoDiv">
                    <p id="logoP"><img id="logo" alt="" src="${pageContext.request.contextPath}/dist/images/logo.png"><span>一部电影管理系统</span></p>
                </div>
                <div id="personInfor">
                    <p id="AdminName">${admin.adminName}</p>
                    <p><span></span><a href="" target="_blank" title=""></a></p>
                    <p>
                        <a href="${pageContext.request.contextPath}/adminController/adminExit">退出登录</a>
                    </p>
                </div>
                <div class="meun-title">基本信息管理</div>
                <div class="meun-item" id="users" aria-controls="users" role="tab" data-toggle="tab"><img src="${pageContext.request.contextPath}/dist/images/icon_chara_grey.png">用户信息管理</div>
                <div class="meun-item" id="updateAdmin" aria-controls="chan" role="tab" data-toggle="tab"><img src="${pageContext.request.contextPath}/dist/images/icon_change_grey.png"><span  data-toggle="modal" data-target="#updaAdmin">管理员密码修改</span></div>
                <div class="meun-title">电影管理</div>
                <div class="meun-item" id="movieManage" aria-controls="scho" role="tab" data-toggle="tab"><img src="${pageContext.request.contextPath}/dist/images/icon_house_grey.png">影片信息管理</div>
                <div class="meun-item" id="typeManage" aria-controls="regu" role="tab" data-toggle="tab"><img src="${pageContext.request.contextPath}/dist/images/icon_rule_grey.png">类型信息管理</div>
                <div class="meun-item" id="areaManage" aria-controls="stud" role="tab" data-toggle="tab"><img src="${pageContext.request.contextPath}/dist/images/icon_card_grey.png">地区信息管理</div>
                <div class="meun-item" id="actorManage" aria-controls="sitt" role="tab" data-toggle="tab"><img src="${pageContext.request.contextPath}/dist/images/icon_char_grey.png">演员信息管理</div>                
                <div class="meun-item" id="directorManage" aria-controls="sitt" role="tab" data-toggle="tab"><img src="${pageContext.request.contextPath}/dist/images/icon_char_grey.png">导演信息管理</div>
                <div class="meun-item" id="commentManage" aria-controls="sitt" role="tab" data-toggle="tab"><img src="${pageContext.request.contextPath}/dist/images/icon_char_grey.png">评论信息管理</div>
                
                
            </div>
             <!-- 右侧具体内容栏目 -->
            <div id="rightContent">
                <a class="toggle-btn" id="nimei">
                    <i class="glyphicon glyphicon-align-justify"></i>
                </a>
                <!-- Tab panes -->
                <div class="tab-content">
                    <!-- 资源管理模块 -->
                    <div role="tabpanel" class="tab-pane active" id="sour">
                        <div class="check-div form-inline" id="addBtn">
                        <h4 class="sub-header ttop text-dark"  id="exf_title" style="float:left"></h4>
                        	
	                            <!-- <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addSource" style="float:right;margin-top:20px;margin-right:800px;front-size:30px;" >添加</button> -->
	                        
                        </div>
                        <form style="float:right;margin-right:10px;margin-top:-50px" id="searchFrom">
	                            
                            </form>
                        <div class="data-div">
                            <div class="row tableHeader" id="content_title">
                            
                            </div>
                            <div class="tablebody" id="showMessage">
                                
                            </div>
                            <div id="showPage"></div>
                            
                        </div>
                        
                        
                        
                        <%-- 管理员修改密码--模态框 --%>
                        <div class="modal fade"  role="dialog" aria-labelledby="gridSystemModalLabel" id="updaAdmin">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="gridSystemModalLabel">修改管理员密码</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <form class="form-horizontal" action="${pageContext.request.contextPath}/adminController/updaAdmin" method="post">
                                                
                                                <div class="form-group ">
                                                    <label for="userId" class="col-xs-3 control-label">管理员Id：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="adminId" name="adminId"  readonly="true" value="${admin.adminId}"/>
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="userName" class="col-xs-3 control-label">账号：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="adminName" name="adminName" readonly="true" value="${admin.adminName}"/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="userPwd" class="col-xs-3 control-label">密码：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="password" class="form-control input-sm duiqi" id="adminPwd" name="adminPwd" value="${admin.adminPwd}"/>
                                                    </div>
                                                </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                        <input type="submit" value="提交" >
                                    </div>
                                   </form>
                                        </div>
                                    </div>
                                  
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                      
                    </div>
                        

                        <%-- 用户修改--模态框 --%>
                        <div class="modal fade"  role="dialog" aria-labelledby="gridSystemModalLabel" id="update">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="gridSystemModalLabel">修改用户信息</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <form class="form-horizontal" action="${pageContext.request.contextPath}/adminController/updateUser" method="post">
                                                
                                                <div class="form-group ">
                                                    <label for="userId" class="col-xs-3 control-label">用户Id：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="userId" name="userId"  readonly="true" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="userImg" class="col-xs-3 control-label">头像：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="userImg" name="userImg" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="userName" class="col-xs-3 control-label">账号：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="userName" name="userName"  readonly="true" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="userPwd" class="col-xs-3 control-label">密码：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="password" class="form-control input-sm duiqi" id="userPwd" name="userPwd" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="userNickname" class="col-xs-3 control-label">昵称：</label>
                                                    <div class="col-xs-8">
                                                        <input type="text" class="form-control input-sm duiqi" id="userNickname" name="userNickname" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="userSex" class="col-xs-3 control-label">性别：</label>
                                                    <div class="col-xs-8">
                                                        <input type="text" class="form-control input-sm duiqi" id="userSex" name="userSex" value=""/>
														<datalist id="userSex">
															<option value="男">
															<option value="女">
														</datalist>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="userStatus" class="col-xs-3 control-label">用户等级：</label>
                                                    <div class="col-xs-8">
                                                        <input type="text" class="form-control input-sm duiqi" id="userStatus" name="userStatus" value=""/>
                                                        <datalist id="userStatus">
															<option value="0">
															<option value="1">
														</datalist>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="VIPTime" class="col-xs-3 control-label">VIP时间：</label>
                                                    <div class="col-xs-8">
                                                        <input type="date" class="form-control input-sm duiqi" id="vipTime" name="vipTime" value=""/>
                                                    </div>
                                                </div>
                                                  <div class="modal-footer">
                                        <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                        <input type="submit" value="提交" >
                                    </div>
                                   </form>
                                        </div>
                                    </div>
                                  
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                      
                        
                    </div>
                    
                    <%-- 用户--模态框 --%>
                        <div class="modal fade"  role="dialog" aria-labelledby="gridSystemModalLabel" id="addUser">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="gridSystemModalLabel">添加用户</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <form class="form-horizontal" action="${pageContext.request.contextPath}/adminController/addUser" method="post">
                                                <div class="form-group ">
                                                    <label for="userImg1" class="col-xs-3 control-label">头像：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="userImg1" name="userImg" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="userName1" class="col-xs-3 control-label">账号：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="userName1" name="userName" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="userPwd1" class="col-xs-3 control-label">密码：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="password" class="form-control input-sm duiqi" id="userPwd1" name="userPwd" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="userNickname1" class="col-xs-3 control-label">昵称：</label>
                                                    <div class="col-xs-8">
                                                        <input type="text" class="form-control input-sm duiqi" id="userNickname1" name="userNickname" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="userSex1" class="col-xs-3 control-label">性别：</label>
                                                    <div class="col-xs-8">
                                                        <input type="text" class="form-control input-sm duiqi" id="userSex1" name="userSex" value=""/>
                                                        <datalist id="userSex">
															<option value="男">
															<option value="女">
														</datalist>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="userStatus1" class="col-xs-3 control-label">用户等级：</label>
                                                    <div class="col-xs-8">
                                                        <input type="text" class="form-control input-sm duiqi" id="userStatus1" name="userStatus" value=""/>
                                                        <datalist id="userStatus">
															<option value="0">
															<option value="1">
														</datalist>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="vipTime1" class="col-xs-3 control-label">VIP时间：</label>
                                                    <div class="col-xs-8">
                                                        <input type="date" class="form-control input-sm duiqi" id="vipTime1" name="vipTime" value=""/>
                                                    </div>
                                                </div>
                                                  <div class="modal-footer">
                                        <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                        <input type="submit" value="提交" >
                                    </div>
                                   </form>
                                        </div>
                                    </div>
                                  
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                    
                    <%-- 影片修改--模态框 --%>
                        <div class="modal fade"  role="dialog" aria-labelledby="gridSystemModalLabel" id="updateMovie">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="gridSystemModalLabel">修改影片信息</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <form class="form-horizontal" action="${pageContext.request.contextPath}/adminController/updateMovie" method="post">
                                                <div class="form-group ">
                                                    <label for="movieId" class="col-xs-3 control-label">影片Id：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="movieId" name="movieId"  readonly="true" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="movieName" class="col-xs-3 control-label">片名：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="movieName" name="movieName" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="directorId" class="col-xs-3 control-label">导演id：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="directorId" name="directorId" value=""/>
                                                        
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="typeId" class="col-xs-3 control-label">类型id：</label>
                                                    <div class="col-xs-8">
                                                        <input type="text" class="form-control input-sm duiqi" id="typeId" name="typeId" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="datetime" class="col-xs-3 control-label">上映时间：</label>
                                                    <div class="col-xs-8">
                                                        <input type="date" class="form-control input-sm duiqi" id="datetime" name="datetime" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="movieScore" class="col-xs-3 control-label">评分：</label>
                                                    <div class="col-xs-8">
                                                        <input type="text" class="form-control input-sm duiqi" id="movieScore" name="movieScore" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="movieIntroduction" class="col-xs-3 control-label">简介：</label>
                                                    <div class="col-xs-8">
                                                        <textarea  class="form-control input-sm duiqi" id="movieIntroduction" name="movieIntroduction" value="" rows="5" cols="10"></textarea>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="movieImg" class="col-xs-3 control-label">海报路径：</label>
                                                    <div class="col-xs-8">
                                                        <input type="text" class="form-control input-sm duiqi" id="movieImg" name="movieImg" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="movieTime" class="col-xs-3 control-label">时长：</label>
                                                    <div class="col-xs-8">
                                                        <input type="text" class="form-control input-sm duiqi" id="movieTime" name="movieTime" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="movieStatus" class="col-xs-3 control-label">VIP状态：</label>
                                                    <div class="col-xs-8">
                                                        <input type="text" class="form-control input-sm duiqi" id="movieStatus" name="movieStatus" value=""/>
                                                        <datalist id="userStatus">
															<option value="0">
															<option value="1">
														</datalist>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="areaId" class="col-xs-3 control-label">地区id：</label>
                                                    <div class="col-xs-8">
                                                        <input type="text" class="form-control input-sm duiqi" id="areaId" name="areaId" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="movieUrl" class="col-xs-3 control-label">影片路径：</label>
                                                    <div class="col-xs-8">
                                                        <input type="text" class="form-control input-sm duiqi" id="movieUrl" name="movieUrl" value=""/>
                                                    </div>
                                                </div>
                                                  <div class="modal-footer">
                                        <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                        <input type="submit" value="提交" >
                                    </div>
                                   </form>
                                        </div>
                                    </div>
                                  
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                        
                        <%-- 增加影片--模态框 --%>
                        <div class="modal fade"  role="dialog" aria-labelledby="gridSystemModalLabel" id="getAddMovie">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="gridSystemModalLabel">增加影片</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <form class="form-horizontal" action="${pageContext.request.contextPath}/adminController/getAddMovie" method="post">
                                               
                                                <div class="form-group ">
                                                    <label for="movieName" class="col-xs-3 control-label">片名：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="movieName1" name="movieName" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="directorId" class="col-xs-3 control-label">导演id：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="directorId1" name="directorId" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="typeId" class="col-xs-3 control-label">类型id：</label>
                                                    <div class="col-xs-8">
                                                        <input type="text" class="form-control input-sm duiqi" id="typeId1" name="typeId" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="datetime" class="col-xs-3 control-label">上映时间：</label>
                                                    <div class="col-xs-8">
                                                        <input type="date" class="form-control input-sm duiqi" id="datetime1" name="datetime" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="movieScore" class="col-xs-3 control-label">评分：</label>
                                                    <div class="col-xs-8">
                                                        <input type="text" class="form-control input-sm duiqi" id="movieScore1" name="movieScore" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="movieIntroduction" class="col-xs-3 control-label">简介：</label>
                                                    <div class="col-xs-8">
                                                        <textarea  class="form-control input-sm duiqi" id="movieIntroduction1" name="movieIntroduction" value="" rows="5" cols="10"></textarea>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="movieImg" class="col-xs-3 control-label">海报路径：</label>
                                                    <div class="col-xs-8">
                                                        <input type="text" class="form-control input-sm duiqi" id="movieImg1" name="movieImg" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="movieTime" class="col-xs-3 control-label">时长：</label>
                                                    <div class="col-xs-8">
                                                        <input type="text" class="form-control input-sm duiqi" id="movieTime1" name="movieTime" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="movieStatus" class="col-xs-3 control-label">VIP状态：</label>
                                                    <div class="col-xs-8">
                                                        <input type="text" class="form-control input-sm duiqi" id="movieStatus1" name="movieStatus" value=""/>
                                                        <datalist id="userStatus">
															<option value="0">
															<option value="1">
														</datalist>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="areaId" class="col-xs-3 control-label">地区id：</label>
                                                    <div class="col-xs-8">
                                                        <input type="text" class="form-control input-sm duiqi" id="areaId1" name="areaId" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="movieUrl" class="col-xs-3 control-label">影片路径：</label>
                                                    <div class="col-xs-8">
                                                        <input type="text" class="form-control input-sm duiqi" id="movieUrl1" name="movieUrl" value=""/>
                                                    </div>
                                                </div>
                                                  <div class="modal-footer">
                                        <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                        <input type="submit" value="提交" >
                                    </div>
                                   </form>
                                        </div>
                                    </div>
                                  
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                        
                	<%-- 类型修改--模态框 --%>
                        <div class="modal fade"  role="dialog" aria-labelledby="gridSystemModalLabel" id="updateType">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="gridSystemModalLabel">修改类型信息</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <form class="form-horizontal" action="${pageContext.request.contextPath}/adminController/updaType" method="post">
                                                <div class="form-group ">
                                                    <label for="typeId" class="col-xs-3 control-label">用户Id：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="type_Id" name="typeId" readonly="true" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="typeName" class="col-xs-3 control-label">名称：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="type_Name" name="typeName" value=""/>
                                                    </div>
                                                </div>
                                                
                                                  <div class="modal-footer">
                                        <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                        <input type="submit" value="提交" >
                                    </div>
                                   </form>
                                        </div>
                                    </div>
                                  
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                      
                    </div>
                    
                    <%-- 增加类型--模态框 --%>
                        <div class="modal fade"  role="dialog" aria-labelledby="gridSystemModalLabel" id="getAddType">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="gridSystemModalLabel">增加类型</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <form class="form-horizontal" action="${pageContext.request.contextPath}/adminController/getAddType" method="post">
                                                
                                                <div class="form-group ">
                                                    <label for="typeName" class="col-xs-3 control-label">类型名称：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="type_Name1" name="typeName" value=""/>
                                                    </div>
                                                </div>
                                                
                                                  <div class="modal-footer">
                                        <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                        <input type="submit" value="提交" >
                                    </div>
                                   </form>
                                        </div>
                                    </div>
                                  
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                      
                    </div>
                    
                	<%-- 地区修改--模态框 --%>
                        <div class="modal fade"  role="dialog" aria-labelledby="gridSystemModalLabel" id="updateArea">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="gridSystemModalLabel">修改地区信息</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <form class="form-horizontal" action="${pageContext.request.contextPath}/adminController/updaArea" method="post">
                                                <div class="form-group ">
                                                    <label for="areaId" class="col-xs-3 control-label">地区Id：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="area_Id" name="areaId" readonly="true" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="areaName" class="col-xs-3 control-label">地区：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="area_Name" name="areaName" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="areaLanuage" class="col-xs-3 control-label">语言：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="area_Lanuage" name="areaLanuage" value=""/>
                                                    </div>
                                                </div>
                                                
                                                  <div class="modal-footer">
                                        <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                        <input type="submit" value="提交" >
                                    </div>
                                   </form>
                                        </div>
                                    </div>
                                  
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                      
                    </div>
                    
                    <%-- 地区修改--模态框 --%>
                        <div class="modal fade"  role="dialog" aria-labelledby="gridSystemModalLabel" id="getAddArea">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="gridSystemModalLabel">增加地区</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <form class="form-horizontal" action="${pageContext.request.contextPath}/adminController/getAddArea" method="post">
                                                
                                                <div class="form-group ">
                                                    <label for="areaName" class="col-xs-3 control-label">地区：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="area_Name1" name="areaName" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="areaLanuage" class="col-xs-3 control-label">语言：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="area_Lanuage1" name="areaLanuage" value=""/>
                                                    </div>
                                                </div>
                                                
                                                  <div class="modal-footer">
                                        <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                        <input type="submit" value="提交" >
                                    </div>
                                   </form>
                                        </div>
                                    </div>
                                  
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                      
                    </div>
                    
                    <%-- 演员修改--模态框 --%>
                        <div class="modal fade"  role="dialog" aria-labelledby="gridSystemModalLabel" id="updateActor">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="gridSystemModalLabel">修改演员信息</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <form class="form-horizontal" action="${pageContext.request.contextPath}/adminController/updaActor" method="post">
                                                <div class="form-group ">
                                                    <label for="actorId" class="col-xs-3 control-label">演员Id：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="actor_Id" name="actorId" readonly="true" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="actorName" class="col-xs-3 control-label">演员：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="actor_Name" name="actorName" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="actorImg" class="col-xs-3 control-label">照片路径：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="actor_Img" name="actorImg" value=""/>
                                                    </div>
                                                </div>
                                                
                                                  <div class="modal-footer">
                                        <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                        <input type="submit" value="提交" >
                                    </div>
                                   </form>
                                        </div>
                                    </div>
                                  
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                      
                    </div>
                    
                    <%-- 增加演员--模态框 --%>
                        <div class="modal fade"  role="dialog" aria-labelledby="gridSystemModalLabel" id="getAddActor">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="gridSystemModalLabel">增加演员</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <form class="form-horizontal" action="${pageContext.request.contextPath}/adminController/getAddActor" method="post">
                                                
                                                <div class="form-group ">
                                                    <label for="actorName" class="col-xs-3 control-label">演员：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="actor_Name1" name="actorName" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="actorImg" class="col-xs-3 control-label">照片路径：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="actor_Img1" name="actorImg" value=""/>
                                                    </div>
                                                </div>
                                                
                                                  <div class="modal-footer">
                                        <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                        <input type="submit" value="提交" >
                                    </div>
                                   </form>
                                        </div>
                                    </div>
                                  
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                      
                    </div>
                    
                    <%-- 导演修改--模态框 --%>
                        <div class="modal fade"  role="dialog" aria-labelledby="gridSystemModalLabel" id="updateDirector">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="gridSystemModalLabel">修改导演信息</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <form class="form-horizontal" action="${pageContext.request.contextPath}/adminController/updaDirector" method="post">
                                                <div class="form-group ">
                                                    <label for="directorId" class="col-xs-3 control-label">导演Id：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="director_Id" name="directorId" readonly="true" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="directorName" class="col-xs-3 control-label">导演：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="director_Name" name="directorName" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="directorImg" class="col-xs-3 control-label">照片路径：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="director_Img" name="directorImg" value=""/>
                                                    </div>
                                                </div>
                                                
                                                  <div class="modal-footer">
                                        <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                        <input type="submit" value="提交" >
                                    </div>
                                   </form>
                                        </div>
                                    </div>
                                  
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                      
                    </div>
                    
                    <%-- 增加导演--模态框 --%>
                        <div class="modal fade"  role="dialog" aria-labelledby="gridSystemModalLabel" id="getAddDirector">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="gridSystemModalLabel">增加导演信息</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <form class="form-horizontal" action="${pageContext.request.contextPath}/adminController/getAddDirector" method="post">
                                                
                                                <div class="form-group ">
                                                    <label for="directorName" class="col-xs-3 control-label">导演：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="director_Name1" name="directorName" value=""/>
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="directorImg" class="col-xs-3 control-label">照片路径：</label>
                                                    <div class="col-xs-8 ">
                                                        <input type="text" class="form-control input-sm duiqi" id="director_Img1" name="directorImg" value=""/>
                                                    </div>
                                                </div>
                                                
                                                  <div class="modal-footer">
                                        <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                        <input type="submit" value="提交" >
                                    </div>
                                   </form>
                                        </div>
                                    </div>
                                  
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                      
                    </div>
                    
     

            </div>
           

            </div>
        </div>

<script src="${pageContext.request.contextPath}/dist/js/jquery.nouislider.js"></script>

<!-- this page specific inline scripts -->
<script>
                                                //min/max slider
                                                function huadong(my, unit, def, max) {
                                                    $(my).noUiSlider({
                                                        range: [0, max],
                                                        start: [def],
                                                        handles: 1,
                                                        connect: 'upper',
                                                        slide: function() {
                                                            var val = Math.floor($(this).val());
                                                            $(this).find(".noUi-handle").text(
                                                                    val + unit
                                                                    );
                                                            console.log($(this).find(".noUi-handle").parent().parent().html());
                                                        },
                                                        set: function() {
                                                            var val = Math.floor($(this).val());
                                                            $(this).find(".noUi-handle").text(
                                                                    val + unit
                                                                    );
                                                        }
                                                    });
                                                    $(my).val(def, true);
                                                }
                                                huadong('.slider-minmax1', "分钟", "5", 30);
                                                huadong('.slider-minmax2', "分钟", "6", 15);
                                                huadong('.slider-minmax3', "分钟", "10", 60);
                                                huadong('.slider-minmax4', "次", "2", 10);
                                                huadong('.slider-minmax5', "天", "3", 7);
                                                huadong('.slider-minmax6', "天", "8", 10);
</script>
</body>

</html>