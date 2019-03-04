<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8" >
<title>CHINAZ</title>
<!-- 页面 -->
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
<!-- //font-awesome icons -->
<style type="text/css">


 .comment-emoji,#ccc {
    padding: 0;
    width: 66px;
    height: 24px;
    color: #99a2aa;
    border: 1px solid #e5e9ef;
    border-radius: 4px;
    position: relative;
    z-index: 101;
    font-size: 12px;
    text-align: center;
    line-height: 23px;
    margin-left: 86px;
    margin-top: 3px;
    cursor: pointer;
}
.emoji-box{
    font-size: 12px;
    font-family: Microsoft YaHei,Arial,Helvetica,sans-serif;
    color: #222;
    overflow: visible;
    background: #fff;
    border: 1px solid #ccd0d7;
    box-shadow: 0 1px 5px 0 rgba(0,0,0,.14);
    margin-top: -350px;
    margin-bottom: 10px;
    margin-left: 150px;
    border-radius: 4px;
    width: 386px;
    position: relative;
    top: 25px;
    z-index: 103;
}
.emoji-box .emoji-title {
    margin: 8px 18px 0;
    color: #99a2aa;
}
.emoji-box .emoji-wrap {
    margin: 4px 8px 8px;
    height: 152px;
    overflow: auto;
}
.emoji-box .emoji-tabs {
    position: relative;
    height: 38px;
    overflow: hidden;
    background-color: #f4f5f7;
    border-radius: 0 0 4px 4px;
}
.emoji-box .emoji-tabs .tab-link.on {
    background-color: #fff;
     float: left;
    padding: 8px 12px;
    width: 22px;
    height: 22px;
}
.emoji-box .emoji-wrap {
    margin: 4px 8px 8px;
    height: 152px;
    overflow: auto;
}
.emoji-tab-wrap.clearfix {
    background-color: #fff;
}
.emoji-box a {
    font-family: 'Roboto Condensed', sans-serif;
    margin: 0;
}
.emoji-box .emoji-text {
    color: #111;
    border-radius: 4px;
    border:1px solid #ccd0d7;
    transition: background .2s;
    display: inline-block;
    padding: 3px 5px;
    margin: 2px 3px;
    outline: 0;
    text-decoration: none;
    cursor: pointer;
}

#inputtj input {
    margin: 0 5px;
    padding: 0 10px;
    height: 26px;
    line-height: 24px;
    margin-top: 7px;
    font-size: 12px;
    box-shadow: none;
    width: 46px;
    border-radius: 4px;
    border: 1px solid #ddd;
    outline: none;
    text-align: center;
}
.curpage:hover,#prepage:hover,#nextpage:hover,#firstpage:hover,#lastpage:hover{
background: #00a1d6;
    color: #fff;
    border: 1px solid #00a1d6;
    }
    .curpage,#prepage,#nextpage,#firstpage,#lastpage{
    color: #222;
    cursor: pointer;
    text-align: center;
    border-radius: 4px;
    background-color: #fff;
    border: 1px solid #ddd;
    background-image: none;
    transition: all .2s;
    font-size: 14px;
    min-width: 15px;
    margin: 0 2px;
    padding: 0 10px;
    display: inline-block;
    height: 36px;
    line-height: 36px;
    text-decoration: none;
    }
    #curr{
    background: #00a1d6;
    color: #fff;
    border: 1px solid #00a1d6;
    
    }
    #fabiao{
        outline: none;
    font-style: normal;
    padding: 8px 20px;
    background: #ff8d1b;
    font-size: 14px;
    color: #fff;
    display: block;
    border: none;
    transition: .5s all;
    -webkit-transition: .5s all;
    }
    
</style>
<!-- 视频部分 -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/depend/videoCT.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/index.css">

<script type='text/javascript' src="${pageContext.request.contextPath }/depend/jquery.min.js"></script>
<script type='text/javascript'>
'use strict';

$.fn.videoCt = function (options) {
	var movieid=<%=request.getParameter("mid")%>
    //设置默认值
    var defaults = {
        title: '',
        volume: 0.2,
        barrage: false,
        comment: false,
        reversal: false,
        playSpeed: false,
        update: false,
        autoplay: false,
        clarity: {
            type: [],
            src: []
        },
        theme: 'blue',
        commentFile: 'comment.json'
    };
    var opts = $.extend({},defaults, options);
    
    var intOpts = {
        title: '',
        status: false,
        currentTime: '0.00001',
        duration: '',
        volume: '',
        clarityType: '',
        claritySrc: '',
        fullScreen: false,
        reversal: false,
        playSpeed: 1,
        cutover: true,
        commentTitle: '',
        commentId: '',
        commentClass: '',
        comment: {},
        commentSwitch: true,
    };

    // 控件结构
    var $videoCt = $(this);
    var $videoCtBox = $('<div></div>').addClass('video-player').addClass(opts.theme);
    var $videoCtControls = $('<div class="video-controls">\
                                <!--进度条-->\
                                <div class="video-seek">\
                                    <div class="seek-buffer"></div>\
                                    <div class="seek-con"></div>\
                                    <div class="seek-slider"></div>\
                                    <div class="viewBox">\
                                        <video></video>\
                                        <span>00:00</span>\
                                        <i></i>\
                                    </div>\
                                </div>\
                                <!--播放/暂停-->\
                                <a class="video-play" title="Play/Pause"></a>\
                                <!--计时器-->\
                                <div class="video-timer">\
                                    <span class="realTime">00:00</span>\
                                    /&nbsp;<span>00:00</span>\
                                </div>\
                                <!--音量控制-->\
                                <div class="video-audio">\
                                    <a class="audio-button" title="Mute/Unmute"></a>\
                                    <div class="audio-box">\
                                        <div class="audio-con"></div>\
                                        <div class="audio-slider"></div>\
                                    </div>\
                                </div>\
                                <!--全屏-->\
                                <div class="video-screen"></div>\
                                <div class="video-status"></div>\
                            </div>');
    $videoCt.wrap($videoCtBox);
    $videoCt.after($videoCtControls);
    $videoCt.after($('<div class="video-prompt">视频加载中。。。</div>'));
    videoDom(opts);

    var getVideoTimer;
    var comStayTimer = [];
    var comTimer = 0;
    var comStroeStatus = 0;
    var $video_container = $videoCt.parent('.video-player');
    var $videoCt_title = $('.video-title', $video_container);
    var $videoCt_play = $('.video-play', $video_container);
    var $videoCt_seek = $('.video-seek', $video_container);
    var $videoCt_timer = $('.video-timer', $video_container);
    var $videoCt_audio = $('.video-audio', $video_container);
    var $videoCt_clarity = $('.video-clarity', $video_container);
    var $videoCt_screen = $('.video-screen', $video_container);

    $videoCt.attr('src',opts.clarity.src[0]);
    $('.video-seek video').attr('src', opts.clarity.src[0]);
    intOpts.clarityType = opts.clarity.type[0];
    intOpts.claritySrc = opts.clarity.src[0];
    $videoCt_clarity.find('span').eq(0).addClass('disabled');

    var getVideoInf = function (){
        var setTimer;
        var key = true;
        if ($videoCt[0].readyState != 4 && $('.video-seek video')[0].readyState != 4) {
            $('.video-prompt').fadeOut();
            getVideoTimer = setTimeout(getVideoInf, 100);
        } else {
            $('.video-prompt').fadeOut();

            //视频播放状态
            if (intOpts.status) {
                $videoCt[0].play();
            }

            //标题
            if (!intOpts.title) {
                intOpts.title = opts.title;
            }
            $videoCt_title.text(intOpts.title);
 
            //载入弹幕
            if(intOpts.cutover && opts.comment){
                $.getJSON("http://localhost:8080/OneMovie/playcon/danmu/"+movieid,function (data,status) {
                    if(status == 'success'){
                        $('.screenShootBox').empty();
                        intOpts.commentTitle = data.title;
                        intOpts.commentId = data.id;
                        intOpts.commentClass = "game";
                        $.each(data.data,function (index,obj) {
                            $('.screenShootBox').append($('<p name="'+ obj.time +'" class="screenShoot" data-status="0" data-action="'+ obj.action +'" data-speed="'+ obj.speed +'" style="color: '+ obj.color +';top: '+ obj.top +'%;font-size: '+ obj.fontSize +'px">'+ obj.word +'</p>'));
                        })
                    }
                });
            }

            //进度条/暂停播放
            if (!intOpts.currentTime) {
                intOpts.currentTime = $videoCt[0].currentTime;
            }
            $videoCt[0].currentTime = intOpts.currentTime;
            if (!intOpts.duration) {
                intOpts.duration = $videoCt[0].duration;
            }
            move($('.seek-slider'), $videoCt_seek, $('.seek-con'), 8, videoJump, $('.realTime'), true);
            $('.seek-slider').css('left', intOpts.currentTime / intOpts.duration * $('.video-seek').width() - 8);
            $('.seek-con').css('width', intOpts.currentTime / intOpts.duration * $('.video-seek').width());
            $('.video-seek').hover(function () {
                key = true;
                $(document).mousemove(function(e){
                    clearTimeout(setTimer);
                    if(key){hoverPlay(e);}
                });
            },function () {
                key = false;
                clearTimeout(setTimer);
                $('.video-seek .viewBox').fadeOut();
            });

            //时间
            $videoCt_timer.find('span').eq(0).text(gTimeFormat(intOpts.currentTime));
            $videoCt_timer.find('span').eq(1).text(gTimeFormat(intOpts.duration));

            //声音
            if (!intOpts.volume) {
                intOpts.volume = opts.volume;
            }
            $videoCt[0].volume = intOpts.volume;
            $videoCt_audio.find('.audio-button').removeClass('audio-mute');
            move($('.audio-slider'), $('.audio-box'), $('.audio-con'), 6, audioJump);
            $('.audio-slider').css('left', intOpts.volume * $('.audio-box').width() - 6);
            $('.audio-con').css('width', intOpts.volume * $('.audio-box').width());
            $videoCt_audio.find('.audio-button').off('click').on('click', function () {
                $(this).toggleClass('audio-mute');
                if ($videoCt[0].volume == 0) {
                    $videoCt[0].volume = intOpts.volume;
                } else {
                    $videoCt[0].volume = 0;
                }
            })

            //弹幕
            $('.video-comment input[type=text]').off('focus').on('focus', function () {
                $('.video-comment').addClass('commentActive');
            });
            $('.video-comment p').off('click').on('click', function () {
                $('.video-comment .setBox').fadeToggle();
            });
            $('.video-comment .close').off('click').on('click', function () {
                $('.video-comment .setBox').fadeOut();
            });
            $('.video-comment input[type=color]').on('input', function () {
                var wordColor = $(this).val();
                $('.video-comment input[type=text]').css('color', wordColor);
            });

            //发送弹幕
            $('.video-comment span').off('click').on('click', function () {
                var $that = $('.video-comment');
                $that.find('.setBox').fadeOut();
                $that.removeClass('commentActive');
                var name = parseInt($videoCt[0].currentTime) + 1,
                    action = $that.find('input[name=action]:checked').val(),
                    speed = $that.find('input[name=speed]').val(),
                    color = $that.find('input[type=color]').val(),
                    top = $that.find('input[name=top]').val(),
                    fontSize = $that.find('input[name=fontSize]').val(),
                    word = $that.find('input[type=text]').val();
                $('.screenShootBox').append($('<p name='+ name +' class="screenShoot" data-status="0" data-action='+ action +' data-speed='+ speed +' style="color: '+ color +';top: '+ top +'%;font-size: '+ fontSize +'px">'+ word +'</p>'));
                $('.video-comment input[type=text]').val("");
               
                $.ajax({url: "${pageContext.request.contextPath}/playcon/cdanmu",
         		   type:"POST",
         		   data:{mid:movieid,time1:name,word1:word,color1:color,top1:top,fontSize1:fontSize,action1:action,speed1:speed},
         		   dataType:"json",
         		   success: function (data) {
         			   
         		   }
                });
                
            });

            //弹幕开关
            $('.video-barrage').off('click').on('click',function () {
                if(intOpts.commentSwitch){
                    intOpts.commentSwitch = false;
                    $('.screenShootBox').fadeOut();
                    $(this).addClass('barrageClose');
                    $('.video-comment').fadeOut();
                }else{
                    intOpts.commentSwitch = true;
                    $('.screenShootBox').fadeIn();
                    $(this).removeClass('barrageClose');
                    $('.video-comment').fadeIn();
                }
            });

            //反转
            $('.video-reversal').off('click').on('click',function () {
                $videoCt.toggleClass('videoStatus');
            });

            //播放速度
            $('.video-playSpeed').off('click').on('click',function () {
                comStop();
                var value = parseFloat($(this).text().split('x').join(""));
                if(value >= 3){
                    value = 0;
                }
                value = value + 0.5;
                $videoCt[0].playbackRate = value;
                intOpts.playSpeed = value;
                $(this).text(value + 'x');
            });

            //清晰度
            $videoCt_clarity.find('span').off("click").on('click', function () {
                var ind = $(this).index();
                $videoCt_clarity.find('span').removeClass('disabled');
                $(this).addClass('disabled');
                $videoCt_clarity.find('p').text($(this).text());
                intOpts.clarityType = opts.clarity.type[ind];
                intOpts.claritySrc = opts.clarity.src[ind];
                $videoCt.attr('src', intOpts.claritySrc);
                $('.video-seek video').attr('src', intOpts.claritySrc);
                opts.autoplay = true;
                intOpts.cutover = false;
                $videoCt[0].currentTime = intOpts.currentTime;
                getVideoInf();
            })

            //下载
            $('.video-update').attr('download',intOpts.title);
            $('.video-update').attr('href',intOpts.claritySrc);

            //全屏
            $videoCt_screen.off('click').on('click', function () {
                if (intOpts.fullScreen == true) {
                    exitFullscreen();
                    $('body').removeClass('fullScreen');
                    intOpts.fullScreen = false;
                } else {
                    requestFullScreen();
                    $('body').addClass('fullScreen');
                    intOpts.fullScreen = true;
                }
                $('.seek-slider').css('left', intOpts.currentTime / intOpts.duration * $('.video-seek').width() - 8);
                $('.seek-con').css('width', intOpts.currentTime / intOpts.duration * $('.video-seek').width());
            });

        }
    }
    getVideoInf();

    //slider
    function move(slider, box, con, radius, fn, vBox, vFollow) {
        var vBox = vBox || false;
        var vFollow = vFollow || false;
        var moveStatus = false;
        var sL = slider.offset().left;
        slider.click(function(){
        }).mousedown(function(e){
            moveStatus = true;
            sL = e.pageX - parseInt(slider.css('left'));
        })
        $(document).mousemove(function(e){
            if(moveStatus){
                var diffL = e.pageX - sL;
                show(diffL);
            }
        }).mouseup(function(){
            moveStatus = false;
        });
        box.off('click').on('click',function (e) {
            var diffL = e.pageX - box.offset().left - radius;
            show(diffL);
        });
        function show(x) {
            if( x >= -1*radius && x <= parseInt(box.width() - radius)){
                slider.css('left',x);
                con.css('width',x+radius);
                if(vBox){
                    var fnIndex = $videoCt[0].duration * (x+radius)/box.width();
                    intOpts.currentTime = fnIndex;
                    comClear();
                    vBox.text(gTimeFormat(fnIndex));
                }else{
                    var fnIndex = (x+radius)/box.width();
                }
                fn(fnIndex);
            }
        }
        if(vFollow){
            //暂停播放
            var seTimer;
            var vPlay = function() {
                if(!intOpts.status) {
                    $videoCt[0].play();
                    intOpts.status = true;
                    seTimer = setInterval(function () {
                        var vprpo = $videoCt[0].currentTime/$videoCt[0].duration;
                        if(intOpts.cutover){
                            var vBTime = $videoCt[0].buffered.end(0)/$videoCt[0].duration;
                        }
                        if( vprpo < 1){
                            var tl = vprpo * (box.width() - radius);
                            var bL = vBTime * box.width();
                            intOpts.currentTime = $videoCt[0].currentTime;
                            vBox.text(gTimeFormat($videoCt[0].currentTime));
                            slider.css('left',tl);
                            con.css('width',tl+radius);
                            $('.seek-buffer').css('width',bL);
                            intStatus();
                            if($videoCt[0].duration - $videoCt[0].currentTime > 6){
                                comRun(parseInt($videoCt[0].currentTime));
                            }else{
                                comStore();
                            }
                        }else if(vprpo == 1){
                            clearInterval(seTimer);
                            intOpts.status = false;
                            return true;
                        }else{
                            clearInterval(seTimer);
                            intOpts.status = true;
                            return true;
                        }
                    },10);
                } else {
                    $videoCt[0].pause();
                    intOpts.status = false;
                    comStop();
                    clearInterval(seTimer);
                }
            }

            if((intOpts.status || intOpts.cutover) && opts.autoplay){
                intOpts.status = false;
                vPlay();
            }

            $videoCt_play.removeClass('video-pause');
            $videoCt_play.off('click').on('click',vPlay);
            $videoCt.off('click').on('click',vPlay);

            $videoCt.bind('play', function() {
                $videoCt_play.addClass('video-pause');
            });

            $videoCt.bind('pause', function() {
                $videoCt_play.removeClass('video-pause');
            });

            $videoCt.bind('ended', function() {
                $videoCt_play.removeClass('video-pause');
            });
        }
    }

    //时间格式化
    var gTimeFormat = function (seconds) {
    	var m = Math.floor(seconds/60) < 10 ? "0" + Math.floor(seconds/60) : Math.floor(seconds/60);
        var s = Math.floor(seconds - (m * 60)) < 10 ? "0" + Math.floor(seconds - (m * 60)) : Math.floor(seconds - (m * 60));
        return m + ":" + s;
    }

    //进度条显示
    function hoverPlay(e) {
        var view = e.pageX - $('.video-seek').offset().left + 1;
        var time = $videoCt[0].duration * view / $('.video-seek').width();
        if(view <= 30){
            $('.video-seek .viewBox').css('left',-20);
            $('.video-seek .viewBox i').css('left',view+15);
        }else if(view >= ($('.video-seek').width()-30)){
            $('.video-seek .viewBox').css('left',$('.video-seek').width()-80);
            $('.video-seek .viewBox i').css('left',view-$('.video-seek').width()+75);
        }else{
            $('.video-seek .viewBox').css('left',view - 50);
            $('.video-seek .viewBox i').css('left',44);
        }
        $('.video-seek video')[0].currentTime = time;
        $('.video-seek span').text(gTimeFormat(time));
        $('.video-seek .viewBox').fadeIn();
    }

    //视频跳转
    function videoJump( timer ) {
        $videoCt[0].currentTime = timer;
    }

    //视频网络卡端
    function intStatus(){
        if($videoCt[0].readyState == 4){
            $('.video-status').fadeOut();
        }else{
            $('.video-status').fadeIn();
            comStop();
        }
    }

    //音量调节
    function audioJump( volume ) {
        opts.volume = volume;
        $videoCt[0].volume = volume;
    }

    //弹幕运行
    function comRun(time) {
        if(comTimer != time){
            $(".screenShoot[name="+ time +"][data-status='0']").each(function () {
                var that = $(this);
                var i = that.index();
                var t = that.data('speed')*1000/intOpts.playSpeed;
                if(that.data('action') == 'stay'){
                    that.fadeIn();
                    comStayTimer[i] = setTimeout(function () {
                        that.attr('data-status',3);
                    },t);
                }else{
                    that.css('display','block');
                    that.animate({'left': -40 + '%'},t,'linear');
                    comStayTimer[i] = setTimeout(function () {
                        that.attr('data-status',3);
                    },t);
                }
                that.attr('data-status',1);
            });
            $(".screenShoot[data-status='2']").each(function () {
                var that = $(this);
                var i = that.index();
                var difTime = 1000*(that.data('speed') - (time - that.attr('name')))/intOpts.playSpeed;
                if(that.data('action') == 'stay'){
                    comStayTimer[i] = setTimeout(function () {
                        that.attr('data-status',3);
                    },difTime);
                }else{
                    that.animate({'left': -40 + '%'},difTime,'linear');
                    comStayTimer[i] = setTimeout(function () {
                        that.attr('data-status',3);
                    },difTime);
                }
                that.attr('data-status',1);
            });
            $(".screenShoot[data-status='3']").each(function () {
                if($(this).data('action') == 'marquee'){
                    $(this).css('left', 110 + '%');
                }
                $(this).css('display','none');
                $(this).attr('data-status',0);
            });
            comTimer = time;
        }
    }

    //弹幕停止
    function comStop() {
        $(".screenShoot[data-status='1']").each(function () {
            var that = $(this);
            var i = that.index();
            if(that.data('action') == 'marquee'){
                that.stop();
            }
            clearTimeout(comStayTimer[i]);
            that.attr('data-status',2);
        });
    }

    //弹幕清除
    function comClear() {
        $(".screenShoot[data-status='1']").each(function () {
            var that = $(this);
            var i = that.index();
            clearTimeout(comStayTimer[i]);
            if(that.data('action') == 'marquee'){
                $(this).stop();
                $(this).css('left', 110 + '%');
            }
            $(this).fadeOut();
            that.attr('data-status',0);
        });
    }

    //弹幕存储
    function comStore() {
        if(comStroeStatus == 0){
            var dataArr = [];
            var date = new Date();
            var time= date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate();
            $('.screenShoot').each(function () {
                var data = {
                    "word": $(this).text(),
                    "color": $(this).css('color'),
                    "speed": $(this).data('speed'),
                    "top": $(this).css('top').split('%').join(''),
                    "fontSize": $(this).css('fontSize').split('px').join(''),
                    "action": $(this).data('action'),
                    "time": $(this).attr('name')
                };
                dataArr.push(data);
            })
            var obj = {
                "title": intOpts.commentTitle,
                "id": intOpts.commentId,
                "time": time,
                "number": $('.screenShoot').length,
                "class": intOpts.commentClass,
                "data": dataArr
            }
            intOpts.comment = JSON.stringify(obj, null, '  ');
            comStroeStatus = 1;
        }
    }

    //进入全屏
    function requestFullScreen() {
        var de = document.documentElement;
        if (de.requestFullscreen) {
            de.requestFullscreen();
        } else if (de.mozRequestFullScreen) {
            de.mozRequestFullScreen();
        } else if (de.webkitRequestFullScreen) {
            de.webkitRequestFullScreen();
        }
    }

    //退出全屏
    function exitFullscreen() {
        var de = document;
        if (de.exitFullscreen) {
            de.exitFullscreen();
        } else if (de.mozCancelFullScreen) {
            de.mozCancelFullScreen();
        } else if (de.webkitCancelFullScreen) {
            de.webkitCancelFullScreen();
        }
    }

    //扩展功能
    function videoDom( opts ) {
        var title = $('<!--标题--><div class="video-title"></div>');
        var barrage = $('<!--弹幕--><div class="video-barrage"></div>');
        var comment = $('<!--评论-->\
                       <form class="video-comment">\
                            <input type="text" placeHolder="输入弹幕" />\
                            <div>\
                                <p></p>\
                                <span>确定</span>\
                            </div>\
                            <div class="setBox">\
                                <div class="group">\
                                    <label>颜色：</label><input type="color" name="color" value="#ffffff">\
                                    <label>大小：</label><input type="number" name="fontSize" value="16" step="1" min="12" max="30"><span>像素</span>\
                                </div>\
                                <div class="group">\
                                    <label>位置：</label><input type="number" name="top" value="10" step="1" min="0" max="80"><span>%</span>\
                                    <label>时间：</label><input type="number" name="speed" value="10" step="1" min="5" max="30"><span>秒</span>\
                                </div>\
                                <div class="group">\
                                    <label>动作：</label>\
                                    <input type="radio" name="action" value="marquee" checked><span>滚动</span>\
                                    <input type="radio" name="action" value="stay"><span>停留</span>\
                                </div>\
                                <i class="close">×</i>\
                            </div>\
                       </form>');
        var reversal = $('<!--翻转--><div class="video-reversal"></div>');
        var playSpeed = $('<!--播放速度--><div class="video-playSpeed">1x</div>');
        var update = $('<!--下载--><a class="video-update"></a>');
        if( opts.title ){$videoCt.after(title)}
        if( opts.barrage ){
            barrage.appendTo($(".video-controls"));
            $(".video-controls").after($('<div class="screenShootBox"></div>'));
        }
        if( opts.reversal ){reversal.appendTo($(".video-controls"))}
        if( opts.playSpeed ){playSpeed.appendTo($(".video-controls"))}
        if( opts.update ){update.appendTo($(".video-controls"))}
        if( opts.clarity.type && opts.clarity.src ){
            var str = '';
            for(var i = 0;i < opts.clarity.type.length;i++){
                str = str + '<span>' + opts.clarity.type[i] + '</span>';
            }
            var clarity = '<!--清晰度--><div class="video-clarity"><p>'+ opts.clarity.type[0] +'</p><nav>'+ str +'</nav></div>';
            $(clarity).appendTo($(".video-controls"));
        }
        if( opts.comment ){comment.appendTo($(".video-controls"))}
    }

    return {
        title: '',
        status: false,
        currentTime: '0.00001',
        duration: '',
        volume: '',
        clarityType: '',
        claritySrc: '',
        fullScreen: false,
        reversal: false,
        playSpeed: 1,
        cutover: true,
        commentTitle: '',
        commentId: '',
        commentClass: '',
        commentSwitch: true,
        comment: function () {
            return intOpts.comment;
            
        }
    }
}





</script>


<%-- <script type='text/javascript' src="${pageContext.request.contextPath }/js/index.js"></script> --%>
<!--视频部分  -->
<script>
'user strict';

window.onload = function () { 
	//获取电影信息
	var movieId=<%=request.getParameter("mid")%>
	$.ajax({url:"${pageContext.request.contextPath}/playcon/cmovie",
		   type:"POST",
		   data:{mid:movieId},
		   dataType:"json",
		   success: function (data) {
     	   var movie=data;
     		$("#minfo").append(movie.movieIntroduction);
    			$("#subtitle").text(movie.movieName);
    			$("#mtime").text(movie.datetime+"上映");
    			$("#mlong").text("片长:"+movie.movieTime+"分钟");
    			$("#dy").text("导演:"+movie.directorName);
    			$("#yy").text("地区:"+movie.areaName);
    			$("#mtype").text("类型:"+movie.typeName);
     	   //初始化
     	   var movieurl;
     	   if(movie.movieStatus==1){
     		  
     		   if(${user==null}){
     			   alert("本片需要vip权限，观看请先登录充值")
     		   }else if(${user.userStatus==0}){
     			   alert("本片需要vip权限，请充值")
     		   }else{
     			   movieurl=[movie.movieUrl,movie.movieUrl];
     		   }
     		   
     	   }else{
     	   movieurl=[movie.movieUrl,movie.movieUrl];
     	   }
     	     var video = $('#video1').videoCt({
     	        title: movie.movieName,              //标题
     	        volume: 0.2,                //音量
     	        barrage: true,              //弹幕开关
     	        comment: true,              //弹幕
     	        reversal: true,             //镜像翻转
     	        playSpeed: true,            //播放速度
     	        update: true,               //下载
     	        autoplay: false,            //自动播放
     	        clarity: {
     	            type: ['480P','720P'],            //清晰度
     	            src:movieurl    //链接地址
     	      	  		},
     	        commentFile: 'comment.json'           //导入弹幕json数据
     	    }); 
        
	   	}
    });
  
}


</script>

</head>
<body>
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="w3layouts_logo">
				<a href="index.html"><h1>One<span>Movies</span></h1></a>
			</div>
							<form action="${pageContext.request.contextPath }/Genres/queryMovieByLike" method="post">
			
			<div class="w3_search">
					<input type="text" name="movieName" placeholder="搜电影">
					<input type="submit" value="Go">
				
			</div>
			</form>
		<%-- 	<div class="w3l_sign_in_register">
			<c:choose>
			<c:when test="${sessionScope.user == null}">
			<ul>
					<li><i class="fa fa-phone" aria-hidden="true"></i> (+000) 123 345 653</li>
					<li><a href="#" data-toggle="modal" data-target="#myModal">登录</a></li>
					 
			</ul>
			
			</c:when>
			
			<c:when test="${sessionScope.user != null}">
			
				<ul>
					<li><i class="fa fa-phone" aria-hidden="true"></i> (+000) 123 345 653</li>
				    <p style="font-size:15px;font-weight:Bolder">欢迎${sessionScope.user.userName }登录</p>
					<li><a href="${pageContext.request.contextPath}/usersController/exit" data-toggle="modal" data-target="">退出</a></li>
					 
				</ul>
			</c:when>	
			</c:choose>	
			</div> --%>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //header -->
	<!-- nav 导航栏-->
	<div class="movies_nav">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<nav>
						<ul class="nav navbar-nav">
							<li class="w3_home_act"><a href="${pageContext.request.contextPath }/index.jsp">首页</a></li>
							<li class="dropdown">
						<li><a href="${pageContext.request.contextPath}/genres.jsp">影库 </a></li>
							<li><a href="genres.jsp">类型</a></li>
							<li><a href="list.jsp">个人中心</a></li>
						</ul>
					</nav>
				</div>
			</nav>	
		</div>
	</div>
<!-- //nav -->
	<!--视频界面  -->
				<section>
				<video width="100%" height="100%" id="video1"></video>
				</section>
	<!--视频界面  -->
	<div style="height: 50px"></div>
	<div id="minfo" style="height: 250px">
	<h3 id="subtitle" ></h3>
	
	<div>
	<span id="dy"></span>&nbsp;&nbsp;&nbsp;&nbsp;<span id="mtime"></span>&nbsp;&nbsp;&nbsp;<span id="mlong"></span>&nbsp;&nbsp;&nbsp;<span id="mtype"></span>&nbsp;&nbsp;&nbsp;<span id="yy"></span>
	<hr>
	</div>
	影片简介:
	
	</div>

	<div class="row">
	<!-- 评论界面 -->
	<div class="col-sm-8">
	<div class="all-comments">
		
		<div class="media-grids" id="pllist">
		<!-- 	<div class="media">
				<h5>TOM BROWN</h5>
				<div class="media-left">
					<a href="#">
						<img src="images/user.jpg" title="One movies" alt=" " />
					</a>
				</div>
				<div class="media-body">
					<p>Maecenas ultricies rhoncus tincidunt maecenas imperdiet ipsum id ex pretium hendrerit maecenas imperdiet ipsum id ex pretium hendrerit</p>
					<span>View all posts by :<a href="#"> Admin </a></span>
				</div>
			</div> -->
		
		</div>
		<div  class="row">
		<div class="col-sm-8" id="fenpage" ></div>
		    
		<div id="inputtj" class="col-sm-4" style="color: #99a2aa">
		共<span id="allpage"></span>页，跳至 
		<input type="text" id="searchpage">
			页
		</div>
		</div>
		
		<div class="all-comments-info">
			<a href="#">发表评论</a>
			<div class="agile-info-wthree-box">
				<form  >
				<!-- <p>
				匿名<input type="checkbox">
				</p> -->
					<textarea id = "plwenben" placeholder="请自觉遵守互联网相关的政策法规，严禁发布色情，暴力，反动言论" required="" ></textarea>
					<div >
					<input type="button" value="发表" id="fabiao" style="display: inline-block;"><input type="reset" id="ccc" value="重置">
					<div id="emoticon" style="display: inline-block;" class="comment-emoji"><i class="face"><img alt="" src="images/11.bmp"></i><span class="text" >&nbsp;表情</span></div>
					
					<div id="emoticon-box" class="emoji-box" style="display: none; left: 86px; top: 159px;">
					<div class="emoji-title"><span>颜文字</span></div>
					<div class="emoji-wrap">
					<a class="emoji-list emoji-text" data-emoji-text="(⌒▽⌒)">(⌒▽⌒)</a>
					<a class="emoji-list emoji-text" data-emoji-text="（￣▽￣）">（￣▽￣）</a>
					<a class="emoji-list emoji-text" data-emoji-text="(=・ω・=)">(=・ω・=)</a>
					<a class="emoji-list emoji-text" data-emoji-text="(｀・ω・´)">(｀・ω・´)</a>
					<a class="emoji-list emoji-text" data-emoji-text="(〜￣△￣)〜">(〜￣△￣)〜</a>
					<a class="emoji-list emoji-text" data-emoji-text="(･∀･)">(･∀･)</a>
					<a class="emoji-list emoji-text" data-emoji-text="(°∀°)ﾉ">(°∀°)ﾉ</a>
					<a class="emoji-list emoji-text" data-emoji-text="(￣3￣)">(￣3￣)</a>
					<a class="emoji-list emoji-text" data-emoji-text="╮(￣▽￣)╭">╮(￣▽￣)╭</a>
					<a class="emoji-list emoji-text" data-emoji-text="( ´_ゝ｀)">( ´_ゝ｀)</a>
					<a class="emoji-list emoji-text" data-emoji-text="←_←">←_←</a>
					<a class="emoji-list emoji-text" data-emoji-text="→_→">→_→</a>
					<a class="emoji-list emoji-text" data-emoji-text="(<_<)">(&lt;_&lt;)</a>
					<a class="emoji-list emoji-text" data-emoji-text="(>_>)">(&gt;_&gt;)</a>
					<a class="emoji-list emoji-text" data-emoji-text="(;¬_¬)">(;¬_¬)</a>
					<a class="emoji-list emoji-text" data-emoji-text="(&quot;▔□▔)/">("▔□▔)/</a>
					<a class="emoji-list emoji-text" data-emoji-text="(ﾟДﾟ≡ﾟдﾟ)!?">(ﾟДﾟ≡ﾟдﾟ)!?</a>
					<a class="emoji-list emoji-text" data-emoji-text="Σ(ﾟдﾟ;)">Σ(ﾟдﾟ;)</a>
					<a class="emoji-list emoji-text" data-emoji-text="Σ( ￣□￣||)">Σ( ￣□￣||)</a>
					<a class="emoji-list emoji-text" data-emoji-text="(´；ω；`)">(´；ω；`)</a>
					<a class="emoji-list emoji-text" data-emoji-text="（/TДT)/">（/TДT)/</a>
					<a class="emoji-list emoji-text" data-emoji-text="(^・ω・^ )">(^・ω・^ )</a>
					<a class="emoji-list emoji-text" data-emoji-text="(｡･ω･｡)">(｡･ω･｡)</a>
					<a class="emoji-list emoji-text" data-emoji-text="(●￣(ｴ)￣●)">(●￣(ｴ)￣●)</a>
					<a class="emoji-list emoji-text" data-emoji-text="ε=ε=(ノ≧∇≦)ノ">ε=ε=(ノ≧∇≦)ノ</a>
					<a class="emoji-list emoji-text" data-emoji-text="(´･_･`)">(´･_･`)</a>
					<a class="emoji-list emoji-text" data-emoji-text="(-_-#)">(-_-#)</a>
					<a class="emoji-list emoji-text" data-emoji-text="（￣へ￣）">（￣へ￣）</a>
					<a class="emoji-list emoji-text" data-emoji-text="(￣ε(#￣) Σ">(￣ε(#￣) Σ</a>
					<a class="emoji-list emoji-text" data-emoji-text="ヽ(`Д´)ﾉ">ヽ(`Д´)ﾉ</a>
					<a class="emoji-list emoji-text" data-emoji-text="(╯°口°)╯(┴—┴">(╯°口°)╯(┴—┴</a>
					<a class="emoji-list emoji-text" data-emoji-text="（#-_-)┯━┯">（#-_-)┯━┯</a>
					<a class="emoji-list emoji-text" data-emoji-text="_(:3」∠)_">_(:3」∠)_</a>
					<a class="emoji-list emoji-text" data-emoji-text="(笑)">(笑)</a>
					<a class="emoji-list emoji-text" data-emoji-text="(汗)">(汗)</a>
					<a class="emoji-list emoji-text" data-emoji-text="(泣)">(泣)</a>
					<a class="emoji-list emoji-text" data-emoji-text="(苦笑)">(苦笑)</a>
					</div>
					<div class="emoji-tabs">
					<div class="emoji-container">
					<div class="emoji-tab-wrap clearfix" style="width: 46px;height : 44px; left: 0px;">
					<a class="tab-link on" data-index="0">
					<img src="//static.hdslb.com/images/base/emoji-tab-default.png">
					</a>
					</div>
					</div>
					</div>
					</div>
					
					
					
					</div>
					
					<div class="clearfix"> </div>
				</form>
			</div>
		</div>
	</div>
	</div>
	
	
	<!-- 评论界面 -->
	<!-- 推荐 -->
	<div  class="col-sm-4">
					<h3>更多影片</h3>
					<div id ="tuij" class="single-grid-right">
						
						
						<!-- 
						<div class="single-right-grids">
							<div class="col-md-4 single-right-grid-left">
								<a href="single.html"><img src="images/m4.jpg" alt="" /></a>
							</div>
							<div class="col-md-8 single-right-grid-right">
								<a href="single.html" class="title"> Nullam interdum metus</a>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
							<div class="clearfix"> </div>
						</div> -->
						

					</div>
	
	</div>
	<!--  推荐-->
	</div>
</body>
	<script>
	$(function(){
		<%session.setAttribute("userss", 1);%>
		var movieid=<%=request.getParameter("mid")%>
		var userid=2;
		var pageno=1;
		var mm=commentPage(movieid,pageno);
		//最新推荐4部 
		
		$.ajax({url:"${pageContext.request.contextPath}/playcon/getfour",
		   type:"POST",
		   data:{mid:movieid},
		   dataType:"json",
		   success: function (data) {
			   
				 $.each(data,function(i,v){
					 $("#tuij").append("<div class='single-right-grids'>"+
								"<div class='col-md-4 single-right-grid-left'>"+
								"<a href='http://localhost:8080/OneMovie/playerpage.jsp?mid="+v.movieId+"'><img src='"+v.movieImg+"' alt='' /></a>"+
							"</div>"+
							"<div class='col-md-8 single-right-grid-right'>"+
								"<a href='http://localhost:8080/OneMovie/playerpage.jsp?mid="+v.movieId+"' class='title'>"+v.movieName+"</a>"+
								"<p class='author'><a href='#' class='author'>"+v.directorName+"</a></p>"+
							"</div>"+
							"<div class='clearfix'> </div>"+
						"</div>"
						); 
				 });
		   }
			 
		 });
		
		$("#fabiao").click(function (){
			if(${user==null}){
				if(confirm("登录后评论")){
					location.href="http://localhost:8080/OneMovie/index.jsp";
				}
			}else{
				
				$.ajax({url:"http://localhost:8080/OneMovie/playcon/addcomment",
					   type:"POST",
					   data:{userId:userid,movieId:movieid,commentContent:$("#plwenben").val()},
					   dataType:"json",
					   success: function (data) {	
						   alert("发表成功");
							 $("#plwenben").val("");
							commentPage(movieid,1);
					   }
				});
			
			
			}
			 
		});
		
		if($("#searchpage").is(':focus')){
			alert("1")
		 $("#searchpage").keyup(function(event) { 
			 
	         if (event.keyCode == 13) { 
	             //执行操作
	           
	             commentPage(movieid,$(this).val());
	         }  
	     });
		}
	});
	//评论分页
	function commentPage(movieid,pageno){
		var mmsg;
		var reg=/^[0-9]*$/;
		if(!reg.test(pageno)){
			alert("输入错误")
			return;
		}
		
		$.ajax({url:"http://localhost:8080/OneMovie/playcon/comment",
			   type:"POST",
			   async:false,
			   data:{mid:movieid,pageNo:pageno},
			   dataType:"json",
			   success: function (data) {	
				   if(pageno>=1 && pageno<=data.pages){
		            	 $("#fenpage").html("");
		                 $("#pllist").html("");
		            	mmsg=data.list[0];
		            	$.each(data.list,function(i,v){
		            		
		            		$("#pllist").append("<div class='media'>"+
		            				"<h5>"+v.users.userNickname+"</h5>"+
		            				"<div class='media-left'>"+
		            					"<a href='#'>"+
		            						"<img src='images/user.jpg' title='One movies' alt='' />"+
		            					"</a>"+
		            				"</div>"+
		            				"<div class='media-body'>"+
		            					"<p>"+v.commentContent+"</p>"+
		            					
		            				"</div>"+
		            				
		            				
		            			"</div>"+
		            			"<span style='color: #99a2aa;font-size: 10px;'>"+v.commentTime+"</span>"+
		            			"<hr>");
		            		
		            		
		            	});
		            	//总页数
		            	$("#allpage").text(data.pages);
		            	
		           //页码添加
		            		$("#fenpage").append("<a id='prepage'>上一页</a>");
		            		if(data.pageNum==1){
		                		$("#fenpage").append("<a class='curpage' id='curr'>1</a>");
		                		}else{
		                		$("#fenpage").append("<a class='curpage'>1</a>");
		                		}
		            		
		            	if(data.pageNum-1==1){
		            		
		            		
		            		$("#fenpage").append("<a class='curpage' id='curr'>"+data.pageNum+"</a>");
		            	}else if(data.pageNum-1>1 && data.pageNum-1<=3){
		            		
		            		for (var i =2; i <= data.pageNum-1; i++) {
		            			$("#fenpage").append("<a class='curpage'>"+i+"</a>");
							} 
		            		$("#fenpage").append("<a class='curpage' id='curr'>"+data.pageNum+"</a>");
		            	}else if(data.pageNum-1>3){
		            		$("#fenpage").append("<span>...</span>");
		            		for (var i =data.pageNum-2; i <= data.pageNum-1; i++) {
		            			$("#fenpage").append("<a class='curpage'>"+i+"</a>");
							} 
		            		$("#fenpage").append("<a class='curpage' id='curr'>"+data.pageNum+"</a>");
		            	}
		            	
		            	if(data.pages-data.pageNum==1){
		            		if(data.pageNum==data.pages){
		                		$("#fenpage").append("<a class='curpage' id='curr'>"+data.pages+"</a>");
		                		}else{
		                			$("#fenpage").append("<a class='curpage' >"+data.pages+"</a>");
		                		}
		            	}else if(data.pages-data.pageNum>1 && data.pages-data.pageNum<=3){
		            		for (var i =data.pageNum+1; i <= data.pages-1; i++) {
		            			$("#fenpage").append("<a class='curpage'>"+i+"</a>");
							} 
		            		
		            		if(data.pageNum==data.pages){
		            		$("#fenpage").append("<a class='curpage' id='curr'>"+data.pages+"</a>");
		            		}else{
		            			$("#fenpage").append("<a class='curpage' >"+data.pages+"</a>");
		            		}
		            	}else if( data.pages-data.pageNum>3){
		            		for (var i =data.pageNum+1; i <= data.pageNum+2; i++) {
		            			$("#fenpage").append("<a class='curpage'>"+i+"</a>");
							} 
		            		$("#fenpage").append("<span>...</span>");
		            		
		            		if(data.pageNum==data.pages){
		                		$("#fenpage").append("<a class='curpage' id='curr'>"+data.pages+"</a>");
		                		}else{
		                			$("#fenpage").append("<a class='curpage' >"+data.pages+"</a>");
		                		}
		            		
		            	}
		            	
		            		$("#fenpage").append("<a id='nextpage'>下一页</span>");
		            	}else if(data.pages==0){
		            		 $("#fenpage").html("");
		                     $("#pllist").html("");
		                     $("#inputtj").empty();
		                     $("#pllist").html("<span style='color: #99a2aa;font-size: 10px;'>还没有评论快来说点什么吧</span>");
		               		
		            	}else{
		            		
		            		alert("请输入正确页码")
		            	}
		            	
			   }
		});
		
            //页码添加
            //上一页
            $("#prepage").on("click",function(){
            	
            	if(data.pageNum>1){
            	commentPage(movieid,data.pageNum-1)
            	}
            	
            });
            //上一页
            //下一页
            
             $("#nextpage").on("click",function(){
            	
            	 if(data.pageNum<data.pages){
                 	commentPage(movieid,data.pageNum+1)
                 	}
            	
            });
            //下一页
            //当前页
            $(".curpage").on("click",function(){
            	commentPage(movieid,$(this).text())
            	
            });
             //当前页
            
	    return mmsg;
		}
	
	</script>
<script type="text/javascript">
//颜文字
		$(function(){
			$(document).on("click",function(){
				$("#emoticon-box").hide();
				});
			$("#emoticon").click(function(event){
				
				$("#emoticon-box").show();
				event.stopPropagation();
				});	
		
	
		$(".emoji-text").click(function (){
			$("#plwenben").val($("#plwenben").val()+$(this).text());
			
		});
		
		
		
		})
		</script>
</html>

<%--    $.ajax({url:"${pageContext.request.contextPath}/playcon/cmovie",
		   type:"POST",
		   data:{mid:movieId},
		   dataType:"json",
		   success: function (data) {
        	   var movie=data;
        		$("#minfo").append(movie.movieIntroduction);
       			$("#subtitle").text(movie.movieName);
       			$("#mtime").text(movie.datetime+"上映");
       			$("#mlong").text("片长:"+movie.movieTime+"分钟");
       			$("#dy").text("导演:"+movie.directorName);
       			$("#yy").text("地区:"+movie.areaName);
       			$("#mtype").text("类型:"+movie.typeName);
        	   //初始化
        	   var movieurl;
        	   if(movie.movieStatus==1){
        		  
        		   if(${user==null}){
        			   alert("本片需要vip权限，观看请先登录充值")
        		   }else if(${user.userStatus==0}){
        			   alert("本片需要vip权限，请充值")
        		   }else{
        			   movieurl=[movie.movieUrl,movie.movieUrl];
        		   }
        		   
        	   }else{
        	   movieurl=[movie.movieUrl,movie.movieUrl];
        	   }
        	     var video = $('#video1').videoCt({
        	        title: movie.movieName,              //标题
        	        volume: 0.2,                //音量
        	        barrage: true,              //弹幕开关
        	        comment: true,              //弹幕
        	        reversal: true,             //镜像翻转
        	        playSpeed: true,            //播放速度
        	        update: true,               //下载
        	        autoplay: false,            //自动播放
        	        clarity: {
        	            type: ['480P','720P'],            //清晰度
        	            src:movieurl    //链接地址
        	      	  		},
        	        commentFile: 'comment.json'           //导入弹幕json数据
        	    }); 
           
	   	}
       }); --%>