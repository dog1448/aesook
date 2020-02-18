function checkz() {
      var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
      var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/); //"아이디는 영문자로 시작하는 6~20자 영문자 또는 숫자이어야 합니다."
      var getName= RegExp(/^[가-힣]+$/);
      var fmt = RegExp(/^\d{6}[1234]\d{6}$/); //형식 설정
 
 
      //아이디 공백 확인
      if($("#tbId").val() == ""){
        alert("아이디 입력바람");
        $("#tbId").focus();
        return false;
      }
 
      //이름의 유효성 검사
      if(!getCheck.test($("#tbID").val())){
        alert("아이디는 영문자로 시작하는 6~20자 영문자 또는 숫자이어야 합니다.");
        $("#tbId").val("");
        $("#tbId").focus();
        return false;
      }
 
      //비밀번호
      if(!getCheck.test($("#tbPass").val())) {
      alert("비밀번호는 영문자로 시작하는 6~20자 영문자 또는 숫자이어야 합니다.");
      $("#tbPass").val("");
      $("#tbPass").focus();
      return false;
      }
 
      //아이디랑 비밀번호랑 같은지
      if ($("#tbId").val()==($("#tbPass").val())) {
      alert("비밀번호가 ID와 똑같습니다");
      $("#tbPass").val("");
      $("#tbPass").focus();
    }
 
      //비밀번호 똑같은지
      if($("#tbPass").val() != ($("#cpass").val())){ 
      alert("비빌번호와 비밀번호확인이 다릅니다");
      $("#tbPass").val("");
      $("#cpass").val("");
      $("#tbPass").focus();
      return false;
     }
 
     //이메일 공백 확인
      if($("#tbEmail").val() == ""){
        alert("이메일을 입력해주세요");
        $("#tbEmail").focus();
        return false;
      }
           
      //이메일 유효성 검사
      if(!getMail.test($("#tbEmail").val())){
        alert("이메일형식에 맞게 입력해주세요")
        $("#tbEmail").val("");
        $("#tbEmail").focus();
        return false;
      }
 
      //이름 유효성
      if (!getName.test($("#tbName").val())) {
        alert("이름을 입력해주세요");
        $("#tbName").val("");
        $("#tbName").focus();
        return false;
      }
 
    return true;
  }