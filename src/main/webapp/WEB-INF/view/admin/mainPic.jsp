<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/admin/css/image2.css">
<%@ include file="head.jspf" %>
<link rel="stylesheet" href="resources/admin/css/image3.css">
<style type="text/css">
.hei {
	height: 350px;
}
.a2 {
    color: #fff;
    text-decoration: none;
}
.a2:hover {
    color: #fff;
    text-decoration: none;
}

img {
	height: 300px;
	width: 100%;
}
</style>
<%@ include file="javascript.jspf" %>
<script type="text/javascript">

function modifyPic() {
	var checkCnt = $('input[name=adminImageNo]:checked').length;
	if (checkCnt != 1) {
		alert("사진을 선택해주세요!");
		return;
	}
	
	var imageNo = $('input[name=adminImageNo]:checked').val();
	var selectType = $('#picType').val();
	var imageId = "#imageType" + imageNo;
	var imageType = $(imageId).val();
	
	if(selectType == imageType) {
		alert("동일한 타입의 변경은 불가능합니다.");
		return;
	}
	
	$('#no').val(imageNo);
	$('#status').val(selectType);
	$('#modalForm').submit();
	/*
	$.get({
        url: "modifyPic.admin",
        type: "GET",
        data: {
      		"adminImageNo" : imageNo,
        	"adminImageStatus" : selectType
        },
        dataType: "json"
    })
        .done(function(json) {
            console.log(json);
       		var main = json;
        })
        .fail(function (xhr, status, errorThrown) {
            alert(errorThrown);
        });
	
	$('#modalPicType').modal('hide');
	location.reload();
	*/
}

function deletePic() {
	var checkCnt = $('input[name=adminImageNo]:checked').length;
	if (checkCnt != 1) {
		alert("사진을 선택해주세요!");
		return;
	}
	
	var imageNameId = '#imageName' + $('input[name="adminImageNo"]:checked').val();
	$(imageNameId).attr("name", "adminImageName");
	$('#adminPicForm').submit();
}

function check_only(chk){
    var obj = document.getElementsByName("adminImageNo");
    for(var i=0; i<obj.length; i++){
        if(obj[i] != chk){
            obj[i].checked = false;
        }
    }
}

</script>
</head>
<body>
<div id="wrapper">
<%@ include file="nav.jspf" %>
 <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                    	<!-- Preview Image -->
                        <div class="col-lg-8">
                            <h1 class="page-header">Preview Image</h1>
                        </div>
                        <div class="col-lg-8">
				          <div class="container">
				            <div class="grid">
				                <div class="row">
				                    <div class="col-md-4">
				                        <figure class="effect-ravi">
				                        <div id="LI">
					                        <c:if test="${LI ne null}">
					                            <img src="${LI.adminImagePath}${LI.adminImageName}" width= "100%"/>				                        
					                        </c:if>
					                        <c:if test="${LI eq null}">
					                            <img src="resources/admin/images/noImage.png" width= "100%"/>				                        
					                        </c:if>
				                        </div>
				                            <figcaption>
				                                <h2>Login Image <span>BackGround</span></h2>
				                                <p>
				                                    <a href="#"><i class="fa fa-image"></i></a>
				                                </p>
				                            </figcaption>
				                        </figure>
				                    </div>
				                    <div class="col-md-4">
				                        <figure class="effect-ravi">
				                        <div id="LG">
					                        <c:if test="${LG ne null}">
					                            <img src="${LG.adminImagePath}${LG.adminImageName}" />	
					                        </c:if>
					                        <c:if test="${LG eq null}">
					                            <img src="resources/admin/images/noImage.png" />				                        
					                        </c:if>
				                        </div>
				                            <figcaption>
				                                <h2>Logo Image</h2>
				                                <p>
				                                    <a href="#"><i class="fa fa-image"></i></a>
				                                </p>
				                            </figcaption>
				                        </figure>
				                    </div>
				                    <div class="col-md-4">
				                        <figure class="effect-ravi">
				                        <div id="M">
					                        <c:if test="${M ne null}">
					                            <img src="${M.adminImagePath}${M.adminImageName}" />				                        
					                        </c:if>
					                        <c:if test="${M eq null}">
					                            <img src="resources/admin/images/noImage.png"/>				                        
					                        </c:if>
				                        </div>
				                            <figcaption>
				                                <h2>Main Image <span>BackGround</span></h2>
				                                <p>
				                                    <a href="#"><i class="fa fa-image"></i></a>
				                                </p>
				                            </figcaption>
				                        </figure>
				                    </div>
				                </div>
				                <div class="row">
				                    <div class="col-md-3">
				                        <figure class="effect-ravi">
				                        <div id="E1">
					                        <c:if test="${E1 ne null}">
					                            <img src="${E1.adminImagePath}${E1.adminImageName}"/>				                        
					                        </c:if>
					                        <c:if test="${E1 eq null}">
					                            <img src="resources/admin/images/noImage.png"/>				                        
					                        </c:if>
				                        </div>
				                            <figcaption>
				                                <h2>Event_1 <span>Image</span></h2>
				                                <p>
				                                    <a href="#"><i class="fa fa-image"></i></a>
				                                </p>
				                            </figcaption>
				                        </figure>
				                    </div>
				                    <div class="col-md-3">
				                        <figure class="effect-ravi">
				                        <div id="E2">
					                        <c:if test="${E2 ne null}">
					                            <img src="${E2.adminImagePath}${E2.adminImageName}" />				                        
					                        </c:if>
					                        <c:if test="${E2 eq null}">
					                            <img src="resources/admin/images/noImage.png"/>				                        
					                        </c:if>
				                        </div>
				                            <figcaption>
				                                <h2>Event_2 <span>Image</span></h2>
				                                <p>
				                                    <a href="#"><i class="fa fa-image"></i></a>
				
				                                </p>
				                            </figcaption>
				                        </figure>
				                    </div>
				                    <div class="col-md-3">
				                        <figure class="effect-ravi">
				                        <div id="E3">
					                        <c:if test="${E3 ne null}">
					                            <img src="${E3.adminImagePath}${E3.adminImageName}"/>				                        
					                        </c:if>
					                        <c:if test="${E3 eq null}">
					                            <img src="resources/admin/images/noImage.png"/>				                        
					                        </c:if>
				                        </div>
				                            <figcaption>
				                                <h2>Event_3 <span>Image</span></h2>
				                                <p>
				                                    <a href="#"><i class="fa fa-image"></i></a>
				
				                                </p>
				                            </figcaption>
				                        </figure>
				                    </div>
				                     <div class="col-md-3">
				                        <figure class="effect-ravi">
				                        <div id="E4">
					                        <c:if test="${E4 ne null}">
					                            <img src="${E4.adminImagePath}${E4.adminImageName}" />				                        
					                        </c:if>
					                        <c:if test="${E4 eq null}">
					                            <img src="resources/admin/images/noImage.png"/>				                        
					                        </c:if>
				                        </div>
				                            <figcaption>
				                                <h2>Event_4 <span>Image</span></h2>
				                                <p>
				                                    <a href="#"><i class="fa fa-image"></i></a>
				                                </p>
				                            </figcaption>
				                        </figure>
				                    </div>
				                </div>
				            </div>
				        </div> 
                        <div>&nbsp;</div> <div>&nbsp;</div>
                        </div>
                       	<!-- Preview Image end -->
                        
                        <!-- Admin Images -->
                        <div class="col-lg-8">
                            <h1 class="page-header">Admin Images</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                        <div class="col-lg-8">                                       
                                       <!-- modal ex -->
									<form action="deletePic.admin" method="post" id="adminPicForm">
                                       <div class="modal-content">
									      <div class="modal-header">
											<h4 class="modal-title">사진을 선택해 주세요 </h4>
									      </div>
									      <div class="modal-body choice-modal" >
									         <div class="container-fluid">
									          <div class="row inner-scroll" >
											<c:if test="${empty imageList}">
												<h3 class="text-center">등록된 사진이 없습니다.<br><br><br>사진을 등록해 주세요</h3>
											</c:if>
											<c:if test="${!empty imageList }">
									          <c:forEach var="image" items="${imageList}">
													<div class="col-md-2">
									         		<canvas height="15px"></canvas>
													  <div class="gallery-card">
														<div class="gallery-card-body">
														  <label class="block-check">
														 <img src="${image.adminImagePath}${image.adminImageName}" class="img-responsive" />
														 <input type="checkbox" onclick="check_only(this)" name="adminImageNo" value="${image.adminImageNo}">
														 <input type="hidden" id="imageName${image.adminImageNo}" value="${image.adminImageName}">
														 <input type="hidden" id="imageType${image.adminImageNo}" value="${image.adminImageStatus}">
														  <span class="checkmark"></span>
														  </label>
														  <div class="mycard-footer">
														   <c:if test='${image.adminImageStatus eq "U"}'>
															 <a class="a2" href="#" class="card-link">DEFAULT</a>														   
														   </c:if>
														   <c:if test='${image.adminImageStatus eq "LI"}'>
															 <a class="a2" href="#" class="card-link">LOGIN</a>														   
														   </c:if>
														   <c:if test='${image.adminImageStatus eq "LG"}'>
															 <a class="a2" href="#" class="card-link">LOGO</a>														   
														   </c:if>
														    <c:if test='${image.adminImageStatus eq "M"}'>
															 <a class="a2" href="#" class="card-link">MAIN</a>														   
														   </c:if>
														   <c:if test='${image.adminImageStatus eq "E1"}'>
															 <a class="a2" href="#" class="card-link">EVENT-1</a>														   
														   </c:if>
														   <c:if test='${image.adminImageStatus eq "E2"}'>
															 <a class="a2" href="#" class="card-link">EVENT-2</a>														   
														   </c:if>
														   <c:if test='${image.adminImageStatus eq "E3"}'>
															 <a class="a2" href="#" class="card-link">EVENT-3</a>														   
														   </c:if>
														   <c:if test='${image.adminImageStatus eq "E4"}'>
															 <a class="a2" href="#" class="card-link">EVENT-4</a>														   
														   </c:if>
														</div>
														</div>
													  </div>
													</div>	
													</c:forEach>
													</c:if>
																
												</div>
											</div>
									      </div>
									      <div class="modal-footer">
									        <button type="button" data-toggle="modal" data-target="#modalPicType" class="btn btn-lg btn-info btn-outline" >Modify Image</button>
									        <button type="button" onclick="javascript:location.href='insertPic.admin'" class="btn btn-lg btn-info btn-outline" >Add Image</button>
									        <button type="button" onclick="deletePic()" class="btn btn-lg btn-info btn-outline" >Delete Image</button>
									      </div>
									     </div>
									     </form>
                                          <!-- modal -->      
                     			<div>&nbsp;</div> <div>&nbsp;</div> <div>&nbsp;</div> <div>&nbsp;</div> <div>&nbsp;</div>
                          </div>
						<!-- Admin Images end -->                                
                   </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /#page-wrapper -->
</div>
</body>
<!-- Modal Room Type -->
<div class="modal fade" id="modalPicType" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <form action="modifyPic.admin" method="get" id="modalForm">
    <div class="modal-content">
      <!--Header-->
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">Room Type</h4>
      </div>
      <!--Body-->
      <div class="modal-body">
      <input type="hidden" name="adminImageNo" id="no">
      <input type="hidden" name="adminImageStatus" id="status">
		<select class="form-control" id="picType">
				<option value="U">선택 없음</option>
				<option value="LI">로그인사진</option>
				<option value="LG">로고사진</option>
				<option value="M">메인사진</option>
				<option value="E1">이벤트-1</option>
				<option value="E2">이벤트-2</option>
				<option value="E3">이벤트-3</option>
				<option value="E4">이벤트-4</option>
		</select>
      </div>
      <!--Footer-->
      <div class="modal-footer">
        <button onclick="modifyPic()" class="btn btn-info btn-outline">변경하기</button>
        <button type="button" class="btn btn-default btn-outline" data-dismiss="modal">닫기</button>
      </div>
    </div>
    </form>
  </div>
</div>
<!-- Modal: RoomType -->
</html>
