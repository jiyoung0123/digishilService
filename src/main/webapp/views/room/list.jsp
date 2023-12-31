<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4083a9e1e518bd0452f9a390ffd2eec7"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

<style>
<%--    #map03 > #map{--%>

<%--        width:1000px;--%>
<%--        height: 800px;--%>
<%--        border: 2px solid;--%>
<%--        margin-top: 22px;--%>
<%--    }--%>
    .custom-iframe {
    width: 100%; /* 부모 요소에 대해 100% 너비로 설정 */
    height: 700px; /* 부모 요소에 대해 100% 높이로 설정 */
    }



    .wrap {
        position: absolute;
        left: 0;
        bottom: 40px;
        width: 288px;
        height: 132px;
        margin-left: -144px;
        border-radius:20px;

        text-align: left;
        overflow: hidden;
        font-size: 12px;
        font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
        line-height: 1.5;
    }

    .wrap * {
        padding: 0;
        margin: 0;
    }

    .wrap .info:nth-child(1) {
        border: 0;
        box-shadow: 0px 1px 2px #888;
    }


    .btn {
        margin-top: 20px;
    }

    .info .title {
        padding: 5px 0 0 10px;
        height: 30px;
        background: #eee;
        border-bottom: 1px solid #ddd;
        font-size: 18px;
        font-weight: bold;
    }



    .img {
        position: relative;
        overflow: hidden;
    }

    .img img {
        cursor: pointer;
        transition: transform 0.3s;
    }

    .img img:hover {
        transform: scale(1.1);
        z-index: 1;
    }

    .modal {
        display: none;
        position: fixed;
        z-index: 9999;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.7);
    }

    .modal-content {
        max-width: 80%;
        max-height: 80%;
        margin: auto;
        display: block;
        padding: 20px;
    }

    .close {
        color: #fff;
        position: absolute;
        top: 20px;
        right: 30px;
        font-size: 30px;
        font-weight: bold;
        cursor: pointer;
    }

    .close:hover {
        color: #ccc;
    }

    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 1200px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 40px;background: #eee;border-bottom: 1px solid #ddd;font-size: 20px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 750px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 15px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 61px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/5f198f7eda.js" crossorigin="anonymous"></script>
<script>

    let map03 = {
        map:null,
        init:function(){
            this.display();
            $('#s_btn').click(function(){
                map03.go(37.5722099 ,126.9768146,'서울특별시');
            });
            $('#b_btn').click(function(){
                map03.go(35.17992598569 ,129.07509523457,'부산광역시');
            });
            $('#j_btn').click(function(){
                map03.go(33.5002142104177 , 126.532217532238,'제주도');
            });
        },


        display:function(){
            var mapContainer = document.querySelector('#map03 > #map');
            var mapOption =  {
                center: new kakao.maps.LatLng(37.5722099 ,126.9768146), // 지도의 중심좌표
                level: 5 // 지도의 확대 레벨
            };
            map = new kakao.maps.Map(mapContainer, mapOption);

            var mapTypeControl = new kakao.maps.MapTypeControl();
            map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
            var zoomControl = new kakao.maps.ZoomControl();
            map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

            var markerPosition  = new kakao.maps.LatLng(37.5722099 ,126.9768146);
            var marker = new kakao.maps.Marker({
                position: markerPosition
            });
            marker.setMap(map);
        },
        go:function(lat,lng,loc){

            var mapContainer = document.querySelector('#map03 > #map');
            var mapOption =  {
                center: new kakao.maps.LatLng(lat,lng), // 지도의 중심좌표
                level: 5 // 지도의 확대 레벨
            };



            map = new kakao.maps.Map(mapContainer, mapOption);

            var mapTypeControl = new kakao.maps.MapTypeControl();
            map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
            var zoomControl = new kakao.maps.ZoomControl();
            map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
            // var moveLatLon = new kakao.maps.LatLng(lat,lng);
            // map.panTo(moveLatLon);

            var markerPosition  = new kakao.maps.LatLng(lat,lng);
            var marker = new kakao.maps.Marker({
                position: markerPosition
            });
            marker.setMap(map);
            map03.markers(loc);
        },
        markers:function(loc){
            $.ajax({
                url:'/markers',
                data:{'loc':loc},
                // success:function(data){
                //     alert(data);
                //     map03.displaymarkers(data);
                // }
            }).done((data)=>{
                map03.displaymarkers(data);
                console.log(data);
            }).fail(()=>{
                console.log('실패했습니다.');
            });
        },







        displaymarkers: function(positions) {
            var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
            for (var i = 0; i < positions.length; i++) {
                var imageSize = new kakao.maps.Size(20, 30);
                var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
                var markerPosition = new kakao.maps.LatLng(positions[i].lat, positions[i].lng);

                var marker = new kakao.maps.Marker({
                    map: map,
                    position: markerPosition,
                    roomName: positions[i].roomName,
                    image: markerImage
                });


                // 오버레이 생성
                var overlay = createOverlay(positions[i]);

                // 마우스 이벤트 리스너 등록
                kakao.maps.event.addListener(marker, 'mouseover', makeMouseoverListener(overlay));
                kakao.maps.event.addListener(marker, 'mouseout', makeMouseoutListener(overlay));
                kakao.maps.event.addListener(marker, 'click', makeClickListener(overlay));




            }


            function createOverlay(position) {
                var content =
                    '<div class="wrap">' +
                    '    <div class="info">' +
                    '        <div class="title">' +
                    '            ' + position.name +
                    '        </div>' +
                    '        <div class="body">' +
                    '            <div class="img">' +


                    '                <img src="/img/photo/' + position.img + '" style="width: 100%; height: 100% " onmouseenter="showModal(this)"  >' +
                    '         <div class="modal"> ' +
                    '<span class="close" onclick="hideModal()">&times;</span>' +
                ' <img class="modal-content">' +
                '</div>' +










                    '            </div>' +
                    '            <div class="desc">' +
                    '                <div class="ellipsis">' + position.info + '</div>' +
                    '                <div class="jibun ellipsis">' + position.intro + '</div>' +
                    '                <div>' +
                    '                    <a href="/room/detail?id=' + position.id + '" target="_blank" class="link">' +
                    '                        ￦ ' + position.price + '원/1박당' +
                    '                    </a>' +
                    '                </div>' +
                    '            </div>' +
                    '        </div>' +
                    '    </div>' +
                    '</div>';





                var overlay = new kakao.maps.CustomOverlay({
                    content: content,
                    position: markerPosition,
                    yAnchor: 1,
                    href:  "/room/detail?id=" + position.roomId
                });

                return overlay;
            }

            function makeMouseoverListener(overlay) {
                return function() {
                    overlay.setMap(map);
                };
            }


            function makeMouseoutListener(overlay) {
                return function() {
                    overlay.setMap(null);
                };
            }

            // function makeClickListener(overlay) {
            //     return function() {
            //         overlay.setMap(map);
            //     };
            // }

            function makeClickListener(overlay , position ){
                return function() {
                    overlay.setMap(map);
                    // 마커를 클릭했을 때 새로운 페이지로 이동하는 코드
                    window.location.href = "http://127.0.0.1/room/detail?roomId=" + position.id;
                };
            }



        }

    };
    $(function(){
        map03.init();
        map03.markers('서울특별시');
    })


    $(document).on('click', '#likeFormBtn', function(e) {
        e.preventDefault();  // 기본 동작(폼 제출)을 막음

        let likeForm = $(this).closest('form');  // 클릭된 버튼의 가장 가까운 form 요소를 선택
        let likeHeart = $(this).closest('form').find('#likeHeart');

        $.ajax({
            url: '/likeAdd',
            type: 'post',
            data: likeForm.serialize(),
            success: function (response) {
                if (response == 'true') {
                    let heart = '<i id="likeHeart" class="fa-solid fa-heart" style="color: #fff700;">'+'</i>';
                    $(likeHeart).replaceWith(heart);
                    Swal.fire({
                        icon: 'success',
                        title: '찜했습니다.',
                        text: '찜 목록서 확인하세요!'
                    })
                }else if(response == 'login'){
                    Swal.fire({
                        icon: 'error',
                        title: '로그인 정보 오류',
                        text: '로그인 후 가능합니다!'
                    })
                }else if(response == 'delete'){
                    let heartDel = '<i id="likeHeart" class="fa-regular fa-heart" style="color: #ffffff;">'+'</i>';
                    $(likeHeart).replaceWith(heartDel);
                    Swal.fire({
                        icon: 'success',
                        title: '찜 해제',
                        text: '찜 목록에서 삭제되었습니다!'
                    })
                }else{
                    Swal.fire({
                        icon: 'error',
                        title: '찜 실패',
                        text: '에러를 확인하세요!'
                    })
                }
            }
        });
    })

    // // $('#show_map').click(() =>{
    // //     $.ajax({
    // //         url: 'http://127.0.0.1/room/detail?roomId=' + position.id,
    // //
    // //
    // //     }).done((data)=>{
    // //
    // //         lat : data.lat;
    // //         lng : data.lng;
    // //         loc : data.loc;
    // //         map03.go(lat,lng,loc);
    // //
    // //     })
    //
    // })


    let search2Button = {
        init : $('#search2Button').click(()=>{
            // $.ajax({
            //     url : ''
            // })
        })
    }

    $(()=>{
        search2Button.init();
    })

</script>


<script>
    function moveToMap() {
        // 여기에 지도로 화면을 이동하는 코드를 작성합니다.
        // 예를 들어, 구글 맵 API를 사용한다면 다음과 같이 사용할 수 있습니다.

        // 맵의 중앙 좌표를 설정합니다.
        var center = { lat: 37.123, lng: 127.456 };

        // 지도 생성
        var map = new google.maps.Map(document.getElementById('map'), {
            center: center,
            zoom: 10
        });


        // 이동할 위치로 화면을 이동시킵니다.
        map.panTo(center);
    }
</script>



<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6 py-4 p-xl-5">
            <h2 class="mb-4">DIGISHIL에서 살아보기</h2>
            <hr class="my-4">
            <form autocomplete="off">
                <div class="row">
                    <div class="col-xl-4 col-md-6 mb-4">
                        <label class="form-label" for="form_dates">Dates</label>
                        <div style="padding-top:20px;" class="datepicker-container datepicker-container-left">
                            <input class="form-control" type="text" name="bookingDate" id="form_dates" placeholder="원하는 날짜를 선택하세요">
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-6 mb-4">
                        <label class="form-label" for="form_guests">Guests</label>
                        <select class="selectpicker form-control" name="guests" id="form_guests" data-style="btn-selectpicker" title="숙박인원을 선택하세요">
                            <option value="1">1    </option>
                            <option value="2">2    </option>
                            <option value="3">3    </option>
                            <option value="4">4    </option>
                            <option value="5">5    </option>
                            <option value="6">6    </option>
                            <option value="7">7    </option>
                            <option value="8">8    </option>
                            <option value="9">9    </option>
                            <option value="10">10    </option>
                        </select>
                    </div>
                    <div class="col-xl-4 col-md-6 mb-4">
                        <label style="padding-bottom:30px;" class="form-label">Price range</label>
                        <div class="text-primary" id="slider-snap"></div>
                        <div class="nouislider-values">
                            <div class="min">From ￦<span id="slider-snap-value-from"></span></div>
                            <div class="max">To ￦<span id="slider-snap-value-to"></span></div>
                        </div>
                        <input type="hidden" name="roomPriceFrom" id="slider-snap-input-from" value="40">
                        <input type="hidden" name="roomPriceTo" id="slider-snap-input-to" value="110">
                    </div>

                </div>
                <div class="row">


                    <div class="col-sm-6 mb-4 order-2 order-sm-1">
                        <button id="search2Button"class="btn btn-primary" type="submit"> <i class="fas fa-search me-1"></i>상세 검색                </button>
                    </div>
                </div>
            </form>
            <hr class="my-4">
            <div class="row">
                <!-- place item-->
                <c:choose>
                    <c:when test="${roomList != null}">
                        <c:forEach var="roomList" items="${roomList.getList()}">
                            <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                                <div class="card h-100 border-0 shadow">
                                    <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="/img/photo/${roomList.roomImage1}" alt="Modern, Well-Appointed Room"/><a class="tile-link" href="/room/detail?id=${roomList.roomId}"></a>
                                        <!-- 추가-- 최준혁-->
<%--                                        <c:choose>--%>
<%--                                            <c:when test="${roomList.hostSuper != null}">--%>
<%--                                                <div class="card-img-overlay-top z-index-40">--%>
<%--                                                    <div class="d-flex text-white text-sm align-items-center">--%>
<%--                                                        <div>슈퍼호스트</div>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </c:when>--%>
<%--                                            <c:otherwise>--%>

<%--                                            </c:otherwise>--%>
<%--                                        </c:choose>--%>

                                        <!-- 기존-->
                                        <div class="card-img-overlay-bottom z-index-20">
                                            <div class="d-flex text-white text-sm align-items-center"><img class="avatar avatar-border-white flex-shrink-0 me-2" src="/img/avatar/${roomList.hostImage}" alt="Pamela"/>
                                                <div>${roomList.hostName}</div>
                                            </div>
                                        </div>
                                        <form id="likeForm_${roomList.roomId}">
                                            <input type="hidden" name="guestId" value="${loginGuest.guestId}">
                                            <input type="hidden" name="roomId" value="${roomList.roomId}">
                                            <div class="card-img-overlay-top text-end">
                                                <button id="likeFormBtn" class="card-fav-icon position-relative z-index-40" type="button">
                                                    <c:if test="${roomList.likeId != ''}">
                                                        <i id="likeHeart" class="fa-solid fa-heart" style="color: #fff700;"></i>
                                                    </c:if>
                                                    <c:if test="${roomList.likeId == ''}">
                                                        <i id="likeHeart" class="fa-regular fa-heart" style="color: #ffffff;"></i>
                                                    </c:if>
                                                </button>
                                            </div>
                                        </form>
                                    </div>




                                    <div class="card-body d-flex align-items-center">
                                        <div class="w-100" onclick="moveToMap()">
<%--                                        <div class="w-100" id = "show_map">--%>
                                            <h6 class="card-title"><a class="text-decoration-none text-dark" href="/room/detail?id=${roomList.roomId}">${roomList.roomName}</a></h6>
                                            <div class="d-flex card-subtitle mb-3">
                                                <p class="flex-grow-1 mb-0 text-muted text-sm">${roomList.roomType}</p>
                                                <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                                                </p>
                                            </div>
                                            <p class="card-text text-muted"><span class="h4 text-primary"><fmt:formatNumber type="number" pattern="₩###,###" value="${roomList.roomPrice}"/></span>/1박</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <%-- pagination start --%>
                        <jsp:include page="../page.jsp"/>
                        <%-- pagination end--%>
                    </c:when>

                    <c:otherwise>
                        <c:forEach var="roomSearchList" items="${roomSearchList.getList()}">
                            <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                                <div class="card h-100 border-0 shadow">
                                    <!-- 방 사진 바디-->
                                    <div class="card-img-top overflow-hidden gradient-overlay">
                                        <img class="img-fluid" src="/img/photo/${roomSearchList.roomImage1}" alt="Modern, Well-Appointed Room"/>
                                        <a class="tile-link" href="/room/detail?id=${roomSearchList.roomId}"></a>

                                        <!-- 기존 -->
                                        <div class="card-img-overlay-bottom z-index-20">
                                            <div class="d-flex text-white text-sm align-items-center"><img class="avatar avatar-border-white flex-shrink-0 me-2" src="/img/avatar/${roomSearchList.hostImage}" alt="Pamela"/>
                                                <div>${roomSearchList.hostName}</div>

                                            </div>
                                        </div>
                                        <form id="likeForm_${roomSearchList.roomId}">
                                            <input type="hidden" name="guestId" value="${loginGuest.guestId}">
                                            <input type="hidden" name="roomId" value="${roomSearchList.roomId}">
                                            <div class="card-img-overlay-top text-end">
                                                <button id="likeFormBtn" class="card-fav-icon position-relative z-index-40" type="button">
                                                    <c:if test="${roomSearchList.likeId != ''}">
                                                        <i id="likeHeart" class="fa-solid fa-heart" style="color: #fff700;"></i>
                                                    </c:if>
                                                    <i id="likeHeart" class="fa-regular fa-heart" style="color: #ffffff;"></i>
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                    <!-- 흰색 카드 바디-->
                                    <div class="card-body d-flex align-items-center">
                                        <div class="w-100">
                                            <h6 class="card-title"><a class="text-decoration-none text-dark" href="/room/detail?id=${roomSearchList.roomId}">${roomSearchList.roomName}</a></h6>
                                            <div class="d-flex card-subtitle mb-3">
                                                <p class="flex-grow-1 mb-0 text-muted text-sm">${roomSearchList.roomType}</p>
                                                <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                                                </p>
                                            </div>

                                            <p class="card-text text-muted"><span class="h4 text-primary"><fmt:formatNumber type="number" pattern="₩###,###" value="${roomSearchList.roomPrice}"/></span> per night</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <%-- pagination start --%>
                        <jsp:include page="../pageSearch.jsp"/>
                        <%-- pagination end--%>
                    </c:otherwise>
                </c:choose>
        </div>


        <div class="col-lg-6 map-side-lg pe-lg-0">



<%--            <div class="map-full shadow-left" id="categorySideMap">--%>
<%--                <div>--%>
<%--                    <div class="col-sm-8 text-left">--%>


<%--                        <div class="container" id="map03">--%>

<%--                            <div >--%>
<%--                                <button id="s_btn" type="button" class="btn btn-default" >Seoul</button>--%>
<%--                                <button id="b_btn" type="button" class="btn btn-default">Busan</button>--%>
<%--                                <button id="j_btn" type="button" class="btn btn-default">Jeju</button>--%>







<%--                            </div>--%>


<%--                            <div id="map"></div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

                <div class="map-full shadow-left" id="categorySideMap">



                            <div class="container" id="map03" class="custom-iframe">
                                <div id="map"></div>
                            </div>

                </div>



        </div>
    </div>









</div>

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

<script>
    createListingsMap({
        mapId: 'categorySideMap',
        jsonFile: 'js/rooms-geojson.json',
        mapPopupType: 'rental',
        useTextIcon: true,
        //tileLayer: tileLayers[5]  - uncomment for a different map styling
    });

</script>
<!-- Daterange picker-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"> </script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-date-range-picker/0.19.0/jquery.daterangepicker.min.js"> </script>
<script src="/js/datepicker-category.js"> </script>
<!-- Price Slider-->
<script src="/vendor/nouislider/nouislider.min.js"></script>
<script>
    var snapSlider = document.getElementById('slider-snap');

    noUiSlider.create(snapSlider, {
        start: [ 10000, 200000 ],
        snap: false,
        connect: true,
        step: 1000,
        range: {
            'min': 10000,
            'max': 400000
        }
    });
    var snapValues = [
        document.getElementById('slider-snap-value-from'),
        document.getElementById('slider-snap-value-to')
    ];
    var inputValues = [
        document.getElementById('slider-snap-input-from'),
        document.getElementById('slider-snap-input-to')
    ];
    snapSlider.noUiSlider.on('update', function( values, handle ) {
        var formattedValue = parseFloat(values[handle]).toFixed(0);
        var displayValue = formattedValue.replace(/\B(?=(\d{3})+(?!\d))/g, ',');
        snapValues[handle].innerHTML = displayValue;
        inputValues[handle].value = formattedValue;

    })
</script>
</div>