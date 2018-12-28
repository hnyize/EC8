<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/jsp/systeminfo/init.jsp"%> 
<%@ page import="com.weaver.general.*,com.weaver.entity.*"%>

<%
List list = (List)request.getSession(true).getAttribute("list");
 %>
<html>
 <head>
	<title> E-cology升级程序</title>
	    <script type="text/javascript" src="/js/jquery.js"></script>
		<script type="text/javascript" src="/js/recover.js"></script>
		<link rel="stylesheet" href="/css/main.css" type="text/css">
 </head>
<body style="height:100%;width:100%;">
<form>
	<div id=warp>
		<div style="height:40px;">
		</div>
		<div style="height:370px;">
			<div style="height:100%;width:120px;float:left;border:none;">
				<div class="btn2">
					还原
				</div>
			</div>
			<div style="height:335px;width:636px;float:right;margin-top:10px;">
				<div style="height:100%;width:620px;border:1px solid #42c9f0;background:white;margin-left:-10px;font-size:16px;">
					<div style="margin-left:30px;margin-top:10px;height:20px;width:80%;line-height: 30px;text-align:center;">
					 请选择已备份文件：
					</div>
					<div style="height:325px;overflow:auto;" >
			         <table style="margin-top:10px;margin-left:30px;width:60%;" align="center" width="80%"  >
			         	<%
			         	if(null!=list)
			         	{
				         	for(int i = 0;i<list.size();i++)
				         	{
				         		ZipInfo zipinfo = (ZipInfo)list.get(i);
			         	 %>
			          		<tr>
			          			<td><input type="radio" id="file<%=zipinfo.getId() %>" class="selected" name="zipname" value="<%=zipinfo.getName() %>"/><img src="/img/zip.png"><%=zipinfo.getName() %></td>
			          		</tr>
			         	<%
			         		}
			         	}
			         	%>
			         </table>
			         </div>   
		           </div>
				</div>
			</div>
			<div style="clear:both;height:45px;">
			    <div style="width:97%;height:30px;padding-right:20px;padding-top:14px;" align="right">
				    <input id="ok" type="button" value="还原" style="background:url(/img/nextbtn.png);border:none;width:70px;height:25px;color:#ffffff;font-weight:bold;" disabled="disabled">
				</div>
			</div>
  </div>

</form>
</body>
</html>
