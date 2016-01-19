<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<head>
<title></title>
<meta name="decorator" content="cms_xdh" />
<link href="${ctx }/assets/xdh/css/style.css" rel="stylesheet" type="text/css" />
<script src="${ctx }/assets/js/jquery.form.js" type="text/javascript"></script>
</head>
<body>
	<div class="cont1">
		<%@ include file="category.jsp"%>
		<div class="right">
			<div class="neicont">
				<form action="${ctx }/xdh/comment" method="post" id="commentform">
		    		<input type="hidden" name="article.id" value="57">
		    		<input id="face_path" type="hidden" name="headPath" value="/assets/img/face/7.png">
      				<div id="comment-author-info">
						<p>
							<input type="text" name="name" class="commenttext" value="" size="22" tabindex="1" id="c_name">
							<label for="author">昵称(必填)</label>
						</p>
						<p>
							<input type="text" name="email" class="commenttext" value="" size="22" tabindex="2">
							<label for="email">邮箱</label>
							<!-- <label for="email" style="color: red">注：请填写真实邮箱，可显示您在gravatar.com注册的全球统一头像</label> -->
						</p>
						<p>
							<input type="text" name="url" class="commenttext" value="" size="22" tabindex="3">
							<label for="url">电话号码</label>
						</p>
					</div>
            		<div class="clear"></div>
				    <div id="post-comment-text" style="height: 160px">
						<textarea name="content" id="ceditor" rows="5" cols="" style="width: 60%;margin-left: 25px;"></textarea>
					</div>
					<p>
						<input class="submit" name="submit" type="submit" id="submit" tabindex="5" value="提交[Ctrl+Enter]" onclick="javascript:validate();return false;">
						<input class="reset" name="reset" type="reset" id="reset" tabindex="6" value="重写">
					</p>
				<script type="text/javascript">	//Crel+Enter
					$(document).keypress(function(e){
						if(e.ctrlKey && e.which == 13 || e.which == 10) {
							submit();
							document.body.focus();
						} else if (e.shiftKey && e.which==13 || e.which == 10) {
							submit();
						}
					})
					
					
					function isNotBlank(str){
						if(str == null || str == "" || typeof(str) == "undefined"){
							return false;
						}
						return true;
					}
					
					//提交前验证
					function validate(){
						var name = $("#c_name").val();
						if(!isNotBlank(name)){
							alert("请填写昵称！");
							return false;
						}
						
						var content = $("#ceditor").val();
						if(!isNotBlank(content)){
							alert("请填写内容！");
							return false;
						}
						
						$("#commentform").ajaxSubmit(function(data){
							alert("留言成功！谢谢您的留言，我们回尽快联系您！");
						});
						
						return false;
					}
				</script>
		    </form>
			</div>
		</div>
	</div>
</body>
</html>