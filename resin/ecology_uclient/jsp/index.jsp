<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="com.weaver.general.*"%>
<%@ include file="/jsp/systeminfo/init.jsp"%> 
<%
	String operation = Util.null2String(request.getParameter("operation"));
%>
<html>
 <head>
	<title> E-cology升级程序</title>
	<script type="text/javascript" src="/js/jquery.js"></script>
	<script type="text/javascript">
	var operation = '<%=operation%>';
	</script>
	<script type="text/javascript" src="/js/index.js"></script>
	<link rel="stylesheet" href="/css/main.css" type="text/css">
 </head>
<body style="height:100%;width:100%;">
	<div id=warp>
		<div style="height:60px;">
			<div style="float:left;width:104px;height:50px;">&nbsp;<img style="margin-left:20px;"  border="0" src="/img/logo.png"></div>
			   <div style="margin-right:0px;margin-top:40px;color:white;font-weight:bold;font-size:15px;line-height:90px;">
			    	<div style="width:100%;" align="center" >  
				         <span class="btn"><input type="button"  value="本地升级" style="background:url(/img/nextbtn.png);border:none;width:70px;height:25px;color:#ffffff;font-weight:bold;" class="Button" id="local"></span>
				         <span class="btn" style="padding-left:20px;" ><input type="button"  style="background:url(/img/nextbtn.png);border:none;width:70px;height:25px;color:#ffffff;font-weight:bold;" value="远程升级" class="Button" id="remote"></span>
				         <span class="btn" style="padding-left:20px;" ><input type="button"  style="background:url(/img/nextbtn.png);border:none;width:70px;height:25px;color:#ffffff;font-weight:bold;" value="还    原"  class="Button" id="recover"></span>
				         <span class="btn" style="padding-left:20px;" ><input type="button" style="background:url(/img/nextbtn.png);border:none;width:70px;height:25px;color:#ffffff;font-weight:bold;" value="路径设置" class="Button" id="changepath" ></span>
				         <span class="btn" style="padding-left:20px;" ><input type="button" style="background:url(/img/nextbtn.png);border:none;width:70px;height:25px;color:#ffffff;font-weight:bold;" value="修改密码" class="Button" id="updatePW" ></span>
				         <span class="btn" style="padding-left:20px;" ><input type="button" style="background:url(/img/nextbtn.png);border:none;width:70px;height:25px;color:#ffffff;font-weight:bold;" value="退出" class="Button" id="logout" ></span>
			   		     <!-- span  style="padding-left:60px;" ><input type="button" id="firstpage" style="background:url(/img/firstpage.png);border:none;width:84px;height:33px;color:#ffffff;font-weight:bold;"  class="Button"></span -->
			   		</div>
			   		
			  </div>
		</div>
		
		  <div  style="height:430px;padding-left:10px;">
		  		<div style="height:100%;width:740px;border:none;padding-top:10px;">
				   <iframe id="iframe1" name="iframe1" width="740" height="420" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="/jsp/selectdirectory.jsp" style="margin-right:20px;"></iframe>  
		      	</div>
			</div>
		</div>
		
	</div>


</body>
</html>