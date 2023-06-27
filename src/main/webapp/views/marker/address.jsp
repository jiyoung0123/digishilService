<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4083a9e1e518bd0452f9a390ffd2eec7&libraries=services"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type = "text/javascript" src = "https://sgisapi.kostat.go.kr/OpenAPI3/auth/javascriptAuth?consumer_key=6db61f39b75c429b8bef" />


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style>
    .map-container {
        position: relative;
        width: 100%;
        height: 0;
        padding-bottom: 75%; /* Adjust the aspect ratio (height:width) as desired */
        overflow: hidden;
    }

    #map {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }
</style>
<script>
    //프로세스 - 로그인을 하고 방 등록하는 과정
    // (1) 기본 정보 입력 : 가격/방이름/주소입력하고 주소가 입력되면, 나머지 정보들(지역, 위도, 경도) 등이 고정됨.
    // (2) 특히 주소가 입력되면 주소를 확정짓겠냐고 물어봐줘야함. 확정버튼을 누르면 나머지가 다 고정되어서 넘어감.
    // (3) 그리고 그 다음 정보로 넘어감.
    // (4) 부드럽게 그 다음이 넘어가도록.
    // (5) register 버튼 클릭시 구글 auth 클릭하도록


</script>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Directory Theme by Bootstrapious</title>
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
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid px-3">
    <div class="row min-vh-100">
        <div class="col-md-8 col-lg-6 col-xl-5 d-flex align-items-center">
            <div class="w-100 py-5 px-md-5 px-xxl-6 position-relative">
                <div class="mb-4"><img class="img-fluid mb-4" src="/img/logo-square.svg" alt="..." style="max-width: 4rem;">
                    <h2>방을 등록해주세요.</h2>
                    <p class="text-muted">  간편하게. 오로지 DIGI-실에서만. </p>
                </div>
                <form class="form-validate" id="roomForm">
                    <div id="roomFormTable1">
                        <div class="mb-4">
                            <input class="form-control" type="hidden"  name="hostId" id="hostId" value="${loginHost.hostId}" readonly>
                        </div>
                        <div class="mb-4">
                            <label class="form-label" type="number"for="roomPrice"> 가격 </label>
                            <input class="form-control" name="roomPrice" id="roomPrice" placeholder=""  required data-msg="Please enter your password">
                        </div>
                        <div class="mb-4">
                            <label class="form-label" for="roomName"> 방 이름 </label>
                            <input class="form-control" name="roomName" id="roomName" placeholder="방 이름을 만들어주세요"  required data-msg="Please enter your password">
                        </div>
                        <div class="mb-4">
                            <label class="form-label" type="text" for="roomAddress"> 주소 </label>
                        <input class="form-control" type="text" name="roomAddress"  id="roomAddress" placeholder="주소">
                        <input class="form-control" type="button" onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
                        </div>
                        <div class="mb-4">
                            <label class="form-label" for="roomCap">최대 수용인원</label>
                            <table>
                                <tr>
                                    <td valign="top">
                                        <select name="roomCap" id="roomCap" class="form-control">
                                            <option value="1">1인</option>
                                            <option value="2">2인</option>
                                            <option value="3">3인</option>
                                            <option value="4">4인</option>
                                            <option value="5">5인</option>
                                            <option value="6">6인</option>
                                            <option value="7">7인</option>
                                            <option value="8">8인</option>
                                            <option value="9">9인</option>
                                            <option value="10">10인 +</option>
                                        </select>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div>
                            <input class="form-control"   name="roomLat" id="roomLat" ><!-- 위도 -->
                            <input class="form-control" name="roomLng" id="roomLng" ><!-- 경도 -->
    <%--                        <input class="form-control"  type="hidden"  id="roomPosY" ><!-- 새위도변형 -->--%>
    <%--                        <input class="form-control"  type="hidden"  id="roomPosX" ><!-- 새경도변형 -->--%>
                            <input class="form-control" name="roomLoc" id="roomLoc" ><!-- 지역 -->
                            <input class="form-control" name="roomLoc2" id="roomLoc2" ><!-- 지역 -->
                        </div>
                        <div class="d-grid gap-2">
                            <button class="btn btn-lg btn-primary" type="button" id="roomRegisterNextBtn" > 다음 </button>
                        </div>

                    </div>


                    <div id="roomFormTable2">

                    <div class="mb-4">
                        <label class="form-label" for="roomInfo"> 간단한 방 소개</label>
                        <input class="form-control" name="roomInfo" id="roomInfo" placeholder="간단한 방 소개"  required data-msg="Please enter your password">
                    </div>
                        <div class="mb-4">
                            <label class="form-label" for="roomIntro"> 상세 설명 </label>
                            <input class="form-control" name="roomIntro" id="roomIntro" placeholder="상세 설명"  required data-msg="Please enter your password">
                        </div>


                        <div class="mb-4">
                            <label class="form-label" for="roomCap">집 형태</label>
                            <table>
                                <tr>
                                    <td valign="top">
                                        <select name="roomType" id="roomType" class="form-control">
                                            <option value="1">아파트</option>
                                            <option value="2">오피스텔</option>
                                            <option value="3">독채</option>
                                        </select>
                                    </td>
                                </tr>
                            </table>
                        </div>

                        <div class="mb-4">
                            <label class="form-label" for="roomImage1"> 이미지 첨부 </label>
                            <input type="file" class="form-control" name="roomImage1" style="margin-right: 10px;" id="roomImage1" placeholder="이미지 첨부"  required data-msg="Please enter your password">
                        </div>



                        <div class="d-grid gap-2">
                            <button class="btn btn-lg btn-primary" type="button" id="roomRegisterBtn" > 등록 </button>
                        </div>

                    </div>




                    <hr class="my-4">
                    <p class="text-sm text-muted">By signing up you agree to Directory's <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a>.</p>
                </form>
                <a class="close-absolute me-md-5 me-xl-6 pt-5" href="/">
                <svg class="svg-icon w-3rem h-3rem">
                    <use xlink:href="#close-1"> </use>
                </svg></a>
            </div>
        </div>
        <div class="col-md-4 col-lg-6 col-xl-7 d-none d-md-block">
            <div class="map-container">
                <div id="map"></div>
            </div>
            <div id="coordinates"></div>
        </div>
    </div>
</div>

</body>
<script>




    $(()=>{
        roomRegister.init();
    });
    let roomRegister = {
        init : ()=>{      $('#roomFormTable2').hide();
            $('#roomRegisterNextBtn').click(()=>{
            console.log('clicked register button');
            if($('#hostId').val().length == 0){
                alert('로그인한 호스트만 올릴 수 있어요!');
            } else if($('#roomPrice').val().length == 0){
                alert('가격을 입력해주세요');
            }else{


                $('#roomFormTable1').hide();
                $('#roomFormTable2').show();

                $('#roomRegisterBtn').click(()=> {
                    roomRegister.send();
                })
            }

        })},
        send:function(){
            $('#roomForm').attr({
                'action':'/registerAddressImpl',
                'method':'post'
            });
            $('#roomForm').submit();
        }
    }




    function reverseAddress(y, x){
        $.ajax({
            url:'/reverseAddress',
            data:{
                'x_coor' : x,
                'y_coor' : y
            }
        }).done((data)=>{
            console.log('reverseAddress founded');
            console.log(data);
            let parsedData = JSON.parse(data);
            let sido_nm = parsedData.result[0].sido_nm;
            let sgg_nm = parsedData.result[0].sgg_nm;
            console.log(sido_nm);
            console.log(sgg_nm);
            $('#roomLoc').val(sido_nm);
            $('#roomLoc2').val(sgg_nm);
        }).fail(()=>{
            console.log('failed to load data');
        })
    }


    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };



    //지도를 미리 생성
    var map = new daum.maps.Map(mapContainer, mapOption);
    //주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();
    //마커를 미리 생성
    var marker = new daum.maps.Marker({
        position: new daum.maps.LatLng(37.537187, 127.005476),
        map: map
    });


    function sample5_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = data.address; // 최종 주소 변수

                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("roomAddress").value = addr;
                // 주소로 상세 정보를 검색
                geocoder.addressSearch(data.address, function(results, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {

                        var result = results[0]; //첫번째 결과의 값을 활용

                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.y, result.x)

                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();

                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker.setPosition(coords)

                        var iwContent = '<div style="padding:5px;"> 등록하신 곳이 여기가 맞나요? <br><a href="https://map.daum.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank"></a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank"></a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
                            iwPosition = new daum.maps.LatLng(result.y, result.x);


                        var infowindow = new daum.maps.InfoWindow({
                            position : iwPosition,
                            content : iwContent
                        });




                        infowindow.open(map, marker);


                        daum.maps.event.addListener(marker, 'mouseover', function() {
                            // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
                            infowindow.open(map, marker);
                        });

                        daum.maps.event.addListener(marker, 'mouseout', function() {
                            // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
                            infowindow.close();
                        });

                        $('#roomLat').val(result.y);
                        $('#roomLng').val(result.x);

                        let utmkXY = new sop.LatLng (result.y,result.x); //wgs84 좌표를 UTMK로 변환
                        $('#roomPosY').val(utmkXY.y);
                        $('#roomPosX').val(utmkXY.x);
                        reverseAddress(utmkXY.y, utmkXY.x);

                         //var coordinatesElement = document.getElementById("coordinates");
                        // coordinatesElement.innerHtml = "위도: " + result.y + ", 경도:" + result.x;

                        // var coordinatesElement = document.getElementById("coordinates");
                        // coordinatesElement.innerHTML = "위도: " + result.y + ", 경도: " + result.x;
                    }
                });
            }
        }).open();
    }
</script>


</html>


