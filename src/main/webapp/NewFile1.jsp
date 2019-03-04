<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js"></script>
<script>
$(function(){
	$(document).on("click",function(){
		$("#tt").hide();
		});
	$("#dd").click(function(event){
		
		$("#tt").show();
		event.stopPropagation();
		});
	})
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	
	<P style="display: block" id="tt">这是n1</P>
	<div id="dd" style="border: 1px solid red">ddd</div>
	<button>dd</button>
</body>
</html>