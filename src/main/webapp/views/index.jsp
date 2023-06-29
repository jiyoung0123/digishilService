<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>단기임대 No.1 DIGI실</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="/vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <!-- swiper-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="/vendor/magnific-popup/magnific-popup.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="/img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->


<%--웹소켓라이브러리--%>
    <script src="/webjars/sockjs-client/sockjs.min.js"></script>
    <script src="/webjars/stomp-websocket/stomp.min.js"></script>
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
</head>
<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>

<style>
    #img-btn {
        z-index: 9999;
        opacity: 0;
        width: 250px;
        height: 250px;
        position: fixed;
        bottom: 13%;
        right: 0%;
        font: 2px monospace;
        transition: opacity 2s, transform 2s;
        border-style: none;
    }

    #img-btn.show {
        opacity: 1;
        transition: opacity 5s, transform 5s;
    }

</style>


<script>

    function changeLanguage(language) {
        fetch('/change-language?lang=' + language, {
            method: 'GET',
        })
            .then(response => {
                if (response.ok) {
                    // Language changed successfully
                    // You can perform additional actions or update the UI accordingly
                    console.log('Language changed to ' + language);
                    // Reload the page to reflect the new language
                    location.reload();
                } else {
                    // Handle error response
                    console.error(language);
                    console.error('Failed to change language');
                }
            })
            .catch(error => {
                // Handle network or fetch error
                console.error('Error occurred:', error);
            });
    }

    let websocket = {
        id:null,
        stompClient:null,
        init:async function(){
            this.id = '${loginGuest.guestId}';
            await websocket.connect();
            $("#disconnect").click(function() {
                websocket.disconnect();
            });
            $("#sendall").click(function() {
                websocket.sendAll();
            });
            $("#sendme").click(function() {
                websocket.sendMe();
            });
            $('#buttonSendMessage').click(function() {
                console.log('sendTo clicked');
                let fromId = `${loginGuest.guestId}`;
                let toId =`${hostInfo.hostId}`;//메신저 chatDetail.jsp에 있는 hostInfo
                let contents = $('#chatContentsBox').val();
                let chatRoomId = $('#chatRoomId').val();
                websocket.sendTo(fromId, toId, contents, chatRoomId);
            });
            $('#payBtn').click(()=>{
                console.log('payButton clicked');
                let fromId = `${loginGuest.guestId}`;
                let toId = `${hostId}`;
                let contents = '예약이 1건 결제 완료되었습니다.';
                let chatRoomId = '';
                websocket.sendTo(fromId, toId, contents, chatRoomId);
            });




        },
        sendTo:function(fromId, toId, contents, chatRoomId){
            var msg = JSON.stringify({
                'sendid' :  fromId,//보내는 사람
                'receiveid' : toId, //받는 사람
                'content1' : contents,
                'chatroomid' : chatRoomId
            });
            console.log(msg);
            this.stompClient.send('/receiveto', {}, msg);
        },
        connect:function(){
            var sid = '${loginGuest.guestId}';// 로그인한 나의 Id
            console.log("===========connect 성공===========");
            console.log(sid);
            console.log("===========connect===========");
            var socket = new SockJS('http://127.0.0.1:8088/ws');
            socket.withCredentials = false;
            this.stompClient = Stomp.over(socket);


            this.stompClient.connect({}, function(frame) {
                websocket.setConnected(true);
                console.log('연결: ' + frame);
                    this.subscribe('/send/to/'+sid, function(msg) {
                console.log('/send/to 탬플릿 활성화');
                console.log('=================');
                console.log(msg.toString());
                console.log(JSON.parse(msg.body).content1);
                console.log('===================');
                let chatSendId = JSON.parse(msg.body).sendid;
                let chatReceiveId = JSON.parse(msg.body).receiveid;
                let chatContents = JSON.parse(msg.body).content1;
                let chatRoomId = JSON.parse(msg.body).chatroomid;

                // console.log(parsedMsg.content1);
                if(chatRoomId != ""){
                    let modalMessage =
                        `
          <div class="list-group-item list-group-item-action p-4">
            <div class="row">
              <div class="col-2 col-lg-1 align-self-lg-center py-3 d-flex align-items-lg-center z-index-10">
                 <div class="form-check">
                  <input class="form-check-input" id="select_message_0" type="checkbox">
                  <label class="form-check-label" for="select_message_0"> </label>
                </div>
                <div class="form-star d-none d-sm-inline-block mt-n1">
                  <input id="star_message_0" type="checkbox" name="star" checked>
                  <label class="star-label" for="star_message_0"><span class="sr-only">Important Message</span></label>
                </div>
              </div>
              <div class="col-9 col-lg-4 align-self-center mb-3 mb-lg-0">
  <div class="d-flex align-items-center mb-1 mb-lg-3">
                  <h2 class="h5 mb-0"></h2><img class="avatar avatar-sm avatar-border-white ms-3" src="img/avatar/avatar-0.jpg" alt="Jack London">
                </div>
                <p class="text-sm text-muted">\${chatSendId}</p><a class="stretched-link" href="user-messages-detail.html"></a>
              </div>
              <div class="col-10 ms-auto col-lg-7">
                <div class="row">
                  <div class="col-md-8 py-3">
                   \${chatContents}
                  </div>
                  <div class="col-md-4 text-end py-3">
                    <span class="badge badge-pill p-2 badge-secondary-light"></span>
                  </div><a class="stretched-link" href="/chatdetail?chatRoomId=\${chatRoomId}&hostId=\${chatReceiveId}&guestId=\${chatSendId}"></a>
                </div>
              </div>
            </div>
          </div>

                  `;
                    $('#modalMessage').append(modalMessage);
                }else{
                    let modalMessage =
                        `
          <div class="list-group-item list-group-item-action p-4">
            <div class="row">
              <div class="col-2 col-lg-1 align-self-lg-center py-3 d-flex align-items-lg-center z-index-10">
                 <div class="form-check">
                  <label class="form-check-label" for="select_message_0"> </label>
                </div>
                <div class="form-star d-none d-sm-inline-block mt-n1">
                  <input id="star_message_0" type="checkbox" name="star" checked>
                  <label class="star-label" for="star_message_0"><span class="sr-only">Important Message</span></label>
                </div>
              </div>
              <div class="col-9 col-lg-4 align-self-center mb-3 mb-lg-0">
  <div class="d-flex align-items-center mb-1 mb-lg-3">
                  <h2 class="h5 mb-0"></h2><img class="avatar avatar-sm avatar-border-white ms-3" src="img/avatar/avatar-0.jpg" alt="Jack London">
                </div>
                <p class="text-sm text-muted">\${chatSendId}</p><a class="stretched-link" href="user-messages-detail.html"></a>
              </div>
              <div class="col-10 ms-auto col-lg-7">
                <div class="row">
                  <div class="col-md-8 py-3">
                   \${chatContents}
                  </div>
                  <div class="col-md-4 text-end py-3">
                    <span class="badge badge-pill p-2 badge-secondary-light"></span>
                  </div><a class="stretched-link" href="/bookinglist"></a>
                </div>
              </div>
            </div>
          </div>

                  `;
                    $('#modalMessage').append(modalMessage);
                }


                $('#modalMessage').append(modalMessage);

                let redSpot =
                    `
                    <div class="spinner-grow text-danger spinner-grow-sm"></div>
                    `;
                $('#notificationBell').append(redSpot);
                // if(msg.content1=='message'){
                //   $('#messageBell').append(redSpot);
                // }
                console.log('받은 것'+msg);
                //send라고 하고 상대방 타인 포트ㄹ 지정해주면, 메세지를 일단 받고
                // 이 메세지에 아래처럼 덧붙여서 보낼게.
                // $("#to").prepend(
                //         "<h4>" + JSON.parse(msg.body).sendid +":"+
                //         JSON.parse(msg.body).content1
                //         + "</h4>");

            });
            });

        },
        disconnect:function(){
            if (this.stompClient !== null) {
                this.stompClient.disconnect();
            }
            websocket.setConnected(false);
            console.log("Disconnected");
        },
        setConnected:function(connected){
            if (connected) {
                console.log('connected');
                $("#status").text("Connected");
            } else {
                $("#status").text("Disconnected");
            }
        },
        sendAll:function(){
            var msg = JSON.stringify({
                'sendid' : this.id,
                'content1' : $("#alltext").val()
            });
            this.stompClient.send("/receiveall", {}, msg);
        },

        sendMe:function(){
            var msg = JSON.stringify({
                'sendid' : this.id,
                'content1' : $('#metext').val()
            });
            this.stompClient.send("/receiveme", {}, msg);
        }
    };

    $(function(){
        websocket.init();

    });

</script>
<body style="padding-top: 72px;">
<header class="header">
    <!-- Navbar-->
    <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">

        <div class="container-fluid">
<%--            요기 이미지가 diretory 로고임--%>
            <div class="d-flex align-items-center"><a class="navbar-brand py-1" href="/"><img src="/img/캡처.png" alt="Directory logo" style="width:200px; height: 50px;"></a>
                <form class="form-inline d-none d-sm-flex" action="#" id="search">
                    <div class="input-label-absolute input-label-absolute-left input-expand ms-lg-2 ms-xl-3">
                        <label class="label-absolute" for="search_search"><i class="fa fa-search"></i><span class="sr-only">What are you looking for?</span></label>
                        <input class="form-control form-control-sm border-0 shadow-0 bg-gray-200" id="search_search" placeholder="Search" aria-label="Search" type="search">
                    </div>
                </form>
            </div>
    <div class="d-flex align-items-center justify-content-end" id="notificationBell">
        <svg class="svg-icon text-primary svg-icon-sd"><use xlink:href="#customer-suppot-1"> </use></svg>
        <button type="button" class="btn btn" data-bs-toggle="modal" data-bs-target="#myModal">
            <i class='fas fa-bell' style='font-size:24px'></i>
        </button>
    </div>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
            <!-- Navbar Collapse -->
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <form class="form-inline mt-4 mb-2 d-sm-none" action="#" id="searchcollapsed">
                    <div class="input-label-absolute input-label-absolute-left w-100">
                        <label class="label-absolute" for="searchcollapsed_search"><i class="fa fa-search"></i><span class="sr-only">What are you looking for?</span></label>
                        <input class="form-control form-control-sm border-0 shadow-0 bg-gray-200" id="searchcollapsed_search" placeholder="Search" aria-label="Search" type="search">
                    </div>
                </form>
                <ul class="navbar-nav ms-auto">
                    <!-- 언어팩 -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle active" id="langPack" href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <svg class="svg-icon text-primary svg-icon-sd"><use xlink:href="#earth-globe-1"> </use></svg>
                         </a>
                        <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink">
                            <button class="dropdown-item" onclick="changeLanguage('en')">English</button>
                            <button class="dropdown-item" onclick="changeLanguage('ko')">한국어</button>
                            <button class="dropdown-item" onclick="changeLanguage('ja')">日本語</button>
                        </div>

                    </li>


                    <!-- Home -->

                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle active" id="homeDropdownMenuLink" href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Home</a>
                        <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink"><a class="dropdown-item" href="/room/list">DIGISHIL 살아보기</a><a class="dropdown-item" href="/chat?guestId=${loginGuest.getGuestId()}"> 메신저 </a><a class="dropdown-item" href="/randomChatList">우리끼리 채팅 </a>
                        </div>
                    </li>

                    <c:choose>
                        <c:when test="${loginGuest != null}">
                            <li class="nav-item"></li>
                        </c:when>
                        <c:otherwise>

                        </c:otherwise>
                    </c:choose>
                    </li>
                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle active " id="docsDropdownMenuLink" href="/index" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        더보기</a>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
                            <h6 class="dropdown-header fw-normal">Documentation</h6><a class="dropdown-item" href="/canvas">블럭깨기 Game</a><a class="dropdown-item" href="http://localhost:3000?guestId=${loginGuest.getGuestId()}">리액트 게임</a>

                        </div>
                    </li>
                    <c:choose>
                        <c:when test="${loginGuest == null}">
                            <li class="nav-item"><a class="nav-link active" href="/login">로그인</a></li>
                            <li class="nav-item"><a class="nav-link active" href="/register">회원가입</a></li>
                        </c:when>
                        <c:otherwise>
                            <c:if test="${loginGuest.guestImage == null}">
                                <img class="avatar avatar-border-white flex-shrink-0 me-2" src="/img/avatar/default_profile.png" alt="Julie"/>
                            </c:if>
                            <c:if test="${loginGuest.guestImage != null}">
                                <img class="avatar avatar-border-white flex-shrink-0 me-2" src="/img/avatar/${loginGuest.guestImage}" alt="Julie"/>
                            </c:if>
                            <li class="nav-item dropdown"><a id="loginDropdownMenuLink" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="/login">${loginGuest.guestName}</a>
                                <div class="dropdown-menu" aria-labelledby="loginDropdownMenuLink">
                                    <a class="dropdown-item" href="/guestInfo?id=${loginGuest.guestId}">회원정보 수정</a>
                                    <a class="dropdown-item" href="/guestPwd?id=${loginGuest.guestId}">비밀번호 변경</a>
                                    <a class="dropdown-item" href="/reservelist?guestId=${loginGuest.guestId}">나의 예약정보</a>
                                    <a class="dropdown-item" href="/likeList?guestId=${loginGuest.guestId}">찜 목록</a>
                                </div>
                            </li>
                            <li class="nav-item"><a class="nav-link" href="/logouts">로그아웃</a></li>
                        </c:otherwise>
                    </c:choose>
                    <li class="nav-item mt-3 mt-lg-0 ms-lg-3 d-lg-none d-xl-inline-block"><a class="btn btn-primary" href="user-add-0.html">당신의 공간을 DIGI실 하세요</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- /Navbar -->
</header>

        <c:choose>
            <c:when test="${center == null}">
                <jsp:include page="center.jsp"/>
            </c:when>
            <c:otherwise>
                <jsp:include page="${center}.jsp"/>
            </c:otherwise>
        </c:choose>


<!-- Footer-->
<footer class="position-relative z-index-10 d-print-none">
    <!-- Main block - menus, subscribe form-->
    <div class="py-6 bg-gray-200 text-muted" style="padding-top:0px; padding-bottom: 0px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <div class="fw-bold text-uppercase text-dark mb-3">상호명 : (주) 디지실</div>
                    <p>사업자등록번호 : 886-81-01187 <br>통신판매업 신고번호 : 제2022-서울성북-0534호</p>
                    <ul class="list-inline">
                        <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="twitter"><i class="fab fa-twitter"></i></a></li>
                        <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="facebook"><i class="fab fa-facebook"></i></a></li>
                        <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="instagram"><i class="fab fa-instagram"></i></a></li>
                    </ul>
                </div>
                <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
                    <h6 class="text-uppercase text-dark mb-3">고객 문의 : 1877-3670</h6>
                    <ul class="list-unstyled">
                        <li>제휴문의 : digishil@kbfg.com</li>
                    </ul>
                </div>

                <div class="col-lg-4">
                    <h6 class="text-uppercase text-dark mb-3">상호명 : (주)디지실</h6>
                    <p class="mb-3">㈜디지실은 통신판매중개자로서 통신판매의 당사자가 아닙니다.
                        상품, 상품정보, 거래에 관한 의무와 책임은 계약당사자에게 있습니다.</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Copyright section of the footer-->
    <div class="py-4 fw-light bg-gray-800 text-gray-300">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 text-center text-md-start">
                    <p class="text-sm mb-md-0">&copy; 2021, Your company.  All rights reserved.</p>
                </div>
                <div class="col-md-6">
                    <ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-end">
                        <li class="list-inline-item"><img class="w-2rem" src="/img/visa.svg" alt="..."></li>
                        <li class="list-inline-item"><img class="w-2rem" src="/img/mastercard.svg" alt="..."></li>
                        <li class="list-inline-item"><img class="w-2rem" src="/img/paypal.svg" alt="..."></li>
                        <li class="list-inline-item"><img class="w-2rem" src="/img/western-union.svg" alt="..."></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
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

<!-- jQuery-->
<script src="/vendor/jquery/jquery.min.js"></script>
<!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Magnific Popup - Lightbox for the gallery-->
<script src="/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
<!-- Smooth scroll-->
<script src="/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
<!-- Bootstrap Select-->
<script src="/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
<!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
<script src="/vendor/object-fit-images/ofi.min.js"></script>
<!-- Swiper Carousel                       -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
<script>var basePath = ''</script>
<!-- Main Theme JS file    -->
<script src="/js/theme.js"></script>

<%--rooms daterange--%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-date-range-picker/0.19.0/jquery.daterangepicker.min.js"> </script>

<!-- The Modal -->
<div class="modal" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">알림센터(Notification center)</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <div class="list-group shadow mb-5" id="modalMessage">



                </div><!-- obj Div 태그 -->
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
            </div>

        </div>
    </div>
</div>


</body>
</html>