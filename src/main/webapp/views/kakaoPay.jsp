<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-{SDK-최신버전}.js"></script>

<script>

  $(function(){
      console.log("aaaaaaaa1 : "+$('#reserveId').val());

      // var reserveId = Number($('#reserveId').val());
      var reserveId = $('#reserveId').val();

      console.log("aaaaaaaa2 : "+reserveId);
    $('#payBtn').click(function(){
      $.ajax({
          url:'payment/ready',
          // method:'POST',
          method:'GET',
          data: {'reserveId' : reserveId},
          dataType:'json',
        success: function(data){
          // alert(data.tid);
          var box = data.next_redirect_pc_url;
          window.open(box);
        },
        error: function(error){
          alert(error);
        }
      })
    })
  });

    ////////////////준혁/////////
//document -ready
  $(()=>{
      let reserveId = ${reserve.reserveId};

      //findHostId(reserveId);

      $('#buttonSendMessage').click(() => {
          console.log('message send button clicked');
          sendData();
      });

  })

//chat data send
  /// chatRoom이 열리면서 send data
  function sendData() {
      $.ajax({
          url: 'chat/OpenRoomRequest',
          data: {
              'hostId':'${hostId}',
              'chatContents': $('#chatContents').val(),
              'chatSender': '${chatSender}'
          }
      })
          .done(() => {
              console.log("DB 전송 success");
              // chatDetails.display(data);
              $('#chatRoomBox').hide();
              let html =
                  `
            <div id="chatSent">
                <h4> <a href="/chat?guestId=\${guestId}"><i class='fas fa-comment-alt' style='font-25px;color:cornflowerblue'></i>   메세지 확인하기</a>
                </h4>
            </div>
                  `
              $('#chatRoomOuterBox').append(html);
          })
          .fail(() => {
              console.log("DB 전송 실패 failed to load data");
              alert('채팅 전송 실패! 잠시 후 다시 시도해주세요.');
          });
  }



</script>



<body style="padding-top: 72px;">
<input type="hidden" name="reserveId" id="reserveId" value="${reserve.reserveId}">
<div class="progress rounded-0 sticky-top" style="height: 8px; top: 72px;">
  <div class="progress-bar" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<section class="py-5">
  <div class="container">
    <div class="row">
      <div class="col-lg-7">
        <p class="subtitle text-primary">Book your holiday home</p>
<%--        <p class="subtitle text-primary">${guest.guestName}</p>--%>
        <h1 class="h2 mb-5">확인 및 결제<span class="text-muted float-end"></span>      </h1>
        <div class="text-block">
          <div class="alert alert-warning text-sm mb-3">
            <div class="d-flex align-items-center">
              <svg class="svg-icon svg-icon svg-icon-light w-2rem h-2rem me-3 text-reset flex-shrink-0">
                <use xlink:href="#heart-1"> </use>
              </svg>
              <div><strong>흔치 않은 기회 입니다.</strong><br> ${room.hostName}님의 숙소는 보통 예약이 가득 차 있습니다.</div>
            </div>
          </div>
        </div>
        <div class="text-block">
          <h6>기본 규칙</h6>
          <h9>훌륭한 게스트가 되기 위한 몇 가지 간단한 규칙을 지켜주실 것을 모든 게스트에게 당부드리고 있습니다. </h9>
          <p class="text-sm text-muted">
            <ul class="text-sm text-muted">
              <li>숙소 이용규칙을 준수하세요.</li>
              <li>호스트의 집도 자신의 집처럼 아껴주세요.</li>
            </ul>
          </p>
        </div>

        <%--        message box to host for reserve start--%>
        <div class="text-block" id="chatRoomOuterBox">
          <div class="d-flex">
            <div>
              <h5>질문이 있으신가요? 호스트에게 메시지를 보내 문의하세요.</h5>
              <p class="text-sm text-muted">이 숙소의 체크인 시간은 오후 3:00부터 오후 11:00까지입니다이며, 체크아웃은 오전 12:00입니다.</p>
            </div><img class="avatar avatar-md p-1 flex-shrink-0 ms-4" src="/img/avatar/${hostImage}" alt="Jack London">
          </div>

            <form class="bg-light rounded shadow-sm" action="#" >
               <div class="input-group" id="chatRoomBox">
                 <input type="hidden" id="chatSender" value="${guestId}"/>
                   <textarea class="form-control border-0 p-4 bg-light text-sm" id="chatContents" placeholder="Type a message" aria-describedby="button-sendMessage"></textarea>
                   <button class="btn btn-link" id="buttonSendMessage" type="button"><i class="fa fa-paper-plane"></i></button>
                </div>
            </form>

            <!-- http://127.0.0.1/kakaopay?reserveId=13 -->
        </div>
        <%--        message box to host for reserve end--%>
        <div class="row form-block flex-column flex-sm-row">
          <div class="col text-center text-sm-start"><a class="btn btn-link text-muted" href="user-booking-2.html"> <i class="fa-chevron-left fa me-2"></i>이전으로</a>
          </div>

<%--          <form action="/payment/success" method="GET">--%>
            <div class="col text-center text-sm-end">
              <img class="img-fluid" src="img/kakaoPay_small.jpg" alt="Kakao Pay">
              <button id="payBtn" class="btn btn-primary px-3" type="button">카카오페이로 결제하기<i class="fa-chevron-right fa ms-2"></i></button>
            </div>
<%--          </form>--%>
        </div>


      </div>
      <div class="col-lg-5 ps-xl-5">
        <div class="card border-0 shadow">
          <div class="card-body p-4">
            <div class="text-block pb-3">
              <div class="d-flex align-items-center">
                <div>
                  <h6> <a class="text-reset" href="detail-rooms.html">${room.roomName}</a></h6>
                  <p class="text-muted text-sm mb-0">#${room.roomLoc}&nbsp #${room.roomType}&nbsp #좋아요${room.roomLikes}</p>
                  <div class="mt-n1"><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-gray-200"></i>
                  </div>
                </div><a class="flex-shrink-0" href="detail-rooms.html"><img class="ms-3 rounded" src="/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="" width="100"></a>
              </div>
            </div>
            <div class="text-block py-3">
              <ul class="list-unstyled mb-0">
                <li class="mb-3"><i class="fas fa-users fa-fw text-muted me-2"></i>${room.roomName}</li>
                <li class="mb-0"><i class="far fa-calendar fa-fw text-muted me-2"></i><fmt:formatDate value="${reserve.reserveCheckIn}" pattern="MMM dd,yyyy"/><i class="fas fa-arrow-right fa-fw text-muted mx-3"></i><fmt:formatDate value="${reserve.reserveCheckOut}" pattern="MMM dd,yyyy"/></li>
              </ul>
            </div>
            <div class="text-block pt-3 pb-0">
              <table class="w-100">
                <tbody>
                <tr>
                  <h4>요금 세부 정보</h4>
                  <th class="fw-normal py-2">${room.roomPrice}X${days}박</th>
                  <td class="text-end py-2"><fmt:formatNumber type="number" pattern="###,###원" value="${reserve.reservePrice}"/></td>
                </tr>
                <tr>
                  <th class="fw-normal pt-2 pb-3">적립금</th>
                  <td class="text-end pt-2 pb-3">${guest.guestCoupon}원</td>
                </tr>
                </tbody>
                <tfoot>
                <tr class="border-top">
                  <th class="pt-3">총 합계</th>
                  <td class="fw-bold text-end pt-3"><fmt:formatNumber type="number" pattern="###,###원" value="${reserve.reservePrice}"/></td>
                </tr>
                </tfoot>
              </table>
            </div>
          </div>
          <div class="card-footer bg-primary-light py-4 border-0">
            <div class="d-flex align-items-center">
              <div>
<%--                <h6 class="text-primary">Flexible – free cancellation</h6>--%>
                <p class="text-sm text-primary opacity-8 mb-0"> 환불정책 : 7일 전에 취소하면 부분 환불을 받으실 수 있습니다. 그 이후에는 취소 시점에 따라 환불액이 결정됩니다. <a href="#" class="text-reset ms-3">세부사항 보기</a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


<!-- JavaScript files-->
<%--<script>--%>
<%--  // ------------------------------------------------------- //--%>
<%--  //   Inject SVG Sprite ---%>
<%--  //   see more here--%>
<%--  //   https://css-tricks.com/ajaxing-svg-sprite/--%>
<%--  // ------------------------------------------------------ //--%>
<%--  function injectSvgSprite(path) {--%>

<%--    var ajax = new XMLHttpRequest();--%>
<%--    ajax.open("GET", path, true);--%>
<%--    ajax.send();--%>
<%--    ajax.onload = function(e) {--%>
<%--      var div = document.createElement("div");--%>
<%--      div.className = 'd-none';--%>
<%--      div.innerHTML = ajax.responseText;--%>
<%--      document.body.insertBefore(div, document.body.childNodes[0]);--%>
<%--    }--%>
<%--  }--%>
<%--  // to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite--%>
<%--  // use your own URL in production, please :)--%>
<%--  // https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg--%>
<%--  //- injectSvgSprite('${path}icons/orion-svg-sprite.svg');--%>
<%--  injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg');--%>

</script>
<!-- jQuery-->
<script src="vendor/jquery/jquery.min.js"></script>
<!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Magnific Popup - Lightbox for the gallery-->
<script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
<!-- Smooth scroll-->
<script src="vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
<!-- Bootstrap Select-->
<script src="vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
<!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
<script src="vendor/object-fit-images/ofi.min.js"></script>
<!-- Swiper Carousel                       -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
<script>var basePath = ''</script>
<!-- Main Theme JS file    -->
<script src="js/theme.js"></script>
</body>
