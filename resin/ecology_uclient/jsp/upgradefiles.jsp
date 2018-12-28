<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="/jsp/systeminfo/init.jsp"%> 
<html>
 <head>
	<title> E-cology升级程序</title>
	<script type="text/javascript" src="/js/jquery.js"></script>
	<script type="text/javascript" src="/js/upgradefiles.js"> </script>
	<link rel="stylesheet" href="/css/main.css" type="text/css">
 </head>
<body style="height:100%;width:100%;"> 
	<div id=warp>
		<div style="height:40px;">
		</div>
		<div  style="height:380px;">
			<div style="height:100%;width:120px;float:left;">
				<div class="btn1" >
					选择升级包
				</div>
				<div  class="btn2">
					升级
				</div>
				<div  class="btn1">
				    升级完成
				</div>
			</div>
			<div  style="height:370px;width:636px;float:right;margin-top:10px;">
				<div style="height:100%;width:620px;border:1px solid #42c9f0;background:white;margin-left:-10px;text-align:center;">
					<div style="width:100%;height:100%;font-size:18px;" >
			           	<div style="width:100%;height:60px;margin-top:120px;text-align:center;" >
			           	    <div id="message" style="width:100%;font-size:19px;text-align:center;"></div>
			           	</div>
			           	<div id="bak" style="margin-top:20px;height:34px;width:45%;background:url('/img/bak.png') no-repeat;text-align:left;display:none;" >    	
			                 <div id="pro" style="height:33px;width:0px;background:url('/img/process.png') no-repeat;text-align:center;"></div> 
			            </div>
					</div>
				</div>
			</div>
		</div>
		<div  style="clear:both;height:45px;position:relative;">
			<div style="width:97%;height:30px;padding-right:20px;padding-top:14px;" align="right">
			<input type="button"  value="下一步" style="background:url(/img/prebtn.png);border:none;width:70px;height:25px;color:#ffffff;font-weight:bold;" id="next">
			</div>
		</div>
	</div>
</body>
</html>
