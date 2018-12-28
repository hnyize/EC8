<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="/jsp/systeminfo/init.jsp"%> 
<%@ page import="com.weaver.general.*,com.weaver.entity.*"%>

<%
LogInfo logInfo = (LogInfo)request.getSession(true).getAttribute("LogInfo");
request.getSession(true).removeAttribute("LogInfo");
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
				<div class="btn1">
					选择升级包
				</div>
				<div  class="btn1">
					升级
				</div>
				<div  class="btn2">
				    升级完成
				</div>
			</div>
			<div  style="height:370px;width:636px;float:right;margin-top:10px;">
				<div style="height:100%;width:620px;border:1px solid #42c9f0;background:white;margin-left:-10px;overflow:scroll;" >
				     <div style="height:50px;font-size:25px;text-align:center;padding-top:10px;margin-top:40px;line-height:50px;">升级成功!</div>
						<div style="margin-top:30px;margin-left:20px;width:90%;word-break:break-all;">日志文件目录：</div>
						<%
						if(null!=logInfo)
						{
						%>
						<div style="margin-top:10px;margin-left:40px;width:90%;word-break:break-all;"><%=logInfo.getPath() %></div>
						<div style="margin-top:10px;margin-left:20px;width:90%;word-break:break-all;">日志内容：<div>
						<div style="margin-top:10px;margin-left:40px;width:90%;word-break:break-all;">升级时间：<%=logInfo.getDatetime() %></div>
						<div style="margin-top:10px;margin-left:40px;width:90%;word-break:break-all;">升级类型：<%=logInfo.getUpdatetype() %></div>
						<%if(logInfo.getBackupid()>-1){ %>
							<div style="margin-top:10px;margin-left:40px;width:90%;word-break:break-all;">备份版本号：<%=logInfo.getBackupid() %></div>
						<%}%>
						<div style="margin-top:10px;margin-left:40px;width:90%;word-break:break-all;">备份目录：<%=logInfo.getBackuppath() %></div>
						<%
						}
						%>
			    	</div>
		     </div>
			</div>
		</div>
	  </div>
   </div>
</body>
</html>
