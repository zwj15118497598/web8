<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
</head>
<body>
<input type="button" value="获取ajax值" id="btn1"/>
</body>
<script type="text/javascript">
	$("#btn1").click(function(){
		$.ajax({
			url:getProRootPath()+"/s2",
			type:"GET",
			data:{},/*请求参数*/
			dataType:"json",/*规定响应数据的格式,js中会自动转换成对象,获取对象属性:对象名.属性名*/
			success:function(response){
				alert(response);
				//弹出学生的名字
				alert(response.name);//
			}, /*请求成功回调的函数,形参是响应中的值*/
			error:function(){
				alert("出错了");
			}
		});
	});
	
	//返回项目根路径,相对当前服务器   /web10
	function getProRootPath(){	  
	    //获取主机地址之后的目录，如： /proj/meun.jsp
	    var pathName = window.document.location.pathname;
	    console.log(pathName);
	    //获取带"/"的项目名，如：/proj
	    var projectName = pathName.substring(0, pathName.substr(1).indexOf('/')+1);
	  	console.log(projectName);
	    return projectName;
	}
</script>
</html>