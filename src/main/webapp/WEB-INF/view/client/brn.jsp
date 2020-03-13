<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
   <%@ include file="head.jspf" %>
   <link href="resources/client/css/brn.css" rel="stylesheet">
 <script type="text/javascript">
 $(document).ready(function(){
	   var fileTarget = $('.filebox .upload-hidden');

	    fileTarget.on('change', function(){
	        if(window.FileReader){
	            // 파일명 추출
	            var filename = $(this)[0].files[0].name;
	        } 

	        else {
	            // Old IE 파일명 추출
	            var filename = $(this).val().split('/').pop().split('\\').pop();
	        };

	        $(this).siblings('.upload-name').val(filename);
	    });

	    //preview image 
	    var imgTarget = $('.preview-image .upload-hidden');

	    imgTarget.on('change', function(){
	        var parent = $(this).parent();
	        parent.children('.upload-display').remove();

	        if(window.FileReader){
	            //image 파일만
	            if (!$(this)[0].files[0].type.match(/image\//)) return;
	            
	            var reader = new FileReader();
	            reader.onload = function(e){
	                var src = e.target.result;
	                parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
	            }
	            reader.readAsDataURL($(this)[0].files[0]);
	        }

	        else {
	            $(this)[0].select();
	            $(this)[0].blur();
	            var imgSrc = document.selection.createRange().text;
	            parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

	            var img = $(this).siblings('.upload-display').find('img');
	            img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";        
	        }
	    });
	});
 function checkz() {
	 
		if($("#input_file").val() == ""){
	      alert("파일이 없습니다.");
	      return;
	    }
		
		if($('#status').val() == "W") {
			alert("이미 자료를 검토중 입니다.");
			return;
		}
		
		if($('#status').val() != "G") {
			alert("해당 사항이 없습니다.");
			return;
		}
		
		
		$('#imageForm').submit();
 }
 </script>
</head>

<body>

    <div class="colorlib-loader"> </div>

    <div id="page">
        
        <%@ include file="main_header.jspf" %>
        
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>

        <div id="colorlib-about">
            <div class="container">
                <div class="row">
                    <div class="about-flex">
                        <%@ include file="myPageSidebar.jspf" %>
                        <div class="col-three-forth animate-box">
                            <h2>사업자등록</h2>
                            <div>&nbsp;</div>
                            <div class="row">									
                                  <form method="post" action="brn.do" id="imageForm" enctype="multipart/form-data">
                                   <div class="filebox bs3-primary preview-image">
										<div>&nbsp;</div>
										<input type="hidden" id="status" value="${user.memberStatus}">
										<input class="upload-name" value="파일선택" disabled="disabled" style="width: 200px;">
										<label for="input_file">업로드</label> 
						  				<input type="file" id="input_file" class="upload-hidden" name="file"> &nbsp;
						  				<input class="btn btn-warning" value="전송" onclick="checkz()" type="button">
									</div>
								  </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      
    </div>
	 <%@ include file="footer.jspf" %>
    <div class="gototop js-top">
        <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
    </div>
   

</body>

</html>