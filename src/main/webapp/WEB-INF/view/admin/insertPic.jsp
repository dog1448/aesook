<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jspf" %>
<link rel="stylesheet" href="resources/admin/css/image.css">
<%@ include file="javascript.jspf" %>
<script type="text/javascript">
var fileTypes = ['jpg', 'jpeg', 'png'];  //acceptable file types
function readURL(input) {
    if (input.files && input.files[0]) {
        var extension = input.files[0].name.split('.').pop().toLowerCase(),  //file extension from input file
            isSuccess = fileTypes.indexOf(extension) > -1;  //is extension in acceptable types

        if (isSuccess) { //yes
            var reader = new FileReader();
            reader.onload = function (e) {
                if (extension == 'pdf'){
                	$(input).closest('.fileUpload').find(".icon").attr('src','https://image.flaticon.com/icons/svg/179/179483.svg');
                }
                else if (extension == 'docx'){
                	$(input).closest('.fileUpload').find(".icon").attr('src','https://image.flaticon.com/icons/svg/281/281760.svg');
                }
                else if (extension == 'rtf'){
                	$(input).closest('.fileUpload').find(".icon").attr('src','https://image.flaticon.com/icons/svg/136/136539.svg');
                }
                else if (extension == 'png'){ $(input).closest('.fileUpload').find(".icon").attr('src','https://image.flaticon.com/icons/svg/136/136523.svg'); 
                }
                else if (extension == 'jpg' || extension == 'jpeg'){
                	$(input).closest('.fileUpload').find(".icon").attr('src','https://image.flaticon.com/icons/svg/136/136524.svg');
                }
             	else if (extension == 'txt'){
                	$(input).closest('.fileUpload').find(".icon").attr('src','https://image.flaticon.com/icons/svg/136/136538.svg');
                }
                else {
                	//console.log('here=>'+$(input).closest('.uploadDoc').length);
                	$(input).closest('.uploadDoc').find(".docErr").slideUp('slow');
                }
            }
            reader.readAsDataURL(input.files[0]);
        }
        else {
        		//console.log('here=>'+$(input).closest('.uploadDoc').find(".docErr").length);
            $(input).closest('.uploadDoc').find(".docErr").fadeIn();
            setTimeout(function() {
				   	$('.docErr').fadeOut('slow');
					}, 9000);
        }
    }
}

function checkz() {
	var list = new Array();
	var flag = false;
	
	$("input[name='files']").each(function(index, item) {
		var fileext = $(item).val();
		fileext = fileext.slice(fileext.indexOf(".") + 1).toLowerCase();
		if (fileext == '') {
			alert("비어있는 파일 공간이 있습니다.");
			flag = true;
			return false;
		}
		list.push(fileext);
	});
	
	if(flag){return;}
	
	for (var i = 0, item; item=list[i]; i++){
		if(item !='jpg' && item !='png' && item !='jpg' && item !='jpeg') {
			alert("이미지 파일(jpg, png, jpeg)만 등록 가능합니다.");
			return;
		}
	}
	
	$('#fileForm').submit();
}

$(document).ready(function(){
   
   $(document).on('change','.up', function(){
   	var id = $(this).attr('id'); /* gets the filepath and filename from the input */
	   var profilePicValue = $(this).val();
	   var fileNameStart = profilePicValue.lastIndexOf('\\'); /* finds the end of the filepath */
	   profilePicValue = profilePicValue.substr(fileNameStart + 1).substring(0,20); /* isolates the filename */
	   //var profilePicLabelText = $(".upl"); /* finds the label text */
	   if (profilePicValue != '') {
	   	//console.log($(this).closest('.fileUpload').find('.upl').length);
	      $(this).closest('.fileUpload').find('.upl').html(profilePicValue); /* changes the label text */
	   }
   });

   $(".btn-n").on('click',function(){
        $("#uploader").append('<div class="row uploadDoc"><div class="col-sm-8 col-sm-offset-2"><div class="docErr"> Please upload valid file</div><!--error--><div class="fileUpload btn btn-orange"> <img src="https://image.flaticon.com/icons/svg/136/136549.svg" class="icon"><span class="upl" id="upload">Upload document</span><input type="file" name="files" class="upload up" id="up" onchange="readURL(this);" /></div></div><div class="col-sm-1"><input type="hidden" class="form-control" name="" placeholder="Note"></div><div class="col-sm-1"><a class="btn-check"><i class="fa fa-times"></i></a></div></div>');
   });
    
   $(document).on("click", "a.btn-check" , function() {
     if($(".uploadDoc").length>1){
        $(this).closest(".uploadDoc").remove();
      }else{
        alert("적어도 하나의 사진은 필요합니다.");
      } 
   });
});
</script>
</head>
<body>
<div id="wrapper">
<%@ include file="nav.jspf" %>
<div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-8">
                            <h1 class="page-header">Insert Image</h1>
                        </div>
                        <!-- /.col-lg-7 -->
                        <div class="col-lg-7">
                   	<form action="insertPic.admin" method="post" enctype="multipart/form-data" id="fileForm">
                 		<div class="container">
						<div class="row it">
							<div class="col-sm col-sm-10" id="one">
							<p>
							'jpg', 'jpeg', 'png' 확장자만 업로드 할 수 있습니다.
							</p><br>
							<div class="row">
							  <div class="col-sm-offset-4 col-sm-4 form-group">
							    <h3 class="text-center">Admin Image</h3>
							  </div><!--form-group-->
							</div><!--row-->
							<div id="uploader">
							<div class="row uploadDoc">
							  <div class="col-sm-8 col-sm-offset-2">
							    <div class="docErr">Please upload valid file</div><!--error-->
							    <div class="fileUpload btn btn-orange">
							      <img src="https://image.flaticon.com/icons/svg/136/136549.svg" class="icon">
							      <span class="upl" id="upload">Upload document</span>
							      <input type="file" name="files" class="upload up " id="up" onchange="readURL(this);" />
							    </div><!-- btn-orange -->
							  </div><!-- col-3 -->
							  <div class="col-sm-1">
							    <input type="hidden" class="form-control"  id="note" placeholder="Note">
							  </div><!--col-8-->
							  <div class="col-sm-1"><a class="btn-check"><i class="fa fa-times"></i></a></div><!-- col-1 -->
							</div><!--row-->
							</div><!--uploader-->
							<div class="text-center">
							<a class="btn btn-default btn-outline btn-n"><i class="fa fa-plus"></i> Add new</a>&nbsp;&nbsp;
							<button type="button" onclick="checkz()" class="btn btn-info btn-outline ">등록하기</button>&nbsp;&nbsp;
							<button type="button" onclick="javascript:location.href='mainPic.admin'" class="btn btn-info btn-outline ">뒤로가기</button>
								</div>
								<div>&nbsp;</div> <div>&nbsp;</div>
							</div><!--one-->
							</div><!-- row -->
							</div><!-- container -->
						</form>
                   		 <div>&nbsp;</div> <div>&nbsp;</div> <div>&nbsp;</div> <div>&nbsp;</div> <div>&nbsp;</div>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- container-fluid -->
        </div>
</div>
</body>
</html>
