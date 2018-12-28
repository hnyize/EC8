var timeout2;
$(document).ready(function(){
     $("#message").html("请确认已停止ecology服务Resin Web Server");
  	 $("#next").click(function(){
        doUpgrade();
  	 });
});
function doUpgrade()
{
	$("#message").html("升级中...");
	$("#bak").show();
	$("#next").attr("disabled",true);
    $.get('/upgrade.do?date='+(new Date()).valueOf(),function(data)
 	{
 		eval("var result="+data);
 		if(result.isSuccess=="true")
 		{
	 		clearInterval(timeout2);
	 		$("#pro").css("width","100%");
	     	$("#pro").html("100%");
	     	$("#message").html("升级成功!");
	     	$("#next").attr("disabled",false);
	     	$("#next").unbind("click");
	     	$("#next").click(function(){
		        window.onbeforeunload=null;
      			window.location.href="/jsp/upgradesuccess.jsp";
		  	});
 		}
 		else if(result.isSuccess=="false")
 		{
 			$("#message").html(result.message);
 			clearInterval(timeout2);
 			$("#pro").hide();
 			return;
 		}
        
  	});	
	timeout2=setInterval(getData,1000);
}
function getData()
{
 	$.get('/getProcess.do',function(data)
 	{
     	  $("#pro").css("width",data+"%");
     	  $("#pro").html(data+"%");
     	  $("#pro").show();
  	});	
} 