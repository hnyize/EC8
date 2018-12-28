$(document).ready(function()
{
      if($("#ecologyPath").val()!=""){
    	 $("#ecologytitle").html("ecology安装目录");
      }
      if($("#ecologyPath").val()=="")
      {
          $("#divecologyPath").html("此项必填！");
      }
      else
      {
          $("#divecologyPath").html();
      }
	$("#savedata").click(function()
	{
	  var iscansave = true;
      if($("#ecologyPath").val()==""){
          $("#divecologyPath").html("此项必填！");
          iscansave = false;
      }else{
          $("#divecologyPath").html();
      }
      if(iscansave)
      {
	      $.get('/writeprop.do?date='+(new Date()).valueOf(),{"ecologyPath":$("#ecologyPath").val()},function(data){
	      	if("ecologynotexists"==data)
	      	{
	      		$("#divecologyPath").html("目录不存在,请重新填写!");
	      	}
	      	else
	      	{
	      		document.location="/jsp/selectdirectory.jsp";
	      		alert("修改成功");
	      	}
	      });
      }
    });
 });