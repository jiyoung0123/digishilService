<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.0/js/bootstrap.min.js"></script>

<script src="path/to/jquery.min.js"></script>
<script src="path/to/moment.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style>
    #all{
        border: none;
        outline: none;
    }
</style>
<script>

let websocket={
    id:null,
    stompClient:null,
    init:function(){
        this.id = $('#loginGuestId').val();
        $("#connectBtn").click(function() {
            websocket.connect();
        });
        $("#disconnectBtn").click(function() {
            websocket.disconnect();
        });
        $("#sendall").click(function() {
            websocket.sendAll();
            let point = 0;
            point += 350;
            const paperPlane = $('#paperPlane');
            console.log(paperPlane); // paperPlane 선택자로 선택된 요소를 확인합니다.
            paperPlane.css('position', 'relative'); // position 속성을 설정합니다.
            paperPlane.animate({ left: point + 'px' }); // 애니메이션을 적용합니다.

            const paperPlane1 = $('#paperPlane1');
            console.log(paperPlane1);
            paperPlane1.css('display', 'block');
        });
        $("#sendto").click(function() {
            websocket.sendTo();
        });
    },
    // 관리자 서버로 접속:8088


    connect:function(){
        var sid = this.id;
        var socket = new SockJS('http://127.0.0.1/randomWs');

        // 커넥트시도
        this.stompClient = Stomp.over(socket);

        // 커넥트시도
        this.stompClient.connect({}, function(frame) {
            websocket.setConnected(true);

            // subscribe로 받을 준비함
            this.subscribe('/randomSend', function(msg) {
                $("#all").prepend(
                    "<h4>" + '<img src="img/paperPlane.jpg" style="width: 50px;margin-left: 10px;">'+ $('#name').val() +":"+
                    // "<h4>" + JSON.parse(msg.body).sendid +":"+
                    // "<h4>" + $('#guestName').val() +":"+
                    JSON.parse(msg.body).content1
                    + "</h4>");
            });
            this.subscribe('/randomSend/to/'+sid, function(msg) {
                $("#to").prepend(
                    "<h4>" + JSON.parse(msg.body).sendid +":"+
                    JSON.parse(msg.body).content1
                    + "</h4>");
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
            $("#status").text("Connected");
        } else {
            $("#status").text("Disconnected");
        }
    },
    // receiveall한테 메세지를 보내는것 -receiveall은 8088/ws에 있음-관리자의 msgcontroller로 들어옴
    sendAll:function(){
        var msg = JSON.stringify({
            'sendid' : $('#loginGuestId').val(),
            'content1' : $("#alltext").val()
        });
        this.stompClient.send("/randomReceiveall", {}, msg);
    },
    sendTo:function(){
        var allText = $('#all').text().trim();
        var chatId = allText.split(':')[1];
        console.log("==================================================");
        console.log(chatId);
        var msg = JSON.stringify({
            'sendid' : this.id,
            'receiveid' :chatId,
            'content1' : $('#totext').val()
        });
        this.stompClient.send('/randomReceiveto', {}, msg);
    },
};
// $(document).ready(function() {
//     $('#all').click(function() {
//         $('#leaveReview').collapse('toggle');
//     });
// });


$(function(){
    websocket.init();
})
</script>


<body style="padding-top: 72px;">
<!-- Hero Section-->
<section class="hero py-6 py-lg-7 text-white dark-overlay"><img class="bg-image" src="img/photo/photo-1522143049013-2519756a52d4.jpg" alt="How can we help you today?">
    <div class="container overlay-content">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb text-white justify-content-center no-border mb-0">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item active">Contact                         </li>
        </ol>
        <h1 class="hero-heading">How can we help you today?</h1>
    </div>
</section>

<section class="py-6 bg-gray-100">
    <div class="container">
        <h2 class="h4 mb-5">종이 비행기</h2>
        <div class="row">
            <div class="col-md-5 mb-5 mb-md-0">
<%--                <form class="form" id="contact-form" method="post" action="contact.php">--%>
                    <input id="loginGuestId" value="${loginGuest.getGuestId()}">
                    <button class="btn btn-outline-primary" id="connectBtn">채팅시작</button>
                    <button class="btn btn-outline-primary" id="disconnectBtn">연결해제</button>
<%--                    <input id="guestName" type="hidden" value="${loginGuest.getguestName()}">--%>
                    <H1 id="status">Status</H1>
                    <div class="controls">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="mb-4">
                                    <label class="form-label" for="name">닉네임</label>
                                    <input class="form-control" type="text" name="name" id="name" placeholder="대화명을 입력 해 주세요">
                                </div>
                            </div>
                        </div>
                        <div class="mb-4">
                            <label class="form-label" for="message">인사말</label>
                            <textarea type="text" id="alltext" class="form-control" rows="4" name="message" id="message" placeholder="인사말을 입력해 주세요"></textarea>
                        </div>

                        <button class="btn btn-outline-primary" id="sendall">종이비행기 날리기</button>

                        <img id="paperPlane" src="img/paperPlaneWhite.jpg" style="width: 50px;margin-left: 10px;">
                    </div>
<%--                </form>--%>
            </div>
            <div class="col-md-5">
                <div class="ps-lg-4 text-sm">

<%--                    <div class="col-12 col-lg-3 align-self-center" >--%>
                    <a id="all" class="btn btn-outline-primary" type="button" href="/randomChatRoom" >
<%--                        <a id="all" class="btn btn-outline-primary" type="button" href="/" data-bs-toggle="collapse" data-bs-target="#leaveReview" aria-expanded="false" aria-controls="leaveReview">--%>
                    </a>
                    <div id="leaveReview" class="collapse">
                        채팅창
                        <div id="to"></div>
                        <!-- 채팅창 내용을 넣으세요 -->
                    </div>

                    <div class="collapse mt-4" id="leaveReview">
                                <div class="col-sm-6">
                                    <label class="form-label">메세지</label>
                                    <input id="totext" class="form-control" required="required">
                                    <input type="hidden" id="target">
                                    <button id="sendto">보내기</button>
                                </div>
                        </div>
<%--                    </div>--%>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
