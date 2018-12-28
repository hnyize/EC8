<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="com.weaver.general.*"%>
<%@ include file="/jsp/systeminfo/init.jsp"%> 
<%
String message = Util.null2String((String)request.getAttribute("message"));
request.removeAttribute("message");
 %>
<html>
 <head>
	<title> E-cology升级程序</title>
   <script type="text/javascript" src="/js/jquery.js"></script>
   <link rel="stylesheet" href="/css/main.css" type="text/css">
 </head>
<body style="height:100%;width:100%;">
	<div id=warp>
		<div style="height:40px;">
		</div>
		<div  style="height:380px;">
			<div style="height:100%;width:120px;float:left;">
			</div>
			<div  style="height:370px;width:636px;float:right;margin-top:10px;">
				<div style="height:100%;width:620px;border:1px solid #42c9f0;background:white;margin-left:-10px;">
                      
                       <div style="margin-top:140px;height:60px;text-align: center;line-height:60px;font-size: 18px;" >
                              错误提示：<%=message %>
                       </div>

				</div>
			
			</div>
		</div>
	</div>
</body>
</html>
