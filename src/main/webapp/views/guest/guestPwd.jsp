<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<%-- alert 창 cdn--%>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

<script>
  $(function(){
    $('#guestPwdBtn').on("click", function(){
      event.preventDefault(); // 기본 동작 중지를 해야 text가 출력되고 화면이 새로고침되지 않음


      let guestPwd = $('#guestPwd').val();
      let guestPwdNew = $('#guestPwdNew').val();
      let guestPwdConfirm = $('#guestPwdConfirm').val();

      let form = $('#guestPwdForm').serialize();

      if(guestPwd == ''){
        $('#pwdCheck').text('현재 비밀번호를 입력하세요.');
        return;
      }if(guestPwdNew == ''){
        $('#pwdCheck').text('변경할 비밀번호를 입력하세요.');
        return;
      }if(guestPwdNew != guestPwdConfirm){
        $('#pwdCheck').text('변경할 비밀번호가 일치하지 않습니다.');
        return;
      }else{
        $.ajax({
          url:'/guestPwdImpl',
          type:'post',
          data:form,
          success:function(data){
            if(data == 'false'){
              Swal.fire({
                icon: 'error',
                title: '변경 실패',
                text: '현재 비밀번호가 일치하지 않습니다.'
              })
            }else{
              Swal.fire({
                icon: 'success',
                title: '변경 성공',
                text: '비밀번호가 변경되었습니다!'
              })
            }
          }
        })
      }
    });
  })

</script>

<section class="py-5">
  <div class="container">
    <!-- Breadcrumbs -->
      <br>
    <h1 class="hero-heading mb-0">비밀번호 변경</h1>
    <br>
    <div class="row">
      <div class="col-lg-7 mb-5 mb-lg-0">
        <form class="form-validate" id="guestPwdForm">
          <input type="hidden" name="id" value="${guest.guestId}">
            <div class="text-block">
              <div class="row">
                <div class="col-sm-8">
                </div>
              </div>
              <div id="updatePassword">
                <div class="row mt-4">
                  <div class="mb-4 col-12">
                    <label class="form-label" for="guestPwd">현재 비밀번호</label>
                    <input class="form-control" type="password" name="guestPwd" id="guestPwd">
                  </div>
                  <div class="mb-4 col-md-6">
                    <label class="form-label" for="guestPwdNew">변경할 비밀번호</label>
                    <input class="form-control" type="password" name="guestPwdNew" id="guestPwdNew">
                  </div>
                  <div class="mb-4 col-md-6">
                    <label class="form-label" for="guestPwdConfirm">변경할 비밀번호 확인</label>
                    <input class="form-control" type="password" name="guestPwdConfirm" id="guestPwdConfirm">
                  </div>
                  <div class="mb-4 col-md-6">
                    <span id="pwdCheck" style="color:rgb(77,102,247)"></span>
                  </div>
                </div>
                <button id="guestPwdBtn" class="btn btn-outline-primary">비밀번호 변경하기</button>
              </div>
            </div>
          </form>
        </div>
      <div class="col-md-8 col-lg-4 ms-lg-auto">
        <div class="card border-0 shadow">
          <div class="card-header bg-primary-light py-4 border-0">
            <div class="d-flex align-items-center">
              <div>
                <h4 class="h6 subtitle text-sm text-primary">비밀번호를 변경하고 더욱 더 안전한 DIGI실!</h4>
              </div>
              <svg class="svg-icon svg-icon svg-icon-light w-3rem h-3rem ms-3 text-primary flex-shrink-0">
                <use xlink:href="#shield-security-1"> </use>
              </svg>
            </div>
          </div>
          <div class="card-body p-4">
            <h6 class="card-text">${guest.guestName} 님의 보안 등급: </h6>
            <p class="card-text mb-4"><span class="badge badge-info-light">양호</span></p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- JavaScript files-->
<script>
  // ------------------------------------------------------- //
  //   Inject SVG Sprite -
  //   see more here
  //   https://css-tricks.com/ajaxing-svg-sprite/
  // ------------------------------------------------------ //
  function injectSvgSprite(path) {

    var ajax = new XMLHttpRequest();
    ajax.open("GET", path, true);
    ajax.send();
    ajax.onload = function(e) {
      var div = document.createElement("div");
      div.className = 'd-none';
      div.innerHTML = ajax.responseText;
      document.body.insertBefore(div, document.body.childNodes[0]);
    }
  }
  // to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite
  // use your own URL in production, please :)
  // https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg
  //- injectSvgSprite('${path}icons/orion-svg-sprite.svg');
  injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg');

</script>
