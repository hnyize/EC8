<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/jsp/systeminfo/init.jsp"%> 
<%@ page import="com.weaver.general.*"%>
<jsp:useBean id="ConfigInfo" class="com.weaver.function.ConfigInfo" scope="page"/>
<%
String errordir = Util.null2String((String)request.getAttribute("errordir"));
request.removeAttribute("errordir");
 %>
<html>
 <head>
	<title> E-cology升级程序</title>
	<script type="text/javascript" src="/js/jquery.js"></script>
	<link rel="stylesheet" href="/css/main.css" type="text/css">
	<script type="text/javascript" src="/js/selectdirectory.js"></script>
 </head>
<body style="height:100%;width:100%;">

	<div id=warp>
		<div style="height:40px;">
		</div>
		<div  style="height:380px;">
			<div style="height:100%;width:120px;float:left;border:none;">
				<!-- div style="background:url('/img/btn2.png') no-repeat;background-position:center center;height:38px;margin-top:2px;text-align:center;
			font-size:13px;padding-top:20px;color:#3c3c3c;" >
					参数设置
				</div -->
			</div>
			<div  style="height:370px;width:636px;float:right;margin-top:10px;border:none;">
				<div style="height:100%;width:620px;border:1px solid #42c9f0;background:white;margin-left:-10px;font-size: 18px;">
					<div id="message" style="width:100%;font-size:15px;text-align:center;padding-top:20px;color:red;">
						<%=errordir %>
			        </div> 
                     <div style="width:100%;margin-top:30px;margin-left:30px;">
		                <div id="resintitle">请输入Resin安装路径</div>
		           	    <div style="margin-top:10px;">
		           	    	<input style="width:50%;height:25px;font-size:16px;" type="text"  id="resinPath" value="<%=ConfigInfo.getResinpath() %>" disabled="disabled"/>
		           	    	<span id="divResinPath" style="color:red"></span>
		           	    </div>
		           </div>
		           <div style="width:100%;margin-top:30px;margin-left:30px;">
		                <div id="ecologytitle">请输入ecology安装路径</div>
		           	    <div style="margin-top:10px;">
		           	    	<input style="width:50%;height:25px;font-size:16px;" type="text"  id="ecologyPath" name="ecologyPath" value="<%=ConfigInfo.getEcologypath() %>"/>
		           	    	<span id="divecologyPath" style="color:red"></span>
		           	    </div>
		           	    
		           </div>
		           <div style="width:100%;margin-top:30px;margin-left:30px;">
		                <div>ecology备份路径</div>
		           	    <div style="margin-top:10px;" >
		           	    	<input style="width:50%;height:25px;font-size:16px;" type="text"  id="upgradeBackup" value="<%=GCONST.getSysFileBackPath() %>" disabled="disabled"/>
		           	        <span id="divupgradeBackup" style="color:red"></span>
		           	    </div>
	              </div>
				</div>
			</div>
		</div>
		<div  style="clear:both;height:45px;">
		    <div style="width:97%;height:30px;padding-right:20px;padding-top:14px;" align="right">
				<input type="button" value="保存" id="savedata" style="background:url(/img/nextbtn.png);border:none;width:70px;height:25px;color:#ffffff;font-weight:bold;">
			</div>
			
		</div>
	</div>
</body>
</html>