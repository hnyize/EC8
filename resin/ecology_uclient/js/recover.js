$(document).ready(function()
{
	 $(".selected").click(function(){
		 $("#ok").removeAttr("disabled");
	 });
	 $("#ok").live("click",function(){
		$("input[type$='radio']").each(function(i,obj){
			if($(obj).attr("checked")==true)
			{
				$("#ok").attr("disabled",true);
				$.get('/recoverfiles.do?date='+(new Date()).valueOf(),{'filename':$(obj).val()},function(data)
				{
					  eval("var result="+data);
					  $("#ok").attr("disabled",false);
					  if(result.isSuccess=="yes")
					  {
						  alert("还原成功！");
					  }
					  else
					  {
					  	alert(result.message);
					  }
					  
				});
			}
		});
	 });
});