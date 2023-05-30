<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#ajaxbtn").on('click',function(){
		$.ajax({
			url : "helloajax",
			type : "get",
			dataType : 'json',
			success : function(server){
				$('#result').html(server.model);
			
			},
			error : function(error){
				alert(error);
			}
		})
	});
});

</script>

</head>
<body>
<h1>${model }</h1>
<!-- "http://localhost:8063/images/html5.jpg" -->
<img src="/images/html5.jpg">


<input type=button value = "ajax요청버튼" id="ajaxbtn">
ajax결과출력 <h1 id="result"></h1>
</body>
</html>