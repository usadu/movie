<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>一部电影(OneMovie)--首页</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/contactstyle.css" type="text/css" media="all" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/faqstyle.css" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/css/single.css" rel='stylesheet' type='text/css' />
<link href="${pageContext.request.contextPath}/css/medile.css" rel='stylesheet' type='text/css' />

<!--验证图连接link  -->
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <meta charset="utf-8" />
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style1.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/style1.js"></script>
    
<!-- banner-slider -->
<link href="${pageContext.request.contextPath}/css/jquery.slidey.min.css" rel="stylesheet">
<!-- //banner-slider -->
<!-- pop-up -->
<link href="${pageContext.request.contextPath}/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up -->
<!-- font-awesome icons -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- banner-bottom-plugin -->
<link href="${pageContext.request.contextPath}/css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<script src="${pageContext.request.contextPath}/js/owl.carousel.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.pager.js" type="text/javascript"></script>
<link href="${pageContext.request.contextPath}/css/Pager.css" rel="stylesheet" type="text/css" />
<script>
/*----------------------------------主页页面信息显示------------------------------------ */
      $(function () {
    //点击隐藏分页
    
    $("#profile-tab").click(function () {
    	$("#pager").attr("style","display:none;");
	});
    
    $("#rating-tab").click(function () {
    	$("#pager").attr("style","display:none;");
	});
    $("#imdb-tab").click(function () {
    	$("#pager").attr("style","display:none;");
	});
    
	//显示分页div
$("#home-tab").click(function () {
	$("#pager").attr("style","display:block;");
});
 //个人中心是否有登录
$("#center").click(function () {
		
	var username='${user.userName}';	
	
	if(""==username){
		alert("请先登录");
		location.href="${pageContext.request.contextPath}/index.jsp";
	}else{
		location.href="${pageContext.request.contextPath}/list.jsp";
	}
});


 
 





    	  
    	  //轮播精选推荐
		$.ajax({
		url:"${pageContext.request.contextPath}/selectMovieController/selectmovie_ajax"	,
		type:"GET",
		datatype:"json",
		success:function(data){
						
			for (var i = 0; i < data.length; i++) {
				
				
					//VIP图标显示
				if(data[i].movieStatus==0){
					$("#owl-demo").append(
							'<div class="item">'+
							'<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">'+
							'<a  href="${pageContext.request.contextPath}/playerpage.jsp?mid='+data[i].movieId+'" class="hvr-shutter-out-horizontal"><img src="'+data[i].movieImg+'" title="album-name" class="img-responsive" alt=" " />'+
									'<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>'+
								'</a>'+
								'<div class="mid-1 agileits_w3layouts_mid_1_home">'+
									'<div class="w3l-movie-text">'+
										'<h6><a href="${pageContext.request.contextPath}/playerpage.jsp?mid='+data[i].movieId+'">'+data[i].movieName+'</a></h6>'+							
									'</div>'+
									'<div class="mid-2 agile_mid_2_home">'+
										'<p>'+data[i].datetime+'</p>'+
										'<div class="block-stars">'+
											'<ul class="w3l-ratings">'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>'+
											'</ul>'+
										'</div>'+
										'<div class="clearfix"></div>'+
									'</div>'+
								'</div>'+
								'<div class="ribben">'+
									'<p>免费</p>'+
								'</div>'+
							'</div>'+
						'</div>'
						
							);
				}else{
					$("#owl-demo").append(
							'<div class="item">'+
							'<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">'+
								'<a   title="'+data[i].movieId+'" href="javascript:void(0)" class="hvr-shutter-out-horizontal movievip"><img src="'+data[i].movieImg+'" title="album-name" class="img-responsive" alt=" " />'+
									'<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>'+
								'</a>'+
								'<div class="mid-1 agileits_w3layouts_mid_1_home">'+
									'<div class="w3l-movie-text">'+
										'<h6><a href="${pageContext.request.contextPath}/playerpage.jsp?mid='+data[i].movieId+'">'+data[i].movieName+'</a></h6>'+							
									'</div>'+
									'<div class="mid-2 agile_mid_2_home">'+
										'<p>'+data[i].datetime+'</p>'+
										'<div class="block-stars">'+
											'<ul class="w3l-ratings">'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>'+
											'</ul>'+
										'</div>'+
										'<div class="clearfix"></div>'+
									'</div>'+
								'</div>'+
								'<div class="ribben">'+
									'<p>VIP</p>'+
								'</div>'+
							'</div>'+
						'</div>'
						
							);
				}
					

			}
			
			$(".movievip").click(function () {
				 		 
				 var userName='${user.userName}';
				 var userStatus='${user.userStatus}';
				 var movieId=$(this).attr("title");
				  if( userName ==""){
					  alert("影片为VIP权限,请先登录")
						location.href="${pageContext.request.contextPath}/index.jsp";
					  
				  }else if(userStatus==0){
					  alert("请先充值VIP");
					  location.href="${pageContext.request.contextPath}/index.jsp";
					  
				  }else{					  
					  location.href="${pageContext.request.contextPath}/playerpage.jsp?mid="+movieId;				  
			  }
			});
			
			/*
			 *  jQuery OwlCarousel v1.3.3
			 *
			 *  Copyright (c) 2013 Bartosz Wojciechowski
			 *  http://www.owlgraphic.com/owlcarousel/
			 *
			 *  Licensed under MIT
			 *
			 */

			/*JS Lint helpers: */
			/*global dragMove: false, dragEnd: false, $, jQuery, alert, window, document */
			/*jslint nomen: true, continue:true */

			if (typeof Object.create !== "function") {
			    Object.create = function (obj) {
			        function F() {}
			        F.prototype = obj;
			        return new F();
			    };
			}
			(function ($, window, document) {

			    var Carousel = {
			        init : function (options, el) {
			            var base = this;

			            base.$elem = $(el);
			            base.options = $.extend({}, $.fn.owlCarousel.options, base.$elem.data(), options);

			            base.userOptions = options;
			            base.loadContent();
			        },

			        loadContent : function () {
			            var base = this, url;

			            function getData(data) {
			                var i, content = "";
			                if (typeof base.options.jsonSuccess === "function") {
			                    base.options.jsonSuccess.apply(this, [data]);
			                } else {
			                    for (i in data.owl) {
			                        if (data.owl.hasOwnProperty(i)) {
			                            content += data.owl[i].item;
			                        }
			                    }
			                    base.$elem.html(content);
			                }
			                base.logIn();
			            }

			            if (typeof base.options.beforeInit === "function") {
			                base.options.beforeInit.apply(this, [base.$elem]);
			            }

			            if (typeof base.options.jsonPath === "string") {
			                url = base.options.jsonPath;
			                $.getJSON(url, getData);
			            } else {
			                base.logIn();
			            }
			        },

			        logIn : function () {
			            var base = this;

			            base.$elem.data({
			                "owl-originalStyles": base.$elem.attr("style"),
			                "owl-originalClasses": base.$elem.attr("class")
			            });

			            base.$elem.css({opacity: 0});
			            base.orignalItems = base.options.items;
			            base.checkBrowser();
			            base.wrapperWidth = 0;
			            base.checkVisible = null;
			            base.setVars();
			        },

			        setVars : function () {
			            var base = this;
			            if (base.$elem.children().length === 0) {return false; }
			            base.baseClass();
			            base.eventTypes();
			            base.$userItems = base.$elem.children();
			            base.itemsAmount = base.$userItems.length;
			            base.wrapItems();
			            base.$owlItems = base.$elem.find(".owl-item");
			            base.$owlWrapper = base.$elem.find(".owl-wrapper");
			            base.playDirection = "next";
			            base.prevItem = 0;
			            base.prevArr = [0];
			            base.currentItem = 0;
			            base.customEvents();
			            base.onStartup();
			        },

			        onStartup : function () {
			            var base = this;
			            base.updateItems();
			            base.calculateAll();
			            base.buildControls();
			            base.updateControls();
			            base.response();
			            base.moveEvents();
			            base.stopOnHover();
			            base.owlStatus();

			            if (base.options.transitionStyle !== false) {
			                base.transitionTypes(base.options.transitionStyle);
			            }
			            if (base.options.autoPlay === true) {
			                base.options.autoPlay = 5000;
			            }
			            base.play();

			            base.$elem.find(".owl-wrapper").css("display", "block");

			            if (!base.$elem.is(":visible")) {
			                base.watchVisibility();
			            } else {
			                base.$elem.css("opacity", 1);
			            }
			            base.onstartup = false;
			            base.eachMoveUpdate();
			            if (typeof base.options.afterInit === "function") {
			                base.options.afterInit.apply(this, [base.$elem]);
			            }
			        },

			        eachMoveUpdate : function () {
			            var base = this;

			            if (base.options.lazyLoad === true) {
			                base.lazyLoad();
			            }
			            if (base.options.autoHeight === true) {
			                base.autoHeight();
			            }
			            base.onVisibleItems();

			            if (typeof base.options.afterAction === "function") {
			                base.options.afterAction.apply(this, [base.$elem]);
			            }
			        },

			        updateVars : function () {
			            var base = this;
			            if (typeof base.options.beforeUpdate === "function") {
			                base.options.beforeUpdate.apply(this, [base.$elem]);
			            }
			            base.watchVisibility();
			            base.updateItems();
			            base.calculateAll();
			            base.updatePosition();
			            base.updateControls();
			            base.eachMoveUpdate();
			            if (typeof base.options.afterUpdate === "function") {
			                base.options.afterUpdate.apply(this, [base.$elem]);
			            }
			        },

			        reload : function () {
			            var base = this;
			            window.setTimeout(function () {
			                base.updateVars();
			            }, 0);
			        },

			        watchVisibility : function () {
			            var base = this;

			            if (base.$elem.is(":visible") === false) {
			                base.$elem.css({opacity: 0});
			                window.clearInterval(base.autoPlayInterval);
			                window.clearInterval(base.checkVisible);
			            } else {
			                return false;
			            }
			            base.checkVisible = window.setInterval(function () {
			                if (base.$elem.is(":visible")) {
			                    base.reload();
			                    base.$elem.animate({opacity: 1}, 200);
			                    window.clearInterval(base.checkVisible);
			                }
			            }, 500);
			        },

			        wrapItems : function () {
			            var base = this;
			            base.$userItems.wrapAll("<div class=\"owl-wrapper\">").wrap("<div class=\"owl-item\"></div>");
			            base.$elem.find(".owl-wrapper").wrap("<div class=\"owl-wrapper-outer\">");
			            base.wrapperOuter = base.$elem.find(".owl-wrapper-outer");
			            base.$elem.css("display", "block");
			        },

			        baseClass : function () {
			            var base = this,
			                hasBaseClass = base.$elem.hasClass(base.options.baseClass),
			                hasThemeClass = base.$elem.hasClass(base.options.theme);

			            if (!hasBaseClass) {
			                base.$elem.addClass(base.options.baseClass);
			            }

			            if (!hasThemeClass) {
			                base.$elem.addClass(base.options.theme);
			            }
			        },

			        updateItems : function () {
			            var base = this, width, i;

			            if (base.options.responsive === false) {
			                return false;
			            }
			            if (base.options.singleItem === true) {
			                base.options.items = base.orignalItems = 1;
			                base.options.itemsCustom = false;
			                base.options.itemsDesktop = false;
			                base.options.itemsDesktopSmall = false;
			                base.options.itemsTablet = false;
			                base.options.itemsTabletSmall = false;
			                base.options.itemsMobile = false;
			                return false;
			            }

			            width = $(base.options.responsiveBaseWidth).width();

			            if (width > (base.options.itemsDesktop[0] || base.orignalItems)) {
			                base.options.items = base.orignalItems;
			            }
			            if (base.options.itemsCustom !== false) {
			                //Reorder array by screen size
			                base.options.itemsCustom.sort(function (a, b) {return a[0] - b[0]; });

			                for (i = 0; i < base.options.itemsCustom.length; i += 1) {
			                    if (base.options.itemsCustom[i][0] <= width) {
			                        base.options.items = base.options.itemsCustom[i][1];
			                    }
			                }

			            } else {

			                if (width <= base.options.itemsDesktop[0] && base.options.itemsDesktop !== false) {
			                    base.options.items = base.options.itemsDesktop[1];
			                }

			                if (width <= base.options.itemsDesktopSmall[0] && base.options.itemsDesktopSmall !== false) {
			                    base.options.items = base.options.itemsDesktopSmall[1];
			                }

			                if (width <= base.options.itemsTablet[0] && base.options.itemsTablet !== false) {
			                    base.options.items = base.options.itemsTablet[1];
			                }

			                if (width <= base.options.itemsTabletSmall[0] && base.options.itemsTabletSmall !== false) {
			                    base.options.items = base.options.itemsTabletSmall[1];
			                }

			                if (width <= base.options.itemsMobile[0] && base.options.itemsMobile !== false) {
			                    base.options.items = base.options.itemsMobile[1];
			                }
			            }

			            //if number of items is less than declared
			            if (base.options.items > base.itemsAmount && base.options.itemsScaleUp === true) {
			                base.options.items = base.itemsAmount;
			            }
			        },

			        response : function () {
			            var base = this,
			                smallDelay,
			                lastWindowWidth;

			            if (base.options.responsive !== true) {
			                return false;
			            }
			            lastWindowWidth = $(window).width();

			            base.resizer = function () {
			                if ($(window).width() !== lastWindowWidth) {
			                    if (base.options.autoPlay !== false) {
			                        window.clearInterval(base.autoPlayInterval);
			                    }
			                    window.clearTimeout(smallDelay);
			                    smallDelay = window.setTimeout(function () {
			                        lastWindowWidth = $(window).width();
			                        base.updateVars();
			                    }, base.options.responsiveRefreshRate);
			                }
			            };
			            $(window).resize(base.resizer);
			        },

			        updatePosition : function () {
			            var base = this;
			            base.jumpTo(base.currentItem);
			            if (base.options.autoPlay !== false) {
			                base.checkAp();
			            }
			        },

			        appendItemsSizes : function () {
			            var base = this,
			                roundPages = 0,
			                lastItem = base.itemsAmount - base.options.items;

			            base.$owlItems.each(function (index) {
			                var $this = $(this);
			                $this
			                    .css({"width": base.itemWidth})
			                    .data("owl-item", Number(index));

			                if (index % base.options.items === 0 || index === lastItem) {
			                    if (!(index > lastItem)) {
			                        roundPages += 1;
			                    }
			                }
			                $this.data("owl-roundPages", roundPages);
			            });
			        },

			        appendWrapperSizes : function () {
			            var base = this,
			                width = base.$owlItems.length * base.itemWidth;

			            base.$owlWrapper.css({
			                "width": width * 2,
			                "left": 0
			            });
			            base.appendItemsSizes();
			        },

			        calculateAll : function () {
			            var base = this;
			            base.calculateWidth();
			            base.appendWrapperSizes();
			            base.loops();
			            base.max();
			        },

			        calculateWidth : function () {
			            var base = this;
			            base.itemWidth = Math.round(base.$elem.width() / base.options.items);
			        },

			        max : function () {
			            var base = this,
			                maximum = ((base.itemsAmount * base.itemWidth) - base.options.items * base.itemWidth) * -1;
			            if (base.options.items > base.itemsAmount) {
			                base.maximumItem = 0;
			                maximum = 0;
			                base.maximumPixels = 0;
			            } else {
			                base.maximumItem = base.itemsAmount - base.options.items;
			                base.maximumPixels = maximum;
			            }
			            return maximum;
			        },

			        min : function () {
			            return 0;
			        },

			        loops : function () {
			            var base = this,
			                prev = 0,
			                elWidth = 0,
			                i,
			                item,
			                roundPageNum;

			            base.positionsInArray = [0];
			            base.pagesInArray = [];

			            for (i = 0; i < base.itemsAmount; i += 1) {
			                elWidth += base.itemWidth;
			                base.positionsInArray.push(-elWidth);

			                if (base.options.scrollPerPage === true) {
			                    item = $(base.$owlItems[i]);
			                    roundPageNum = item.data("owl-roundPages");
			                    if (roundPageNum !== prev) {
			                        base.pagesInArray[prev] = base.positionsInArray[i];
			                        prev = roundPageNum;
			                    }
			                }
			            }
			        },

			        buildControls : function () {
			            var base = this;
			            if (base.options.navigation === true || base.options.pagination === true) {
			                base.owlControls = $("<div class=\"owl-controls\"/>").toggleClass("clickable", !base.browser.isTouch).appendTo(base.$elem);
			            }
			            if (base.options.pagination === true) {
			                base.buildPagination();
			            }
			            if (base.options.navigation === true) {
			                base.buildButtons();
			            }
			        },

			        buildButtons : function () {
			            var base = this,
			                buttonsWrapper = $("<div class=\"owl-buttons\"/>");
			            base.owlControls.append(buttonsWrapper);

			            base.buttonPrev = $("<div/>", {
			                "class" : "owl-prev",
			                "html" : base.options.navigationText[0] || ""
			            });

			            base.buttonNext = $("<div/>", {
			                "class" : "owl-next",
			                "html" : base.options.navigationText[1] || ""
			            });

			            buttonsWrapper
			                .append(base.buttonPrev)
			                .append(base.buttonNext);

			            buttonsWrapper.on("touchstart.owlControls mousedown.owlControls", "div[class^=\"owl\"]", function (event) {
			                event.preventDefault();
			            });

			            buttonsWrapper.on("touchend.owlControls mouseup.owlControls", "div[class^=\"owl\"]", function (event) {
			                event.preventDefault();
			                if ($(this).hasClass("owl-next")) {
			                    base.next();
			                } else {
			                    base.prev();
			                }
			            });
			        },

			        buildPagination : function () {
			            var base = this;

			            base.paginationWrapper = $("<div class=\"owl-pagination\"/>");
			            base.owlControls.append(base.paginationWrapper);

			            base.paginationWrapper.on("touchend.owlControls mouseup.owlControls", ".owl-page", function (event) {
			                event.preventDefault();
			                if (Number($(this).data("owl-page")) !== base.currentItem) {
			                    base.goTo(Number($(this).data("owl-page")), true);
			                }
			            });
			        },

			        updatePagination : function () {
			            var base = this,
			                counter,
			                lastPage,
			                lastItem,
			                i,
			                paginationButton,
			                paginationButtonInner;

			            if (base.options.pagination === false) {
			                return false;
			            }

			            base.paginationWrapper.html("");

			            counter = 0;
			            lastPage = base.itemsAmount - base.itemsAmount % base.options.items;

			            for (i = 0; i < base.itemsAmount; i += 1) {
			                if (i % base.options.items === 0) {
			                    counter += 1;
			                    if (lastPage === i) {
			                        lastItem = base.itemsAmount - base.options.items;
			                    }
			                    paginationButton = $("<div/>", {
			                        "class" : "owl-page"
			                    });
			                    paginationButtonInner = $("<span></span>", {
			                        "text": base.options.paginationNumbers === true ? counter : "",
			                        "class": base.options.paginationNumbers === true ? "owl-numbers" : ""
			                    });
			                    paginationButton.append(paginationButtonInner);

			                    paginationButton.data("owl-page", lastPage === i ? lastItem : i);
			                    paginationButton.data("owl-roundPages", counter);

			                    base.paginationWrapper.append(paginationButton);
			                }
			            }
			            base.checkPagination();
			        },
			        checkPagination : function () {
			            var base = this;
			            if (base.options.pagination === false) {
			                return false;
			            }
			            base.paginationWrapper.find(".owl-page").each(function () {
			                if ($(this).data("owl-roundPages") === $(base.$owlItems[base.currentItem]).data("owl-roundPages")) {
			                    base.paginationWrapper
			                        .find(".owl-page")
			                        .removeClass("active");
			                    $(this).addClass("active");
			                }
			            });
			        },

			        checkNavigation : function () {
			            var base = this;

			            if (base.options.navigation === false) {
			                return false;
			            }
			            if (base.options.rewindNav === false) {
			                if (base.currentItem === 0 && base.maximumItem === 0) {
			                    base.buttonPrev.addClass("disabled");
			                    base.buttonNext.addClass("disabled");
			                } else if (base.currentItem === 0 && base.maximumItem !== 0) {
			                    base.buttonPrev.addClass("disabled");
			                    base.buttonNext.removeClass("disabled");
			                } else if (base.currentItem === base.maximumItem) {
			                    base.buttonPrev.removeClass("disabled");
			                    base.buttonNext.addClass("disabled");
			                } else if (base.currentItem !== 0 && base.currentItem !== base.maximumItem) {
			                    base.buttonPrev.removeClass("disabled");
			                    base.buttonNext.removeClass("disabled");
			                }
			            }
			        },

			        updateControls : function () {
			            var base = this;
			            base.updatePagination();
			            base.checkNavigation();
			            if (base.owlControls) {
			                if (base.options.items >= base.itemsAmount) {
			                    base.owlControls.hide();
			                } else {
			                    base.owlControls.show();
			                }
			            }
			        },

			        destroyControls : function () {
			            var base = this;
			            if (base.owlControls) {
			                base.owlControls.remove();
			            }
			        },

			        next : function (speed) {
			            var base = this;

			            if (base.isTransition) {
			                return false;
			            }

			            base.currentItem += base.options.scrollPerPage === true ? base.options.items : 1;
			            if (base.currentItem > base.maximumItem + (base.options.scrollPerPage === true ? (base.options.items - 1) : 0)) {
			                if (base.options.rewindNav === true) {
			                    base.currentItem = 0;
			                    speed = "rewind";
			                } else {
			                    base.currentItem = base.maximumItem;
			                    return false;
			                }
			            }
			            base.goTo(base.currentItem, speed);
			        },

			        prev : function (speed) {
			            var base = this;

			            if (base.isTransition) {
			                return false;
			            }

			            if (base.options.scrollPerPage === true && base.currentItem > 0 && base.currentItem < base.options.items) {
			                base.currentItem = 0;
			            } else {
			                base.currentItem -= base.options.scrollPerPage === true ? base.options.items : 1;
			            }
			            if (base.currentItem < 0) {
			                if (base.options.rewindNav === true) {
			                    base.currentItem = base.maximumItem;
			                    speed = "rewind";
			                } else {
			                    base.currentItem = 0;
			                    return false;
			                }
			            }
			            base.goTo(base.currentItem, speed);
			        },

			        goTo : function (position, speed, drag) {
			            var base = this,
			                goToPixel;

			            if (base.isTransition) {
			                return false;
			            }
			            if (typeof base.options.beforeMove === "function") {
			                base.options.beforeMove.apply(this, [base.$elem]);
			            }
			            if (position >= base.maximumItem) {
			                position = base.maximumItem;
			            } else if (position <= 0) {
			                position = 0;
			            }

			            base.currentItem = base.owl.currentItem = position;
			            if (base.options.transitionStyle !== false && drag !== "drag" && base.options.items === 1 && base.browser.support3d === true) {
			                base.swapSpeed(0);
			                if (base.browser.support3d === true) {
			                    base.transition3d(base.positionsInArray[position]);
			                } else {
			                    base.css2slide(base.positionsInArray[position], 1);
			                }
			                base.afterGo();
			                base.singleItemTransition();
			                return false;
			            }
			            goToPixel = base.positionsInArray[position];

			            if (base.browser.support3d === true) {
			                base.isCss3Finish = false;

			                if (speed === true) {
			                    base.swapSpeed("paginationSpeed");
			                    window.setTimeout(function () {
			                        base.isCss3Finish = true;
			                    }, base.options.paginationSpeed);

			                } else if (speed === "rewind") {
			                    base.swapSpeed(base.options.rewindSpeed);
			                    window.setTimeout(function () {
			                        base.isCss3Finish = true;
			                    }, base.options.rewindSpeed);

			                } else {
			                    base.swapSpeed("slideSpeed");
			                    window.setTimeout(function () {
			                        base.isCss3Finish = true;
			                    }, base.options.slideSpeed);
			                }
			                base.transition3d(goToPixel);
			            } else {
			                if (speed === true) {
			                    base.css2slide(goToPixel, base.options.paginationSpeed);
			                } else if (speed === "rewind") {
			                    base.css2slide(goToPixel, base.options.rewindSpeed);
			                } else {
			                    base.css2slide(goToPixel, base.options.slideSpeed);
			                }
			            }
			            base.afterGo();
			        },

			        jumpTo : function (position) {
			            var base = this;
			            if (typeof base.options.beforeMove === "function") {
			                base.options.beforeMove.apply(this, [base.$elem]);
			            }
			            if (position >= base.maximumItem || position === -1) {
			                position = base.maximumItem;
			            } else if (position <= 0) {
			                position = 0;
			            }
			            base.swapSpeed(0);
			            if (base.browser.support3d === true) {
			                base.transition3d(base.positionsInArray[position]);
			            } else {
			                base.css2slide(base.positionsInArray[position], 1);
			            }
			            base.currentItem = base.owl.currentItem = position;
			            base.afterGo();
			        },

			        afterGo : function () {
			            var base = this;

			            base.prevArr.push(base.currentItem);
			            base.prevItem = base.owl.prevItem = base.prevArr[base.prevArr.length - 2];
			            base.prevArr.shift(0);

			            if (base.prevItem !== base.currentItem) {
			                base.checkPagination();
			                base.checkNavigation();
			                base.eachMoveUpdate();

			                if (base.options.autoPlay !== false) {
			                    base.checkAp();
			                }
			            }
			            if (typeof base.options.afterMove === "function" && base.prevItem !== base.currentItem) {
			                base.options.afterMove.apply(this, [base.$elem]);
			            }
			        },

			        stop : function () {
			            var base = this;
			            base.apStatus = "stop";
			            window.clearInterval(base.autoPlayInterval);
			        },

			        checkAp : function () {
			            var base = this;
			            if (base.apStatus !== "stop") {
			                base.play();
			            }
			        },

			        play : function () {
			            var base = this;
			            base.apStatus = "play";
			            if (base.options.autoPlay === false) {
			                return false;
			            }
			            window.clearInterval(base.autoPlayInterval);
			            base.autoPlayInterval = window.setInterval(function () {
			                base.next(true);
			            }, base.options.autoPlay);
			        },

			        swapSpeed : function (action) {
			            var base = this;
			            if (action === "slideSpeed") {
			                base.$owlWrapper.css(base.addCssSpeed(base.options.slideSpeed));
			            } else if (action === "paginationSpeed") {
			                base.$owlWrapper.css(base.addCssSpeed(base.options.paginationSpeed));
			            } else if (typeof action !== "string") {
			                base.$owlWrapper.css(base.addCssSpeed(action));
			            }
			        },

			        addCssSpeed : function (speed) {
			            return {
			                "-webkit-transition": "all " + speed + "ms ease",
			                "-moz-transition": "all " + speed + "ms ease",
			                "-o-transition": "all " + speed + "ms ease",
			                "transition": "all " + speed + "ms ease"
			            };
			        },

			        removeTransition : function () {
			            return {
			                "-webkit-transition": "",
			                "-moz-transition": "",
			                "-o-transition": "",
			                "transition": ""
			            };
			        },

			        doTranslate : function (pixels) {
			            return {
			                "-webkit-transform": "translate3d(" + pixels + "px, 0px, 0px)",
			                "-moz-transform": "translate3d(" + pixels + "px, 0px, 0px)",
			                "-o-transform": "translate3d(" + pixels + "px, 0px, 0px)",
			                "-ms-transform": "translate3d(" + pixels + "px, 0px, 0px)",
			                "transform": "translate3d(" + pixels + "px, 0px,0px)"
			            };
			        },

			        transition3d : function (value) {
			            var base = this;
			            base.$owlWrapper.css(base.doTranslate(value));
			        },

			        css2move : function (value) {
			            var base = this;
			            base.$owlWrapper.css({"left" : value});
			        },

			        css2slide : function (value, speed) {
			            var base = this;

			            base.isCssFinish = false;
			            base.$owlWrapper.stop(true, true).animate({
			                "left" : value
			            }, {
			                duration : speed || base.options.slideSpeed,
			                complete : function () {
			                    base.isCssFinish = true;
			                }
			            });
			        },

			        checkBrowser : function () {
			            var base = this,
			                translate3D = "translate3d(0px, 0px, 0px)",
			                tempElem = document.createElement("div"),
			                regex,
			                asSupport,
			                support3d,
			                isTouch;

			            tempElem.style.cssText = "  -moz-transform:" + translate3D +
			                                  "; -ms-transform:"     + translate3D +
			                                  "; -o-transform:"      + translate3D +
			                                  "; -webkit-transform:" + translate3D +
			                                  "; transform:"         + translate3D;
			            regex = /translate3d\(0px, 0px, 0px\)/g;
			            asSupport = tempElem.style.cssText.match(regex);
			            support3d = (asSupport !== null && asSupport.length === 1);

			            isTouch = "ontouchstart" in window || window.navigator.msMaxTouchPoints;

			            base.browser = {
			                "support3d" : support3d,
			                "isTouch" : isTouch
			            };
			        },

			        moveEvents : function () {
			            var base = this;
			            if (base.options.mouseDrag !== false || base.options.touchDrag !== false) {
			                base.gestures();
			                base.disabledEvents();
			            }
			        },

			        eventTypes : function () {
			            var base = this,
			                types = ["s", "e", "x"];

			            base.ev_types = {};

			            if (base.options.mouseDrag === true && base.options.touchDrag === true) {
			                types = [
			                    "touchstart.owl mousedown.owl",
			                    "touchmove.owl mousemove.owl",
			                    "touchend.owl touchcancel.owl mouseup.owl"
			                ];
			            } else if (base.options.mouseDrag === false && base.options.touchDrag === true) {
			                types = [
			                    "touchstart.owl",
			                    "touchmove.owl",
			                    "touchend.owl touchcancel.owl"
			                ];
			            } else if (base.options.mouseDrag === true && base.options.touchDrag === false) {
			                types = [
			                    "mousedown.owl",
			                    "mousemove.owl",
			                    "mouseup.owl"
			                ];
			            }

			            base.ev_types.start = types[0];
			            base.ev_types.move = types[1];
			            base.ev_types.end = types[2];
			        },

			        disabledEvents :  function () {
			            var base = this;
			            base.$elem.on("dragstart.owl", function (event) { event.preventDefault(); });
			            base.$elem.on("mousedown.disableTextSelect", function (e) {
			                return $(e.target).is('input, textarea, select, option');
			            });
			        },

			        gestures : function () {
			            /*jslint unparam: true*/
			            var base = this,
			                locals = {
			                    offsetX : 0,
			                    offsetY : 0,
			                    baseElWidth : 0,
			                    relativePos : 0,
			                    position: null,
			                    minSwipe : null,
			                    maxSwipe: null,
			                    sliding : null,
			                    dargging: null,
			                    targetElement : null
			                };

			            base.isCssFinish = true;

			            function getTouches(event) {
			                if (event.touches !== undefined) {
			                    return {
			                        x : event.touches[0].pageX,
			                        y : event.touches[0].pageY
			                    };
			                }

			                if (event.touches === undefined) {
			                    if (event.pageX !== undefined) {
			                        return {
			                            x : event.pageX,
			                            y : event.pageY
			                        };
			                    }
			                    if (event.pageX === undefined) {
			                        return {
			                            x : event.clientX,
			                            y : event.clientY
			                        };
			                    }
			                }
			            }

			            function swapEvents(type) {
			                if (type === "on") {
			                    $(document).on(base.ev_types.move, dragMove);
			                    $(document).on(base.ev_types.end, dragEnd);
			                } else if (type === "off") {
			                    $(document).off(base.ev_types.move);
			                    $(document).off(base.ev_types.end);
			                }
			            }

			            function dragStart(event) {
			                var ev = event.originalEvent || event || window.event,
			                    position;

			                if (ev.which === 3) {
			                    return false;
			                }
			                if (base.itemsAmount <= base.options.items) {
			                    return;
			                }
			                if (base.isCssFinish === false && !base.options.dragBeforeAnimFinish) {
			                    return false;
			                }
			                if (base.isCss3Finish === false && !base.options.dragBeforeAnimFinish) {
			                    return false;
			                }

			                if (base.options.autoPlay !== false) {
			                    window.clearInterval(base.autoPlayInterval);
			                }

			                if (base.browser.isTouch !== true && !base.$owlWrapper.hasClass("grabbing")) {
			                    base.$owlWrapper.addClass("grabbing");
			                }

			                base.newPosX = 0;
			                base.newRelativeX = 0;

			                $(this).css(base.removeTransition());

			                position = $(this).position();
			                locals.relativePos = position.left;

			                locals.offsetX = getTouches(ev).x - position.left;
			                locals.offsetY = getTouches(ev).y - position.top;

			                swapEvents("on");

			                locals.sliding = false;
			                locals.targetElement = ev.target || ev.srcElement;
			            }

			            function dragMove(event) {
			                var ev = event.originalEvent || event || window.event,
			                    minSwipe,
			                    maxSwipe;

			                base.newPosX = getTouches(ev).x - locals.offsetX;
			                base.newPosY = getTouches(ev).y - locals.offsetY;
			                base.newRelativeX = base.newPosX - locals.relativePos;

			                if (typeof base.options.startDragging === "function" && locals.dragging !== true && base.newRelativeX !== 0) {
			                    locals.dragging = true;
			                    base.options.startDragging.apply(base, [base.$elem]);
			                }

			                if ((base.newRelativeX > 8 || base.newRelativeX < -8) && (base.browser.isTouch === true)) {
			                    if (ev.preventDefault !== undefined) {
			                        ev.preventDefault();
			                    } else {
			                        ev.returnValue = false;
			                    }
			                    locals.sliding = true;
			                }

			                if ((base.newPosY > 10 || base.newPosY < -10) && locals.sliding === false) {
			                    $(document).off("touchmove.owl");
			                }

			                minSwipe = function () {
			                    return base.newRelativeX / 5;
			                };

			                maxSwipe = function () {
			                    return base.maximumPixels + base.newRelativeX / 5;
			                };

			                base.newPosX = Math.max(Math.min(base.newPosX, minSwipe()), maxSwipe());
			                if (base.browser.support3d === true) {
			                    base.transition3d(base.newPosX);
			                } else {
			                    base.css2move(base.newPosX);
			                }
			            }

			            function dragEnd(event) {
			                var ev = event.originalEvent || event || window.event,
			                    newPosition,
			                    handlers,
			                    owlStopEvent;

			                ev.target = ev.target || ev.srcElement;

			                locals.dragging = false;

			                if (base.browser.isTouch !== true) {
			                    base.$owlWrapper.removeClass("grabbing");
			                }

			                if (base.newRelativeX < 0) {
			                    base.dragDirection = base.owl.dragDirection = "left";
			                } else {
			                    base.dragDirection = base.owl.dragDirection = "right";
			                }

			                if (base.newRelativeX !== 0) {
			                    newPosition = base.getNewPosition();
			                    base.goTo(newPosition, false, "drag");
			                    if (locals.targetElement === ev.target && base.browser.isTouch !== true) {
			                        $(ev.target).on("click.disable", function (ev) {
			                            ev.stopImmediatePropagation();
			                            ev.stopPropagation();
			                            ev.preventDefault();
			                            $(ev.target).off("click.disable");
			                        });
			                        handlers = $._data(ev.target, "events").click;
			                        owlStopEvent = handlers.pop();
			                        handlers.splice(0, 0, owlStopEvent);
			                    }
			                }
			                swapEvents("off");
			            }
			            base.$elem.on(base.ev_types.start, ".owl-wrapper", dragStart);
			        },

			        getNewPosition : function () {
			            var base = this,
			                newPosition = base.closestItem();

			            if (newPosition > base.maximumItem) {
			                base.currentItem = base.maximumItem;
			                newPosition  = base.maximumItem;
			            } else if (base.newPosX >= 0) {
			                newPosition = 0;
			                base.currentItem = 0;
			            }
			            return newPosition;
			        },
			        closestItem : function () {
			            var base = this,
			                array = base.options.scrollPerPage === true ? base.pagesInArray : base.positionsInArray,
			                goal = base.newPosX,
			                closest = null;

			            $.each(array, function (i, v) {
			                if (goal - (base.itemWidth / 20) > array[i + 1] && goal - (base.itemWidth / 20) < v && base.moveDirection() === "left") {
			                    closest = v;
			                    if (base.options.scrollPerPage === true) {
			                        base.currentItem = $.inArray(closest, base.positionsInArray);
			                    } else {
			                        base.currentItem = i;
			                    }
			                } else if (goal + (base.itemWidth / 20) < v && goal + (base.itemWidth / 20) > (array[i + 1] || array[i] - base.itemWidth) && base.moveDirection() === "right") {
			                    if (base.options.scrollPerPage === true) {
			                        closest = array[i + 1] || array[array.length - 1];
			                        base.currentItem = $.inArray(closest, base.positionsInArray);
			                    } else {
			                        closest = array[i + 1];
			                        base.currentItem = i + 1;
			                    }
			                }
			            });
			            
			            return base.currentItem;
			        },

			        moveDirection : function () {
			            var base = this,
			                direction;
			            if (base.newRelativeX < 0) {
			                direction = "right";
			                base.playDirection = "next";
			            } else {
			                direction = "left";
			                base.playDirection = "prev";
			            }
			            return direction;
			        },

			        customEvents : function () {
			            /*jslint unparam: true*/
			            var base = this;
			            base.$elem.on("owl.next", function () {
			                base.next();
			            });
			            base.$elem.on("owl.prev", function () {
			                base.prev();
			            });
			            base.$elem.on("owl.play", function (event, speed) {
			                base.options.autoPlay = speed;
			                base.play();
			                base.hoverStatus = "play";
			            });
			            base.$elem.on("owl.stop", function () {
			                base.stop();
			                base.hoverStatus = "stop";
			            });
			            base.$elem.on("owl.goTo", function (event, item) {
			                base.goTo(item);
			            });
			            base.$elem.on("owl.jumpTo", function (event, item) {
			                base.jumpTo(item);
			            });
			        },

			        stopOnHover : function () {
			            var base = this;
			            if (base.options.stopOnHover === true && base.browser.isTouch !== true && base.options.autoPlay !== false) {
			                base.$elem.on("mouseover", function () {
			                    base.stop();
			                });
			                base.$elem.on("mouseout", function () {
			                    if (base.hoverStatus !== "stop") {
			                        base.play();
			                    }
			                });
			            }
			        },

			        lazyLoad : function () {
			            var base = this,
			                i,
			                $item,
			                itemNumber,
			                $lazyImg,
			                follow;

			            if (base.options.lazyLoad === false) {
			                return false;
			            }
			            for (i = 0; i < base.itemsAmount; i += 1) {
			                $item = $(base.$owlItems[i]);

			                if ($item.data("owl-loaded") === "loaded") {
			                    continue;
			                }

			                itemNumber = $item.data("owl-item");
			                $lazyImg = $item.find(".lazyOwl");

			                if (typeof $lazyImg.data("src") !== "string") {
			                    $item.data("owl-loaded", "loaded");
			                    continue;
			                }
			                if ($item.data("owl-loaded") === undefined) {
			                    $lazyImg.hide();
			                    $item.addClass("loading").data("owl-loaded", "checked");
			                }
			                if (base.options.lazyFollow === true) {
			                    follow = itemNumber >= base.currentItem;
			                } else {
			                    follow = true;
			                }
			                if (follow && itemNumber < base.currentItem + base.options.items && $lazyImg.length) {
			                    $lazyImg.each(function() {
			                        base.lazyPreload($item, $(this));
			                    });
			                }
			            }
			        },

			        lazyPreload : function ($item, $lazyImg) {
			            var base = this,
			                iterations = 0,
			                isBackgroundImg;

			            if ($lazyImg.prop("tagName") === "DIV") {
			                $lazyImg.css("background-image", "url(" + $lazyImg.data("src") + ")");
			                isBackgroundImg = true;
			            } else {
			                $lazyImg[0].src = $lazyImg.data("src");
			            }

			            function showImage() {
			                $item.data("owl-loaded", "loaded").removeClass("loading");
			                $lazyImg.removeAttr("data-src");
			                if (base.options.lazyEffect === "fade") {
			                    $lazyImg.fadeIn(400);
			                } else {
			                    $lazyImg.show();
			                }
			                if (typeof base.options.afterLazyLoad === "function") {
			                    base.options.afterLazyLoad.apply(this, [base.$elem]);
			                }
			            }

			            function checkLazyImage() {
			                iterations += 1;
			                if (base.completeImg($lazyImg.get(0)) || isBackgroundImg === true) {
			                    showImage();
			                } else if (iterations <= 100) {//if image loads in less than 10 seconds 
			                    window.setTimeout(checkLazyImage, 100);
			                } else {
			                    showImage();
			                }
			            }

			            checkLazyImage();
			        },

			        autoHeight : function () {
			            var base = this,
			                $currentimg = $(base.$owlItems[base.currentItem]).find("img"),
			                iterations;

			            function addHeight() {
			                var $currentItem = $(base.$owlItems[base.currentItem]).height();
			                base.wrapperOuter.css("height", $currentItem + "px");
			                if (!base.wrapperOuter.hasClass("autoHeight")) {
			                    window.setTimeout(function () {
			                        base.wrapperOuter.addClass("autoHeight");
			                    }, 0);
			                }
			            }

			            function checkImage() {
			                iterations += 1;
			                if (base.completeImg($currentimg.get(0))) {
			                    addHeight();
			                } else if (iterations <= 100) { //if image loads in less than 10 seconds 
			                    window.setTimeout(checkImage, 100);
			                } else {
			                    base.wrapperOuter.css("height", ""); //Else remove height attribute
			                }
			            }

			            if ($currentimg.get(0) !== undefined) {
			                iterations = 0;
			                checkImage();
			            } else {
			                addHeight();
			            }
			        },

			        completeImg : function (img) {
			            var naturalWidthType;

			            if (!img.complete) {
			                return false;
			            }
			            naturalWidthType = typeof img.naturalWidth;
			            if (naturalWidthType !== "undefined" && img.naturalWidth === 0) {
			                return false;
			            }
			            return true;
			        },

			        onVisibleItems : function () {
			            var base = this,
			                i;

			            if (base.options.addClassActive === true) {
			                base.$owlItems.removeClass("active");
			            }
			            base.visibleItems = [];
			            for (i = base.currentItem; i < base.currentItem + base.options.items; i += 1) {
			                base.visibleItems.push(i);

			                if (base.options.addClassActive === true) {
			                    $(base.$owlItems[i]).addClass("active");
			                }
			            }
			            base.owl.visibleItems = base.visibleItems;
			        },

			        transitionTypes : function (className) {
			            var base = this;
			            //Currently available: "fade", "backSlide", "goDown", "fadeUp"
			            base.outClass = "owl-" + className + "-out";
			            base.inClass = "owl-" + className + "-in";
			        },

			        singleItemTransition : function () {
			            var base = this,
			                outClass = base.outClass,
			                inClass = base.inClass,
			                $currentItem = base.$owlItems.eq(base.currentItem),
			                $prevItem = base.$owlItems.eq(base.prevItem),
			                prevPos = Math.abs(base.positionsInArray[base.currentItem]) + base.positionsInArray[base.prevItem],
			                origin = Math.abs(base.positionsInArray[base.currentItem]) + base.itemWidth / 2,
			                animEnd = 'webkitAnimationEnd oAnimationEnd MSAnimationEnd animationend';

			            base.isTransition = true;

			            base.$owlWrapper
			                .addClass('owl-origin')
			                .css({
			                    "-webkit-transform-origin" : origin + "px",
			                    "-moz-perspective-origin" : origin + "px",
			                    "perspective-origin" : origin + "px"
			                });
			            function transStyles(prevPos) {
			                return {
			                    "position" : "relative",
			                    "left" : prevPos + "px"
			                };
			            }

			            $prevItem
			                .css(transStyles(prevPos, 10))
			                .addClass(outClass)
			                .on(animEnd, function () {
			                    base.endPrev = true;
			                    $prevItem.off(animEnd);
			                    base.clearTransStyle($prevItem, outClass);
			                });

			            $currentItem
			                .addClass(inClass)
			                .on(animEnd, function () {
			                    base.endCurrent = true;
			                    $currentItem.off(animEnd);
			                    base.clearTransStyle($currentItem, inClass);
			                });
			        },

			        clearTransStyle : function (item, classToRemove) {
			            var base = this;
			            item.css({
			                "position" : "",
			                "left" : ""
			            }).removeClass(classToRemove);

			            if (base.endPrev && base.endCurrent) {
			                base.$owlWrapper.removeClass('owl-origin');
			                base.endPrev = false;
			                base.endCurrent = false;
			                base.isTransition = false;
			            }
			        },

			        owlStatus : function () {
			            var base = this;
			            base.owl = {
			                "userOptions"   : base.userOptions,
			                "baseElement"   : base.$elem,
			                "userItems"     : base.$userItems,
			                "owlItems"      : base.$owlItems,
			                "currentItem"   : base.currentItem,
			                "prevItem"      : base.prevItem,
			                "visibleItems"  : base.visibleItems,
			                "isTouch"       : base.browser.isTouch,
			                "browser"       : base.browser,
			                "dragDirection" : base.dragDirection
			            };
			        },

			        clearEvents : function () {
			            var base = this;
			            base.$elem.off(".owl owl mousedown.disableTextSelect");
			            $(document).off(".owl owl");
			            $(window).off("resize", base.resizer);
			        },

			        unWrap : function () {
			            var base = this;
			            if (base.$elem.children().length !== 0) {
			                base.$owlWrapper.unwrap();
			                base.$userItems.unwrap().unwrap();
			                if (base.owlControls) {
			                    base.owlControls.remove();
			                }
			            }
			            base.clearEvents();
			            base.$elem.attr({
			                style: base.$elem.data("owl-originalStyles") || "",
			                class: base.$elem.data("owl-originalClasses")
			            });
			        },

			        destroy : function () {
			            var base = this;
			            base.stop();
			            window.clearInterval(base.checkVisible);
			            base.unWrap();
			            base.$elem.removeData();
			        },

			        reinit : function (newOptions) {
			            var base = this,
			                options = $.extend({}, base.userOptions, newOptions);
			            base.unWrap();
			            base.init(options, base.$elem);
			        },

			        addItem : function (htmlString, targetPosition) {
			            var base = this,
			                position;

			            if (!htmlString) {return false; }

			            if (base.$elem.children().length === 0) {
			                base.$elem.append(htmlString);
			                base.setVars();
			                return false;
			            }
			            base.unWrap();
			            if (targetPosition === undefined || targetPosition === -1) {
			                position = -1;
			            } else {
			                position = targetPosition;
			            }
			            if (position >= base.$userItems.length || position === -1) {
			                base.$userItems.eq(-1).after(htmlString);
			            } else {
			                base.$userItems.eq(position).before(htmlString);
			            }

			            base.setVars();
			        },

			        removeItem : function (targetPosition) {
			            var base = this,
			                position;

			            if (base.$elem.children().length === 0) {
			                return false;
			            }
			            if (targetPosition === undefined || targetPosition === -1) {
			                position = -1;
			            } else {
			                position = targetPosition;
			            }

			            base.unWrap();
			            base.$userItems.eq(position).remove();
			            base.setVars();
			        }

			    };

			    $.fn.owlCarousel = function (options) {
			        return this.each(function () {
			            if ($(this).data("owl-init") === true) {
			                return false;
			            }
			            $(this).data("owl-init", true);
			            var carousel = Object.create(Carousel);
			            carousel.init(options, this);
			            $.data(this, "owlCarousel", carousel);
			        });
			    };

			    $.fn.owlCarousel.options = {

			        items : 5,
			        itemsCustom : false, 
					itemsDesktop : [1080, 4],
			        itemsTablet : [991, 3], 
					itemsTabletSmall : [480, 2],	
			        itemsMobile : [414, 1], 
			        singleItem : false,
			        itemsScaleUp : false,

			        slideSpeed : 200,
			        paginationSpeed : 800,
			        rewindSpeed : 1000,

			        autoPlay : false,
			        stopOnHover : false,

			        navigation : false,
			        navigationText : ["prev", "next"],
			        rewindNav : true,
			        scrollPerPage : false,

			        pagination : true,
			        paginationNumbers : false,

			        responsive : true,
			        responsiveRefreshRate : 200,
			        responsiveBaseWidth : window,

			        baseClass : "owl-carousel",
			        theme : "owl-theme",

			        lazyLoad : false,
			        lazyFollow : true,
			        lazyEffect : "fade",

			        autoHeight : false,

			        jsonPath : false,
			        jsonSuccess : false,

			        dragBeforeAnimFinish : true,
			        mouseDrag : true,
			        touchDrag : true,

			        addClassActive : false,
			        transitionStyle : false,

			        beforeUpdate : false,
			        afterUpdate : false,
			        beforeInit : false,
			        afterInit : false,
			        beforeMove : false,
			        afterMove : false,
			        afterAction : false,
			        startDragging : false,
			        afterLazyLoad: false
			    };
			}(jQuery, window, document));

			
			
			$("#owl-demo").owlCarousel({
				 
				  autoPlay: 3000, //Set AutoPlay to 3 seconds
			 
				  items : 5,
				  itemsDesktop : [640,4],
				  itemsDesktopSmall : [414,3]
			 
				});
			 
			
		}
			
			
		});
		
		//电影列表
	$.ajax({
      		
			url:"${pageContext.request.contextPath}/selectMovieController/selectionMovieByPage"	,
			type:"GET",
			datatype:"json",
			data:{pageNum:1},		
			success:function(data){
			
				$("#savePageSize").val(data.pages);
				$("#savePageNum").val(data.pageNum);
				var dataList = data.list;
				for (var i = 0; i < dataList.length; i++) {	
					if(dataList[i].movieStatus==0){
						$("#selectionmovie").append(
								'<div class="col-md-2 w3l-movie-gride-agile">'+
								'<a href="${pageContext.request.contextPath}/playerpage.jsp?mid='+dataList[i].movieId+'" class="hvr-shutter-out-horizontal"><img src="'+dataList[i].movieImg+'" title="album-name" class="img-responsive" alt=" " />'+
									'<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>'+
								'</a>'+
								'<div class="mid-1 agileits_w3layouts_mid_1_home">'+
									'<div class="w3l-movie-text">'+
										'<h6><a href="${pageContext.request.contextPath}/playerpage.jsp?mid='+dataList[i].movieId+'">'+dataList[i].movieName+'</a></h6>'+							
									'</div>'+
									'<div class="mid-2 agile_mid_2_home">'+
										'<p>'+dataList[i].datetime+'</p>'+
										'<div class="block-stars">'+
											'<ul class="w3l-ratings">'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>'+
											'</ul>'+
										'</div>'+
										'<div class="clearfix"></div>'+
									'</div>'+
								'</div>'+
								'<div class="ribben">'+
									'<p>免费</p>'+
								'</div>'+
							'</div>'
							);
					}else{	
						$("#selectionmovie").append(
								'<div class="col-md-2 w3l-movie-gride-agile">'+
								'<a   href="javascript:void(0)" class="hvr-shutter-out-horizontal movievip1"><img src="'+dataList[i].movieImg+'" title="album-name" class="img-responsive" alt=" " />'+
									'<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>'+
								'</a>'+
								'<div class="mid-1 agileits_w3layouts_mid_1_home">'+
									'<div class="w3l-movie-text">'+
										'<h6><a href="${pageContext.request.contextPath}/playerpage.jsp?mid='+dataList[i].movieId+'">'+dataList[i].movieName+'</a></h6>'+							
									'</div>'+
									'<div class="mid-2 agile_mid_2_home">'+
										'<p>'+dataList[i].datetime+'</p>'+
										'<div class="block-stars">'+
											'<ul class="w3l-ratings">'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>'+
											'</ul>'+
										'</div>'+
										'<div class="clearfix"></div>'+
									'</div>'+
								'</div>'+
								'<div class="ribben">'+
									'<p>VIP</p>'+
								'</div>'+
							'</div>'
							);
					}
					
					
				}
				
				//分页页面显示
		          $("#pager").pager({ pagenumber: 1, pagecount:$("#savePageSize").val() , buttonClickCallback: PageClick });
				
				$(".movievip1").click(function () {
			 		 
					 var userName='${user.userName}';
					 var userStatus='${user.userStatus}';
					 var movieId=$(this).attr("title");
					  if( userName ==""){
						  alert("影片为VIP权限,请先登录")
							location.href="${pageContext.request.contextPath}/index.jsp";
					  }else if(userStatus==0){
						  alert("请先充值VIP");
						  location.href="${pageContext.request.contextPath}/index.jsp";
					  }else{
						 
						  location.href="${pageContext.request.contextPath}/playerpage.jsp?mid="+movieId;				  
				  }
				}); 
			
				
		     	
			}
			
		});
		
		//热门电影
		$.ajax({
			url:"${pageContext.request.contextPath}/selectMovieController/selecthostmovie_ajax"	,
			type:"GET",
			datatype:"json",
			success:function(data){
				
				for (var i = 0; i < data.length; i++) {
					if(data[i].movieStatus==0){
						$("#selecthotmovie").append(
								'<div class="col-md-2 w3l-movie-gride-agile">'+
								'<a href="${pageContext.request.contextPath}/playerpage.jsp?mid='+data[i].movieId+'" class="hvr-shutter-out-horizontal"><img src="'+data[i].movieImg+'" title="album-name" class="img-responsive" alt=" " />'+
								'<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>'+
							'</a>'+
							'<div class="mid-1 agileits_w3layouts_mid_1_home">'+
								'<div class="w3l-movie-text">'+
									'<h6><a href="${pageContext.request.contextPath}/playerpage.jsp?mid='+data[i].movieId+'">'+data[i].movieName+'</a></h6>'+							
								'</div>'+
								'<div class="mid-2 agile_mid_2_home">'+
									'<p>'+data[i].datetime+'</p>'+
									'<div class="block-stars">'+
										'<ul class="w3l-ratings">'+
											'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>'+
										'</ul>'+
									'</div>'+
									'<div class="clearfix"></div>'+
								'</div>'+
							'</div>'+
							'<div class="ribben">'+
								'<p>免费</p>'+
							'</div>'+
						'</div>'
						);
					}else{
						$("#selecthotmovie").append(
								'<div class="col-md-2 w3l-movie-gride-agile">'+
								'<a title="'+data[i].movieId+'" href="javascript:void(0)" class="hvr-shutter-out-horizontal movievip2 "><img src="'+data[i].movieImg+'" title="album-name" class="img-responsive" alt=" " />'+
								'<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>'+
							'</a>'+
							'<div class="mid-1 agileits_w3layouts_mid_1_home">'+
								'<div class="w3l-movie-text">'+
									'<h6><a href="${pageContext.request.contextPath}/playerpage.jsp?mid='+data[i].movieId+'">'+data[i].movieName+'</a></h6>'+							
								'</div>'+
								'<div class="mid-2 agile_mid_2_home">'+
									'<p>'+data[i].datetime+'</p>'+
									'<div class="block-stars">'+
										'<ul class="w3l-ratings">'+
											'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>'+
										'</ul>'+
									'</div>'+
									'<div class="clearfix"></div>'+
								'</div>'+
							'</div>'+
							'<div class="ribben">'+
								'<p>VIP</p>'+
							'</div>'+
						'</div>'
						);
					}
				
				}
				
				$(".movievip2").click(function () {
			 		 
					 var userName='${user.userName}';
					 var userStatus='${user.userStatus}';
					 var movieId=$(this).attr("title");
					  if( userName ==""){
						  alert("影片为VIP权限,请先登录")
							location.href="${pageContext.request.contextPath}/index.jsp";
					  }else if(userStatus==0){
						  alert("请先充值VIP");
						  location.href="${pageContext.request.contextPath}/index.jsp";
					  }else{
						  
						  location.href="${pageContext.request.contextPath}/playerpage.jsp?mid="+movieId;				  
				  }
				}); 
						
			}
			
		});
		
		
		
		//评分最高
		$.ajax({
			url:"${pageContext.request.contextPath}/selectMovieController/selectscoremovie_ajax"	,
			type:"GET",
			datatype:"json",
			success:function(data){
				for (var i = 0; i < data.length; i++) {
					if(data[i].movieStatus==0){
						$("#scoremovie").append(
								'<div class="col-md-2 w3l-movie-gride-agile">'+
								'<a href="${pageContext.request.contextPath}/playerpage.jsp?mid='+data[i].movieId+'" class="hvr-shutter-out-horizontal"><img src="'+data[i].movieImg+'" title="album-name" class="img-responsive" alt=" " />'+
								'<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>'+
							'</a>'+
							'<div class="mid-1 agileits_w3layouts_mid_1_home">'+
								'<div class="w3l-movie-text">'+
									'<h6><a href="${pageContext.request.contextPath}/playerpage.jsp?mid='+data[i].movieId+'">'+data[i].movieName+'</a></h6>'+							
								'</div>'+
								'<div class="mid-2 agile_mid_2_home">'+
									'<p>'+data[i].datetime+'</p>'+
									'<div class="block-stars">'+
										'<ul class="w3l-ratings">'+
											'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>'+
										'</ul>'+
									'</div>'+
									'<div class="clearfix"></div>'+
								'</div>'+
							'</div>'+
							'<div class="ribben">'+
								'<p>免费</p>'+
							'</div>'+
						'</div>'
						);
						
					}else{
						$("#scoremovie").append(
								'<div class="col-md-2 w3l-movie-gride-agile">'+
								'<a  title="'+data[i].movieId+'" href="javascript:void(0)" class="hvr-shutter-out-horizontal movievip3"><img src="'+data[i].movieImg+'" title="album-name" class="img-responsive" alt=" " />'+
								'<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>'+
							'</a>'+
							'<div class="mid-1 agileits_w3layouts_mid_1_home">'+
								'<div class="w3l-movie-text">'+
									'<h6><a href="${pageContext.request.contextPath}/playerpage.jsp?mid='+data[i].movieId+'">'+data[i].movieName+'</a></h6>'+							
								'</div>'+
								'<div class="mid-2 agile_mid_2_home">'+
									'<p>'+data[i].datetime+'</p>'+
									'<div class="block-stars">'+
										'<ul class="w3l-ratings">'+
											'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>'+
										'</ul>'+
									'</div>'+
									'<div class="clearfix"></div>'+
								'</div>'+
							'</div>'+
							'<div class="ribben">'+
								'<p>VIP</p>'+
							'</div>'+
						'</div>'
						);
					}
				
				}
				$(".movievip3").click(function () {
			 		 
					 var userName='${user.userName}';
					 var userStatus='${user.userStatus}';
					 var movieId=$(this).attr("title");
					  if( userName ==""){
						  alert("影片为VIP权限,请先登录")
							location.href="${pageContext.request.contextPath}/index.jsp";
					  }else if(userStatus==0){
						  alert("请先充值VIP");
						  location.href="${pageContext.request.contextPath}/index.jsp";
					  }else{
						  
						  location.href="${pageContext.request.contextPath}/playerpage.jsp?mid="+movieId;				  
				  }
				});
				
			}
			
			
		});
		
		//最近添加
		$.ajax({
			url:"${pageContext.request.contextPath}/selectMovieController/selectnewmovie_ajax"	,
			type:"GET",
			datatype:"json",
			success:function(data){
			
				for (var i = 0; i < data.length; i++) {
					if(data[i].movieStatus==0){
						$("#newmovie").append(
								'<div class="col-md-2 w3l-movie-gride-agile">'+
								'<a href="${pageContext.request.contextPath}/playerpage.jsp?mid='+data[i].movieId+'" class="hvr-shutter-out-horizontal"><img src="'+data[i].movieImg+'" title="album-name" class="img-responsive" alt=" " />'+
								'<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>'+
							'</a>'+
							'<div class="mid-1 agileits_w3layouts_mid_1_home">'+
								'<div class="w3l-movie-text">'+
									'<h6><a href="${pageContext.request.contextPath}/playerpage.jsp?mid='+data[i].movieId+'">'+data[i].movieName+'</a></h6>'+							
								'</div>'+
								'<div class="mid-2 agile_mid_2_home">'+
									'<p>'+data[i].datetime+'</p>'+
									'<div class="block-stars">'+
										'<ul class="w3l-ratings">'+
											'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>'+
										'</ul>'+
									'</div>'+
									'<div class="clearfix"></div>'+
								'</div>'+
							'</div>'+
							'<div class="ribben">'+
								'<p>免费</p>'+
							'</div>'+
						'</div>'
						);
					}else{
						$("#newmovie").append(
								'<div class="col-md-2 w3l-movie-gride-agile">'+
								'<a   title="'+data[i].movieId+'" href="javascript:void(0)" class="hvr-shutter-out-horizontal movievip4"><img src="'+data[i].movieImg+'" title="album-name" class="img-responsive" alt=" " />'+
								'<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>'+
							'</a>'+
							'<div class="mid-1 agileits_w3layouts_mid_1_home">'+
								'<div class="w3l-movie-text">'+
									'<h6><a href="${pageContext.request.contextPath}/playerpage.jsp?mid='+data[i].movieId+'">'+data[i].movieName+'</a></h6>'+							
								'</div>'+
								'<div class="mid-2 agile_mid_2_home">'+
									'<p>'+data[i].datetime+'</p>'+
									'<div class="block-stars">'+
										'<ul class="w3l-ratings">'+
											'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>'+
											'<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>'+
										'</ul>'+
									'</div>'+
									'<div class="clearfix"></div>'+
								'</div>'+
							'</div>'+
							'<div class="ribben">'+
								'<p>VIP</p>'+
							'</div>'+
						'</div>'
						);
					}
					
				}
				
				$(".movievip4").click(function () {
			 		 
					 var userName='${user.userName}';
					 var userStatus='${user.userStatus}';
					 var movieId=$(this).attr("title");
					  if( userName ==""){
						  alert("影片为VIP权限,请先登录")
							location.href="${pageContext.request.contextPath}/index.jsp";
					  }else if(userStatus==0){
						  alert("请先充值VIP");
						  location.href="${pageContext.request.contextPath}/index.jsp";
					  }else{
						  
						  location.href="${pageContext.request.contextPath}/playerpage.jsp?mid="+movieId;				  
				  }
				});
			}
			
		});
		
	});     
      
       //回调分页方法
  PageClick = function(pageclickednumber) {
          $("#pager").pager({ pagenumber: pageclickednumber, pagecount: $("#savePageSize").val(), buttonClickCallback: PageClick });
          $("#result").html("Clicked Page " + pageclickednumber);
          //放AJAX
          
      	$.ajax({
      		
			url:"${pageContext.request.contextPath}/selectMovieController/selectionMovieByPage"	,
			type:"GET",
			datatype:"json",
			data:{pageNum:pageclickednumber},		
			success:function(data){
				
				$("#savePageSize").val(data.pages);
				$("#savePageNum").val(data.pageNum);
				var dataList = data.list;
				$("#selectionmovie").empty();
				for (var i = 0; i < dataList.length; i++) {
					if(dataList[i].movieStatus==0){
						$("#selectionmovie").append(
								'<div class="col-md-2 w3l-movie-gride-agile">'+
								'<a href="${pageContext.request.contextPath}/playerpage.jsp?mid='+dataList[i].movieId+'" class="hvr-shutter-out-horizontal"><img src="'+dataList[i].movieImg+'" title="album-name" class="img-responsive" alt=" " />'+
									'<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>'+
								'</a>'+
								'<div class="mid-1 agileits_w3layouts_mid_1_home">'+
									'<div class="w3l-movie-text">'+
										'<h6><a id="vipByname"href="${pageContext.request.contextPath}/playerpage.jsp?mid='+dataList[i].movieId+'">'+dataList[i].movieName+'</a></h6>'+							
									'</div>'+
									'<div class="mid-2 agile_mid_2_home">'+
										'<p>'+dataList[i].datetime+'</p>'+
										'<div class="block-stars">'+
											'<ul class="w3l-ratings">'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>'+
											'</ul>'+
										'</div>'+
										'<div class="clearfix"></div>'+
									'</div>'+
								'</div>'+
								'<div class="ribben">'+
									'<p>免费</p>'+
								'</div>'+
							'</div>'
							);
					}else{
						$("#selectionmovie").append(
								'<div  class="col-md-2 w3l-movie-gride-agile">'+
								'<a  href="javascript:void(0)" class="hvr-shutter-out-horizontal movievip "><img src="'+dataList[i].movieImg+'" title="album-name" class="img-responsive" alt=" " />'+
									'<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>'+
								'</a>'+
								'<div class="mid-1 agileits_w3layouts_mid_1_home">'+
									'<div class="w3l-movie-text">'+
										'<h6><a href="${pageContext.request.contextPath}/playerpage.jsp?mid='+dataList[i].movieId+'">'+dataList[i].movieName+'</a></h6>'+							
									'</div>'+
									'<div class="mid-2 agile_mid_2_home">'+
										'<p>'+dataList[i].datetime+'</p>'+
										'<div class="block-stars">'+
											'<ul class="w3l-ratings">'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>'+
												'<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>'+
											'</ul>'+
										'</div>'+
										'<div class="clearfix"></div>'+
									'</div>'+
								'</div>'+
								'<div class="ribben">'+
									'<p>VIP</p>'+
								'</div>'+
							'</div>'
							);
					}
					
					
				}
				$(".movievip").click(function () {
			 		 
					 var userName='${user.userName}';
					 var userStatus='${user.userStatus}';
					 var movieId=$(this).attr("title");
					  if( userName ==""){
						  alert("影片为VIP权限,请先登录")
							location.href="${pageContext.request.contextPath}/index.jsp";
					  }else if(userStatus==0){
						  alert("请先充值VIP");
						  location.href="${pageContext.request.contextPath}/index.jsp";
					  }else{
						
						  location.href="${pageContext.request.contextPath}/playerpage.jsp?mid="+movieId;				  
				  }
				});
				
			}
			
		});
      }  
       
  /*----------------------------------主页页面登入注册功能------------------------------------ */

</script> 

<script type="text/javascript">
var msg= "${requestScope.msg}";
if(msg != ""){
	alert(msg);
}
var msg1= "${requestScope.msg1}";
	if(msg1 != ""){
	alert(msg1);
	}
var msg2 = "${requestScope.msg2}";
	if (msg2 != "") {
		alert(msg2);
	}
	var msg3 = "${requestScope.msg3}";
	if (msg3 != "") {
		alert(msg3);
	}

</script> 
<!-- //banner-bottom-plugin -->
<!-- <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>
 --><!-- start-smoth-scrolling -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/move-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
</head>
	
<body>
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="w3layouts_logo">
				<a href="index.html"><h1>One<span>Movies</span></h1></a>
			</div>
			<form action="${pageContext.request.contextPath}/Genres/queryMovieByLike" method="post">
			<div class="w3_search">
				
					<input type="text" name="movieName" placeholder="请输入电影名称" required="">
					<input type="submit" value="搜索">
			
			</div>
			</form>
			<div class="w3l_sign_in_register">
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
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->
<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="w3_login_module">
							<div class="module form-module">
							  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
								<div class="tooltip">切换窗口</div>
							  </div>
							  <div class="form">
								<h3>用户登录</h3>
								<form action="${pageContext.request.contextPath}/usersController/login" method="post">
								  <input type="text" name="userName" placeholder="请输入用户名"   required=""/>
								  <input type="password" name="userPwd" placeholder="请输入密码"  required=""/>
								 <div >  
				     
                 <input type="text"   id="validationCode" name="validationCode" placeholder="验证码" class="shurukuang" />
             	</div>
             	 
             	<div class="ssss"> 
             	<span>验证码:</span>
                  <img id="validationCode_img"  src="${pageContext.request.contextPath }/usersController/drawValiddateCode" onclick="flushCode()" />
                  </div>
								  <input type="submit" value="登录">
								</form>
							  </div>
							  <div class="form">
								<h3>用户注册</h3>
								<form action="${pageContext.request.contextPath}/usersController/register" method="post">
								  <input type="text" name="userName" id="userName1" placeholder="请输入用户名"  required=""/>
								  <span id="userNameMsg"><font color="gray" style="font-size:12px;">*eg:小明</font></span>
								  
								  <input type="text" name="userPwd" id="userPwd" placeholder="请输入密码" onblur="checkPassword ()" required=""/>
								  <span id="userPwdMsg"><font color="gray"  style="font-size:12px;">*字母数字组合,6-20位</font></span>
								 
								  <input type="password" name="userPwd2" id="userPwd2" placeholder="确认密码" onblur="checkPassword_2 ()" required=""/>
								  <span id="userPwdMsg2"><font color="gray"  style="font-size:12px;">*字母数字组合,6-20位,和密码一致</font></span>
								  
								  <input type="text" name="userNickname" placeholder="请输入昵称" required=""/>
								     性别:&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="userSex" value="男" checked="checked"/>男 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  <input type="radio" name="userSex" value="女" />女
								  <br/><br/>
								  <input type="hidden" name="userStatus" value="1">  <!--注册用户状态默认为1 -->
<!--  <input type="hidden" name="vipTime" value=""> -->  <!--注册用户vip时间默认为空,后台数据库用datatime类型 -->
								  <input type="submit" id="register" value="注册">
								  
								</form>
							  </div>
							<!--   <div class="cta"><a href="#">忘记密码?</a></div> -->
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	
	<script>
	
	
	
		$('.toggle').click(function(){
		  // Switches the Icon
		  $(this).children('i').toggleClass('fa-pencil');
		  // Switches the forms  
		  $('.form').animate({
			height: "toggle",
			'padding-top': 'toggle',
			'padding-bottom': 'toggle',
			opacity: "toggle"
		  }, "slow");
		});
	</script>
	
	<!--注册信息验证  -->
	
	<script type="text/javascript">
	//换取验证码图片
	function flushCode(){	
		document.getElementById("validationCode_img").src="${pageContext.request.contextPath }/usersController/drawValiddateCode?d="+Math.random();
	}
	 /* 验证登录界面用户名格式  */
	 $(function(){
		 $("#userName1").blur(function(){ 
						
				 if($("#userName1").val().trim()== ""){
					 $("#userNameMsg").text("*用户名不能为空!");
				 }else
				 { 	
						// 判断注册时用户名是否重复
					$.ajax({
							url:"${pageContext.request.contextPath}/usersController/queryByUserName",
							type:"POST",
							data:{userName:$("#userName1").val()},
							dataType:"text",
							success:function(data){
								$("#userNameMsg").text(data);	
							}
						}); 
					
				 
				 }
				 
 
	 });
	 });
	    	   
		
				//判断输入密码是否符合要求
				var userPwd;
				var userPwd2;
				function checkPassword () {
					userPwd = document.getElementById("userPwd").value;
					var pattren = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$/;
					
					if(userPwd==""){	
						document.getElementById("userPwdMsg").innerHTML = "*密码不能为空";
						return false;
					}else{
						if (pattren.test(userPwd)) {
							document.getElementById("userPwdMsg").innerHTML = "<img src='${pageContext.request.contextPath }/images/timg.jpg' width='20px' height='20px' />";
							 return true;
						}else{
							document.getElementById("userPwdMsg").innerHTML = "*密码验证不通过...";
							return false;
						}
						
					}
				}
				//判断两次输入的密码是否相同
			 	function checkPassword_2 () {
					userPwd = document.getElementById("userPwd").value;
					userPwd2 = document.getElementById("userPwd2").value;
					if(userPwdMsg2==""){
						document.getElementById("userPwdMsg2").innerHTML = "*密码不能为空";
						return false;
					}else{
						if (userPwd == userPwd2) {
							document.getElementById("userPwdMsg2").innerHTML = "<img src='${pageContext.request.contextPath }/images/timg.jpg' width='20px' height='20px' />";
							return true;
						}else{
							document.getElementById("userPwdMsg2").innerHTML = "*两次输入密码不一致";
							return false;
						}
						
					}
				
				} 
	
	
	</script>
<!-- //bootstrap-pop-up -->
<!-- nav -->
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
							<li class="active"><a href="${pageContext.request.contextPath}/index.jsp">首页</a></li>
							
							<li><a href="${pageContext.request.contextPath}/genres.jsp">影库 </a></li>
						<li><a href="${pageContext.request.contextPath}/genres.jsp">类型</a></li>
							
							<li><a  id="center" href="javascript:void(0)">个人中心</a></li>							
							
							
						</ul>
					</nav>
				</div>
			</nav>	
		</div>
	</div>
<!-- //nav -->
<!-- banner -->
	<div id="slidey" style="display:none;">
		<ul>
			<li><img src="${pageContext.request.contextPath}/images/5.jpg" alt=" "><p class='title'>人猿泰山</p><p class='description'> 泰山已经适应了伦敦的生活，他被叫回了他在丛林中的老家，调查一个采矿营地的活动。</p></li>
			<li><img src="${pageContext.request.contextPath}/images/2.jpg" alt=" "><p class='title'>最高骑士</p><p class='description'>六个与鸟类DNA进行基因杂交的孩子，乘坐飞机在全国各地寻找他们的起源。一路上，他们神秘的过去是……</p></li>
			<li><img src="${pageContext.request.contextPath}/images/3.jpg" alt=" "><p class='title'>独立日</p><p class='description'>当美国总统和美国公民决定这些外星人是否值得信任时，人类的命运就悬于一线。或担心。</p></li>
			<li><img src="${pageContext.request.contextPath}/images/4.jpg" alt=" "><p class='title'>乌龙特工</p><p class='description'>鲍勃·斯通(道恩·约翰逊饰)在高中同学聚会上被同学们欺负，因为他体重超标。声称自己处于绝密状态…</p></li>
			<li><img src="${pageContext.request.contextPath}/images/6.jpg" alt=" "><p class='title'>冰河世纪</p><p class='description'>在影片的尾声，斯奎特一直在努力控制这艘外星飞船，直到它在火星上坠毁，毁灭了这个星球上的所有生命。</p></li>
			<li><img src="${pageContext.request.contextPath}/images/7.jpg" alt=" "><p class='title'>X - 战警</p><p class='description'>1977年，超自然现象调查员Ed (Patrick Wilson饰)和Lorraine Warren结束了自己的休假，前往北部的恩菲尔德(Enfield)……</p></li>
		</ul>   	
    </div>
    <script src="${pageContext.request.contextPath}/js/jquery.slidey.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.dotdotdot.min.js"></script>
	   <script type="text/javascript">
			$("#slidey").slidey({
				interval: 8000,
				listCount: 5,
				autoplay: false,
				showList: true
			});
			$(".slidey-list-description").dotdotdot();
		</script>
<!-- //banner -->
<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="w3_agile_banner_bottom_grid" >
				<div id="owl-demo" class="owl-carousel owl-theme">
							<!-- 电影轮播	 -->		
				</div>
			</div>			
		</div>
	</div>
	<div class="tlinks">Collect from <a href="http://www.cssmoban.com/" ></a></div>
<!-- //banner-bottom -->
<div class="general_social_icons">
	<nav class="social">
		<ul>
			<li class="w3_twitter"><a href="#">Twitter <i class="fa fa-twitter"></i></a></li>
			<li class="w3_facebook"><a href="#">Facebook <i class="fa fa-facebook"></i></a></li>
			<li class="w3_dribbble"><a href="#">Dribbble <i class="fa fa-dribbble"></i></a></li>
			<li class="w3_g_plus"><a href="#">Google+ <i class="fa fa-google-plus"></i></a></li>				  
		</ul>
  </nav>
</div>
<!-- general -->
	<div class="general">
		<h4 class="latest-text w3_latest_text">精选电影</h4>
		<div class="container">
			<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
				<ul id="myTab" class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">电影列表</a></li>
					<li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" aria-expanded="false">热门观看</a></li>
					<li role="presentation"><a href="#rating" id="rating-tab" role="tab" data-toggle="tab" aria-controls="rating" aria-expanded="true">评分最高</a></li>
					<li role="presentation"><a href="#imdb" role="tab" id="imdb-tab" data-toggle="tab" aria-controls="imdb" aria-expanded="false">最近添加</a></li>
				</ul>
				<div id="myTabContent" class="tab-content">
				
					<div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
						<div class="w3_agile_featured_movies" id="selectionmovie">
						    <!-- 精选推荐 -->
	
							<div class="clearfix"> </div>
						</div>
					</div>
					
					<div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
						
						<div class="w3_agile_featured_movies" id="selecthotmovie">
						    <!-- 热门电影 -->
	
							<div class="clearfix"> </div>
						</div>
					</div>
					
					<div id="pager"></div>
					<div role="tabpanel" class="tab-pane fade" id="rating" aria-labelledby="rating-tab">
					<div class="w3_agile_featured_movies" id="scoremovie">
						     <!-- 评分最高 -->
	
							<div class="clearfix"> </div>
						</div>
					
					</div>
					<div role="tabpanel" class="tab-pane fade" id="imdb" aria-labelledby="imdb-tab">
					<div class="w3_agile_featured_movies" id="newmovie">
						     <!-- 最近添加-->
	
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- //general -->
<!-- Latest-tv-series -->

	<!-- pop-up-box -->  
		<script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.js" type="text/javascript"></script>
	<!--//pop-up-box -->
	<div id="small-dialog" class="mfp-hide">
		<!---<iframe src="https://player.vimeo.com/video/164819130?title=0&byline=0"></iframe>--->
	</div>
	<div id="small-dialog1" class="mfp-hide">
		<!---<iframe src="https://player.vimeo.com/video/148284736"></iframe>--->
	</div>
	<div id="small-dialog2" class="mfp-hide">
		<!---<iframe src="https://player.vimeo.com/video/165197924?color=ffffff&title=0&byline=0&portrait=0"></iframe>--->
	</div>
	<script>
		$(document).ready(function() {
		$('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
			type: 'inline',
			fixedContentPos: false,
			fixedBgPos: true,
			overflowY: 'auto',
			closeBtnInside: true,
			preloader: false,
			midClick: true,
			removalDelay: 300,
			mainClass: 'my-mfp-zoom-in'
		});
																		
		});
	</script>
<!-- //Latest-tv-series -->
<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="w3ls_footer_grid">
				<div class="col-md-6 w3ls_footer_grid_left">
					<div class="w3ls_footer_grid_left1">
						<h2>Subscribe to us</h2>
						<div class="w3ls_footer_grid_left1_pos">
							<form action="#" method="post">
								<input type="email" name="email" placeholder="Your email..." required="">
								<input type="submit" value="Send">
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-6 w3ls_footer_grid_right">
					<a href="index.html"><h2>One<span>Movies</span></h2></a>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-5 w3ls_footer_grid1_left">
				<p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="æ¨¡æ¿ä¹å®¶">æ¨¡æ¿ä¹å®¶</a> - Collect from <a href="http://www.cssmoban.com/" title="ç½é¡µæ¨¡æ¿" target="_blank">ç½é¡µæ¨¡æ¿</a></p>
			</div>
			<div class="col-md-7 w3ls_footer_grid1_right">
				<ul>
					<li>
						<a href="genres.html">Movies</a>
					</li>
					<li>
						<a href="faq.html">FAQ</a>
					</li>
					<li>
						<a href="horror.html">Action</a>
					</li>
					<li>
						<a href="genres.html">Adventure</a>
					</li>
					<li>
						<a href="comedy.html">Comedy</a>
					</li>
					<li>
						<a href="icons.html">Icons</a>
					</li>
					<li>
						<a href="contact.html">Contact Us</a>
					</li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //footer -->
<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
<!-- //Bootstrap Core JavaScript -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
<input type="text" id="savePageNum" value="" />
<input type="text" id="savePageSize" value="" />
</body>
</html>