$(document).ready(function(){
	   $("#sub").click(function(){
           if($("#zipfile").val()!=""){
           		$("#sub").attr("disabled",true);
                document.weaverform.submit();
           }else{
        	   alert("请选择升级包");
        	   return;
           }  
         });
	  });