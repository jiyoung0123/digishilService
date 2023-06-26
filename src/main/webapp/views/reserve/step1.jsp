<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>
  let weather = {
    init : ()=>{
      $('#weatherSearch').click(async ()=>{
        $('#weatherTbody').empty();
        await $('#weatherTable').show();
        let weatherLoc = $('#weatherLoc').val();
        console.log('입력한 loc'+ weatherLoc);
        $.ajax({
          url : '/weather',
          data : {
            'loc' : weatherLoc
          }
        }).done((data)=>{
          let newData = JSON.parse(data);
          let map = new Map();
          console.log('weather succeed');
          console.log(newData);
          newData.forEach((e)=>{
            e.substring(0,3);
            console.log(e.substring(e.length-3,e.length));
            console.log(e.substring(e.length-10,e.length-7));
            console.log(e.substring(0,3));
            console.log(e.substring(3,e.length-11));
            map.set(e.substring(0,3)+"최저",e.substring(e.length-3,e.length));
            map.set( e.substring(0,3)+"최고", e.substring(e.length-10,e.length-7));
            map.set(e.substring(0,3)+"설명",e.substring(3,e.length-11));
            let date = e.substring(0,3);
            let high = e.substring(e.length-3,e.length);
            let low = e.substring(e.length-10,e.length-7);
            let desc = e.substring(3,e.length-11);
            let html =
                    `
                            <tr>
                                <td>\${date}</td>
                                <td>\${desc}</td>
                                <td>\${high}</td>
                                <td>\${low}</td>
                            </tr>
                        `;
            $('#weatherTbody').append(html);
          })
          console.log(map);


        }).fail(()=>{
          console.log('weather failed');

        })
      })
    }
  }


  $(()=>{
    weather.init();
    $('#weatherTable').hide();
  })
</script>

<div class="progress rounded-0 sticky-top" style="height: 8px; top: 72px;">
  <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<section class="py-5">
  <div class="container">
    <div class="row">
      <div class="col-lg-7">
        <p class="subtitle text-primary">Book your holiday home</p>
        <h1 class="h2 mb-5">${room.roomName}<span class="text-muted float-end">Step 1</span>      </h1>
        <div class="text-block">
          <div class="alert alert-warning text-sm mb-3">
            <div class="d-flex align-items-center">
              <svg class="svg-icon svg-icon svg-icon-light w-2rem h-2rem me-3 text-reset flex-shrink-0">
                <use xlink:href="#heart-1"> </use>
              </svg>
              <div><strong>흔치 않은 기회 입니다.</strong> <br>${room.hostName}님의 숙소는 보통 예약이 가득 차 있습니다.</div>
            </div>
          </div>
        </div>
        <div class="text-block">
          <h5 class="mb-4">${room.roomLoc} 에서 ${days}박</h5>
          <div class="row mb-3">
            <div class="col-md-6 d-flex align-items-center mb-3 mb-md-0">
              <div class="date-tile me-3">
                <div class="text-uppercase"> <span class="text-sm"><fmt:formatDate value="${reserve.reserveCheckIn}" pattern="MMM"/></span><br><strong class="text-lg"><fmt:formatDate value="${reserve.reserveCheckIn}" pattern="dd"/></strong></div>
              </div>
              <p class="text-sm mb-0"><fmt:formatDate value="${reserve.reserveCheckIn}" pattern="EEE"/>요일 체크인</p>
            </div>
            <div class="col-md-6 d-flex align-items-center">
              <div class="date-tile me-3">
                <div class="text-uppercase"> <span class="text-sm"><fmt:formatDate value="${reserve.reserveCheckOut}" pattern="MMM"/></span><br><strong class="text-lg"><fmt:formatDate value="${reserve.reserveCheckOut}" pattern="dd"/></strong></div>
              </div>
              <p class="text-sm mb-0"><fmt:formatDate value="${reserve.reserveCheckOut}" pattern="EEE"/>요일 체크아웃</p>
            </div>
          </div>
        </div>
        <div class="text-block">
          <h5 class="mb-4">기본 규칙</h5>
          <ul class="list-unstyled">
            <li class="mb-2">
              <div class="d-flex align-items-center mb-3">
                <div class="icon-rounded icon-rounded-sm bg-secondary-light flex-shrink-0 me-4"><i class="fa fas fa-child text-secondary fa-fw text-center"></i></div>
                <div><span class="text-sm">훌륭한 게스트가 되기 위한 몇 가지 간단한 규칙을 지켜주실 것을 모든 게스트에게 당부드리고 있습니다.</span></div>
              </div>
            </li>
            <li class="mb-2">
              <div class="d-flex align-items-center mb-3">
                <div class="icon-rounded icon-rounded-sm bg-secondary-light flex-shrink-0 me-4"><i class="fa fas fa-glass-cheers text-secondary fa-fw text-center"></i></div>
                <div><span class="text-sm">호스트의 집도 자신의 집처럼 아껴주세요.</span></div>
              </div>
            </li>
            <li class="mb-2">
              <div class="d-flex align-items-center mb-3">
                <div class="icon-rounded icon-rounded-sm bg-secondary-light flex-shrink-0 me-4"><i class="fa fa-smoking-ban text-secondary fa-fw text-center"></i></div>
                <div><span class="text-sm">숙소에서는 금연을 준수해 주세요.</span></div>
              </div>
            </li>
            <li class="mb-2">
              <div class="d-flex align-items-center mb-3">
                <div class="icon-rounded icon-rounded-sm bg-secondary-light flex-shrink-0 me-4"><i class="fa fa-cat text-secondary fa-fw text-center"></i></div>
                <div><span class="text-sm">${room.roomPet}</span></div>
              </div>
            </li>
          </ul>
        </div>
        <div class="row form-block flex-column flex-sm-row">
          <form action="/kakaopay" method="GET">
            <input type="hidden" name="reserveId" value="${reserveId}">
          <div class="col text-center text-sm-end"><button type="submit" class="btn btn-primary px-3" href="/kakaopay">결제하러 가기<i class="fa-chevron-right fa ms-2"></i></button></div>
          </form>
        </div>
      </div>
      <div class="col-lg-5 ps-xl-5">
        <div class="card border-0 shadow">
          <div class="card-body p-4">
            <div class="text-block pb-3">
              <div class="d-flex align-items-center">
                <div>
                  <h6> <a class="text-reset" href="detail-rooms.html">${room.roomName}</a></h6>
                  <p class="text-muted text-sm mb-0">${room.roomType}</p>
                  <div class="mt-n1"><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-gray-200"></i>
                  </div>
                </div><a class="flex-shrink-0" href="detail-rooms.html"><img class="ms-3 rounded" src="img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="" width="100"></a>
              </div>
            </div>
            <div class="text-block py-3">
              <ul class="list-unstyled mb-0">
                <li class="mb-3"><i class="fas fa-users fa-fw text-muted me-2"></i>${reserve.reserveCap} guests</li>
                <li class="mb-0"><i class="far fa-calendar fa-fw text-muted me-2"></i><fmt:formatDate value="${reserve.reserveCheckIn}" pattern="MMM dd,yyyy"/><i class="fas fa-arrow-right fa-fw text-muted mx-3"></i><fmt:formatDate value="${reserve.reserveCheckOut}" pattern="MMM dd,yyyy"/></li>
              </ul>
            </div>
            <div class="text-block pt-3 pb-0">
              <table class="w-100">
                <tbody>
                <tr>
                  <th class="fw-normal py-2">${days} 박</th>
                  <td class="text-end py-2">1박 당 <fmt:formatNumber type="number" pattern="###,###원" value="${room.roomPrice}"/></td>
                </tr>
                </tbody>
                <tfoot>
                <tr class="border-top">
                  <th class="pt-3">합계</th>
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
        <div class="card shadow mb-4" >
          <div class="card-body">
            <!-- 검색바 -->
            <div class="input-group mb-3">
              <input type="text" id="weatherLoc" class="form-control" placeholder="궁금한 지역의 날씨를 검색하세요">
              <div class="input-group-append">
                <button id="weatherSearch" class="btn btn-primary" type="button">날씨검색</button>
              </div>
            </div>
            <table class="table" id="weatherTable">
              <thead>
              <tr>
                <th>날짜</th>
                <th></th>
                <th>최고기온</th>
                <th>최저기온</th>
              </tr>
              </thead>
              <tbody id="weatherTbody">

              </tbody>
            </table>


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
