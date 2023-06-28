<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4083a9e1e518bd0452f9a390ffd2eec7"></script>

<style>
    #map03 > #map{

        width:1000px;
        height: 800px;
        border: 2px solid;
        margin-top: 22px;
    }




    .wrap {
        position: absolute;
        left: 0;
        bottom: 40px;
        width: 288px;
        height: 132px;
        margin-left: -144px;

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


    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>
<script>
    let map03 = {
        map:null,
        init:function(){
            this.display();
            $('#s_btn').click(function(){
                map03.go(37.5722099 ,126.9768146,'서울특별시');
            });
            $('#b_btn').click(function(){
                map03.go(35.1938469 ,129.1536102,'부산광역시');
            });
            $('#j_btn').click(function(){
                map03.go(33.2471736 ,126.5521947,'제주도');
            });
        },


        display:function(){
            var mapContainer = document.querySelector('#map03 > #map');
            var mapOption =  {
                center: new kakao.maps.LatLng(37.5399212 ,127.057933), // 지도의 중심좌표
                level: 5 // 지도의 확대 레벨
            };
            map = new kakao.maps.Map(mapContainer, mapOption);

            var mapTypeControl = new kakao.maps.MapTypeControl();
            map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
            var zoomControl = new kakao.maps.ZoomControl();
            map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

            var markerPosition  = new kakao.maps.LatLng(37.5399212 ,127.057933);
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

                var overlay = new kakao.maps.CustomOverlay({
                    content: content,
                    position: markerPosition,
                    yAnchor: 1
                });


                // 마우스 이벤트 리스너 등록
                kakao.maps.event.addListener(marker, 'mouseenter', makeMouseenterListener(overlay));
                kakao.maps.event.addListener(marker, 'mouseleave', makeMouseleaveListener(overlay));
                kakao.maps.event.addListener(marker, 'click', makeClickListener(overlay));
            }





            function createOverlay(position) {



                var content =
                    '<div class="wrap">' +
                    '    <div class="info">' +
                    '        <div class="title">' +
                    '            ' + position.name +
                    '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' +

                    '        </div>' +
                    '        <div class="body">' +
                    '            <div class="img">' +
                    '                <img src="/uimg/' + position.img + '" style="width:73px; height:70px">' +
                    '            </div>' +
                    '            <div class="desc">' +
                    '                <div class="ellipsis">' + position.address + '</div>' +
                    '                <div class="jibun ellipsis">' + position.jibun + '</div>' +
                    '                <div><a href="' + position.website + '" target="_blank" class="link">홈페이지</a></div>' +
                    '            </div>' +
                    '        </div>' +
                    '    </div>' +
                    '</div>';







                return overlay;
            }


            function makeMouseenterListener(overlay) {
                return function() {
                    overlay.setMap(map);
                };
            }


            function makeMouseleaveListener(overlay) {
                return function() {
                    overlay.setMap(null);
                };
            }

            function makeClickListener(overlay) {
                return function() {
                    overlay.setMap(map);
                };
            }



        }



    };
    $(function(){
        map03.init();
    })
</script>
<div class="col-sm-8 text-left">
    <div class="container" id="map03">

   <div>
        <button id="s_btn" type="button" class="btn btn-primary">Seoul</button>
        <button id="b_btn" type="button" class="btn btn-primary">Busan</button>
        <button id="j_btn" type="button" class="btn btn-primary">Jeju</button>

   </div>
        <h1>지도를 뿌려줘 제발!</h1>
        <div id="map"></div>
</div>
</div>
