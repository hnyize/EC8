<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="/jsp/systeminfo/init.jsp"%> 
<html>
 <head>
	<title> E-cology升级程序</title>
	 <script type="text/javascript" src="/js/jquery.js"></script>
	 <script type="text/javascript" src="/js/selectZip.js"></script>
	 <link rel="stylesheet" href="/css/main.css" type="text/css">
 </head>
<body  style="height:100%;width:100%;">
 <form name="weaverform" action="/uploadzip.do"  method="post" enctype="multipart/form-data"> 
	<div id=warp>
		<div style="height:40px;">
		</div>
		<div  style="height:380px;">
			<div style="height:100%;width:120px;float:left;">
				
				<div class="btn2" >
					选择升级包
				</div>
				<div  class="btn1">
					升级
				</div>
				<div  class="btn1">
				  	升级完成
				</div>
			</div>
			<div  style="height:370px;width:636px;float:right;margin-top:10px;font-size:16px;">
				<div style="height:100%;width:620px;border:1px solid #42c9f0;background:white;margin-left:-10px;overflow:auto;">
				     
				                      <div style="width:100%;margin-top:100px;text-align:center;font-size:16px;">
							           	    <div >
							           	    	请选择ecology升级包
							           	    </div >
							           <div  style="width:100%;margin-top:40px;" align="center" >
							                 <input style="width:60%;height:25px;" id="zipfile" type="file" name="uploadFile[0].file"  >
							          </div>
							</div>
				
				</div>
			
			</div>
		</div>

		<div  style="clear:both;height:45px;">
			<div style="width:97%;height:30px;padding-right:20px;padding-top:14px;" align="right">
			<input id="sub" type="button" style="background:url(/img/nextbtn.png);border:none;width:70px;height:25px;color:#ffffff;font-weight:bold;" value="下一步">
			</div>
		</div>
	</div>
</form>

</body>
</html>
