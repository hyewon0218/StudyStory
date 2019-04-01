<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<style>
	#wrap{margin:100px auto; width: 800px; min-height: 800px}
	/* #link{margin-left: 1000px; margin-top: 20px} */
	#loginTitle{text-align: center; st}
	#request{left: 300px;}
	#title{font-size: 45px;}
	#sub_title{}

.font20bold {
		font-size:20px;
		font-weight:bold;
	}

</style>
<head>
	<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="./Resources/css/bootstrap.min.css">
  
	<title>Bootstrap Template By Young</title>
  <!-- Custom styles for this template -->
  
  <script src="./Resources/js/jquery-3.3.1.slim.min.js" ></script>

  <script type="text/javascript">

  <script type="text/javascript">
  $(function() {
  	$("#request").click(function (){
  		if($("#subject").val()=="") {
  			alert("주제를 선택해주세요.");
  			$("#subject").focus();
  			return;
  		}//end if
  		if($("#loc").val()=="") {
  			alert("지역을 선택해주세요.");
  			$("#loc").focus();
  			return;
  		}//end if
  		if($("#name").val()=="") {
  			alert("스터디 이름을 입력해주세요.");
  			$("#name").focus();
  			return;
  		}//end if
  		if($("#detail").val()=="") {
  			alert("스터디의 상세설명을 입력해주세요.");
  			$("#detail").focus();
  			return;
  		}//end if
  	
  	});//click
  });//ready
  </script>
  <script type="text/javascript">
  function schfile(){
	  document.getElementById("real_file").click();
	  document.getElementById("file_sub").value = document.getElementById("real_file").value;
	 }
  function previewFile() {
	  var preview = document.querySelector('#img');
	  var file    = document.querySelector('input[type=file]').files[0];
	  var reader  = new FileReader();

	  reader.addEventListener("load", function () {
	    preview.src = reader.result;
	  }, false);

	  if (file) {
	    reader.readAsDataURL(file);
	  }
	} 
  </script>
  
</head>
<body>
	<!-- header -->
	<c:import url="http://localhost:8080/third_prj/layout/navbar.jsp"></c:import>
	<!--  -->

	
<div class="container form-group" id="wrap" >
                <div class="row">
                        <div class="col-12 justify-content-left" style="margin-bottom: 20px;">
                             <strong style="font-size: 45px;">상세 스터디 정보</strong><img alt="" src="Resources/images/create.png" style="width: 150px; height: 120px; margin-left: 30px;" >
                        </div>
                </div>
                 <div class="row">
                        <div class="col-3 font20bold" style="margin-top: 10px;">
                            <strong>스터디명</strong>                    
                        </div>
                    <div class="col-7 font20bold" style="margin-top: 10px; margin-bottom: 10px;">
                     <label>스터디명스터디명</label>
                    </div>
                  </div>    
                            
                 <div class="row">
                        <div class="col-3 font20bold">
                        <strong>리더</strong>
                        </div>
                    <div class="col-7 font20bold">
                      <label>리더뽀로로</label>
                    </div>
                  </div>              
                 <div class="row">
                 <div class="col-3 font20bold"  style="margin-top: 10px;">
                   <strong>주제</strong>
                    </div>
                    <div class="col-7 font20bold" style="margin-top: 10px;">
                      <input type="password" class="form-control"  style="">
                    </div>
                  </div>              
                 <div class="row">
                 <div class="col-3 font20bold" style="margin-top: 10px;">
                    <strong>지역</strong>
                    </div>
                    <div class="col-7 font20bold" style="margin-top: 10px;">
                      <input type="text" class="form-control" placeholder="지역" style="" >
                    </div>
                  </div>              
                 <div class="row">
                 <div class="col-3 font20bold" style="margin-top: 10px;">
                    <strong>참여자 수</strong>
                    </div>
                    <div class="col-7 font20bold" style="margin-top: 10px;">
                      <input type="text" class="form-control" placeholder="스터디명" >
                  </div>             
                  </div>              
                 <div class="row">
                 <div class="col-3 font20bold" style="margin-top: 10px;">
  					<strong>생성일</strong>
                    </div>
                 <div class="col-7 font20bold" style="margin-top: 10px; " >
                      <input type="text" class="form-control" placeholder="스터디명" >
                 </div>
                    </div>
                    
                  <div class=" row">
                 <div class="col-3 font20bold" style="margin-top: 10px;">
    					<label for="exampleFormControlTextarea1" style="font-size: 20px;"><strong>대표썸네일</strong></label>&nbsp;
                    </div>
                 <div class="col-7 font20bold" style="margin-top: 10px; " >
  					<input type='file' name='file' id='real_file' onchange="previewFile()"  style='display:none; ' />
					<input type="text" id='file_sub' style="width:600px; border:0px; display: none">

					<a href="<?echo $PHP_SELF;?>" onclick="schfile(); return false;"><img  width="440" height="300" id="img" src="Resources/images/Image.png" border="0" title='찾아보기' alt='찾아보기'></a>
                 </div>
				</div>

 					<div class=" row">
                 <div class="col-3 font20bold" style="margin-top: 10px;">
 					 <strong>상세설명</strong>
                    </div>
                 <div class="col-7 font20bold" style="margin-top: 10px; " >
    				<textarea class="form-control" rows="3" style="width: 440px; height: 300px;" name="contents" ></textarea>
  					</div>  
					</div>                    
                    
               
         <a class="btn btn-secondary btn" href="#void" role="button" style="margin-left: 180px; margin-top: 30px;" >목록으로</a>
        <a class="btn btn-secondary btn" href="#void" role="button" style="margin-left:  10px; margin-top: 30px;">수정</a>
        <a class="btn btn-secondary btn" href="#void" role="button"  style="margin-left:  10px; margin-top: 30px;">탈퇴</a>
        </div>	




	
		<!-- footer -->
	<c:import url="http://localhost:8080/third_prj/layout/footer.jsp"></c:import>


	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="./Resources/js/popper.min.js" ></script>
  <script src="./Resources/js/bootstrap.min.js" ></script>
	

	
</body>
</html>