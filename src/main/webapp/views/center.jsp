<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<script src="https://kit.fontawesome.com/5f198f7eda.js" crossorigin="anonymous"></script>

<script>
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
                    alert('찜했습니다');
                }else if(response == 'login'){
                    alert('로그인하세요');
                }else if(response == 'delete'){
                    let heartDel = '<i id="likeHeart" class="fa-regular fa-heart" style="color: #ffffff;">'+'</i>';
                    $(likeHeart).replaceWith(heartDel);
                    alert('찜 해제');
                }else{
                    alert('실패');
                }
            }
        });
    });

</script>

<%--맨 위에 사진 부분--%>
<section class="hero-home">
    <div class="swiper-container hero-slider">
        <div class="swiper-wrapper dark-overlay">
            <div class="swiper-slide" style="background-image:url(/img/photo/photo-1497436072909-60f360e1d4b1.jpg)"></div>
            <div class="swiper-slide" style="background-image:url(/img/photo/photo-1514890547357-a9ee288728e0.jpg)"></div>
            <div class="swiper-slide" style="background-image:url(/img/photo/photo-1495562569060-2eec283d3391.jpg)"></div>
            <div class="swiper-slide" style="background-image:url(/img/photo/photo-1471189641895-16c58a695bcb.jpg)"></div>
<%--            <div class="swiper-slide" style="background-image:url(img/photo/photo-1519974719765-e6559eac2575.jpg)"></div>--%>
<%--            <div class="swiper-slide" style="background-image:url(img/photo/photo-1490578474895-699cd4e2cf59.jpg)"></div>--%>
<%--            <div class="swiper-slide" style="background-image:url(img/photo/photo-1534850336045-c6c6d287f89e.jpg)"></div>--%>
        </div>
    </div>
    <div class="container py-6 py-md-7 text-white z-index-20">
        <div class="row">
            <div class="col-xl-10">
                <div class="text-center text-lg-start">
                    <p class="subtitle letter-spacing-4 mb-2 text-secondary text-shadow">The best holiday experience</p>
                    <h1 class="display-3 fw-bold text-shadow"><spring:message code="site.title"/></h1>
                </div>

                <div class="search-bar mt-5 p-3 p-lg-1 ps-lg-4">
                    <form action="/room/roomSearch" method="get">
                        <div class="row">
                            <div class="col-lg-4 d-flex align-items-center form-group">
                                <input class="form-control border-0 shadow-0" type="text" name="roomName" placeholder=<spring:message code="input.local"/>>
                            </div>
                            <div class="col-lg-3 d-flex align-items-center form-group no-divider">
                                <select class="selectpicker" title=<spring:message code="input.local2"/> data-style="btn-form-control" name="roomLoc">
                                    <option value="서울">서울</option>
                                    <option value="부산">부산</option>
                                    <option value="제주">제주</option>
                                    <option value="x-large">그밖의 지역</option>
                                </select>
                            </div>

                            <div class="col-lg-3 d-flex align-items-center form-group no-divider">
                                <select class="selectpicker" title=<spring:message code="input.room"/> data-style="btn-form-control" name="roomType">
                                    <option value="small">아파트</option>
                                    <option value="medium">오피스텔</option>
                                    <option value="large">독채</option>
                                    <option value="x-large">기상천외한숙소</option>
                                </select>
                            </div>
                            <div class="col-lg-2 d-grid">
                                <button class="btn btn-primary rounded-pill h-100" type="submit">검색 </button>
                            </div>
                        </div>
                    </form>
                </div>


            </div>
        </div>
    </div>
</section>
<section class="py-6 bg-gray-100">
    <div class="container">
        <div class="row mb-5">
            <div class="col-md-8">
                <p style="padding-left: 50px;" class="subtitle text-secondary">어디로 가야할지 모르겠다면?</p>
                <h1 style="padding-left: 50px;">지금 <span style="color: red;">HOT</span>한 숙소를 예약하세요 !</h1>
            </div>
            <div class="col-lg-4 mb-4">
                <h1 class="h5 text-dark d-flex align-items-center mb-4" style="font-weight: bold;"><span class="badge badge-primary-light badge-pill py-1 me-1">Hot</span>&nbsp;&nbsp;인기 검색어</h1>
                <ul class="list-unstyled ms-3 text-sm" style="padding-left: 50px;">
                    <c:forEach var="search" items="${search}" varStatus="status">
                        <li class="mb-2">
                            <a class="text-sm fw-bold" href="/room/roomSearch?roomName=${search.searchWord}">
                                <span class="h5">${status.index + 1}.&nbsp;&nbsp;</span>${search.searchWord}
                            </a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <!-- Slider main container-->
        <div class="swiper-container swiper-container-mx-negative swiper-init pt-3" data-swiper="{&quot;slidesPerView&quot;:4,&quot;spaceBetween&quot;:20,&quot;loop&quot;:true,&quot;roundLengths&quot;:true,&quot;breakpoints&quot;:{&quot;1200&quot;:{&quot;slidesPerView&quot;:3},&quot;991&quot;:{&quot;slidesPerView&quot;:2},&quot;565&quot;:{&quot;slidesPerView&quot;:1}},&quot;pagination&quot;:{&quot;el&quot;:&quot;.swiper-pagination&quot;,&quot;clickable&quot;:true,&quot;dynamicBullets&quot;:true}}">
            <!-- Additional required wrapper-->
            <div class="swiper-wrapper pb-5">
                <!-- Slides-->
                <c:forEach var="roomList" items="${roomList}">
                    <div class="swiper-slide h-auto px-2">
                        <!-- place item-->
                        <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                            <div class="card h-100 border-0 shadow">
                                <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="/img/photo/${roomList.roomImage1}" alt="Modern, Well-Appointed Room"/><a class="tile-link" href="/room/detail?id=${roomList.roomId}"></a>
                                    <div class="card-img-overlay-bottom z-index-20">
                                        <div class="d-flex text-white text-sm align-items-center"><img class="avatar avatar-border-white flex-shrink-0 me-2" src="img/avatar/avatar-0.jpg" alt="Pamela"/>
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
                                    <div class="w-100">
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
                    </div>
                </c:forEach>
            </div>
            <!-- If we need pagination-->
            <div class="swiper-pagination"></div>
        </div>

    </div>
</section>
<%--------------DIGI실 추천여행지-------------%>
<section class="py-6">
    <div class="container">
        <div class="row mb-5">
            <div class="col-md-8">
                <p class="subtitle text-primary"><spring:message code="site.recommendation"/></p>
                <h2><spring:message code="site.recommendationTitle"/></h2>
            </div>
            <div class="col-md-4 d-lg-flex align-items-center justify-content-end"><a class="text-muted text-sm" href="/room/list">
                모든 숙소 둘러보기<i class="fas fa-angle-double-right ms-2"></i></a></div>
        </div>
        <div class="swiper-container guides-slider mx-n2 pt-3">
            <!-- Additional required wrapper-->
            <div class="swiper-wrapper pb-5">
                <!-- Slides-->
                <div class="swiper-slide h-auto px-2">
                    <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0"><a class="tile-link" href="/room/searchList?roomLoc=서울"></a><img class="bg-image" src="/img/photo/야경.jpg" alt="Card image">
                        <div class="card-body overlay-content">
                            <h6 class="card-title text-shadow text-uppercase">서울</h6>
                            <p class="card-text text-sm">Seoul</p>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide h-auto px-2">
                    <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0"><a class="tile-link" href="/room/searchList?roomLoc=부산"></a><img class="bg-image" src="/img/photo/busan1.jpg" alt="Card image">
                        <div class="card-body overlay-content">
                            <h6 class="card-title text-shadow text-uppercase">부산</h6>
                            <p class="card-text text-sm">Busan</p>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide h-auto px-2">
                    <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0"><a class="tile-link" href="/room/searchList?roomLoc=제주"></a><img class="bg-image" src="/img/photo/jeju.jpg" alt="Card image">
                        <div class="card-body overlay-content">
                            <h6 class="card-title text-shadow text-uppercase">제주</h6>
                            <p class="card-text text-sm">Jeju</p>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide h-auto px-2">
                    <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0"><a class="tile-link" href="/room/searchList?roomLoc=강원도"></a><img class="bg-image" src="/img/photo/kang.jpg" alt="Card image">
                        <div class="card-body overlay-content">
                            <h6 class="card-title text-shadow text-uppercase">강원도</h6>
                            <p class="card-text text-sm">KangWonDo</p>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide h-auto px-2">
                    <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0"><a class="tile-link" href="/room/searchList?roomLoc=경주"></a><img class="bg-image" src="/img/photo/kang1.jpg" alt="Card image">
                        <div class="card-body overlay-content">
                            <h6 class="card-title text-shadow text-uppercase">경주</h6>
                            <p class="card-text text-sm">GyeongJu</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-pagination d-md-none"> </div>
        </div>
    </div>
</section>
<%--------------DIGI실 추천여행지-------------%>





<section class="py-7">
    <div class="container">
        <div class="text-center">
            <p class="subtitle text-primary">Testimonials</p>
            <h2 class="mb-5">DIGISHIL 고객의 솔직한 리뷰</h2>
        </div>
        <!-- Slider main container-->
        <div class="swiper-container testimonials-slider testimonials">
            <!-- Additional required wrapper-->
            <div class="swiper-wrapper pt-2 pb-5">
                <!-- Slides-->
                <div class="swiper-slide p-4">
                    <div class="testimonial card rounded-3 shadow border-0">
                        <div class="testimonial-avatar"><img class="avatar avatar-lg p-1" src="img/avatar/avatar-3.jpg" alt="..."></div>
                        <div class="text">
                            <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                            <p class="testimonial-text">digishil로 예약하니까 정말 특별한 여행을 할 수 있었어요. 호스트분도 너무 친절하셨고 숙소가 전통적인 분위기와 현대적인 편의시설이 결합된 곳이라서 정말 멋진 경험을 했어요. 다양한 선택지와 편리한 예약 시스템 때문에 앞으로도 계속해서 이용할 계획이에요!</p><strong>김기현</strong>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide p-4">
                    <div class="testimonial card rounded-3 shadow border-0">
                        <div class="testimonial-avatar"><img class="avatar avatar-lg p-1" src="img/avatar/avatar-3.jpg" alt="..."></div>
                        <div class="text">
                            <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                            <p class="testimonial-text">digishil로 예약한 것은 정말로 최고의 선택이었어요. 숙소 위치가 관광명소와 가까워서 도보로 여러 곳을 다니기에 편리했고, 숙소 자체도 아늑하고 아름다웠어요. 호스트분이 친절하게 안내해주셔서 불편한 점이 없었고, 어플의 예약 시스템도 간편하고 편리했어요.</p><strong>심재현</strong>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>

<section class="py-6 bg-gray-100">
    <div class="container">
        <div class="text-center pb-lg-4">
            <p class="subtitle text-secondary">The best holiday experience</p>
            <h2 class="mb-5"><spring:message code="site.centerTitle"/></h2>
        </div>
        <div class="row">
            <div class="col-lg-4 mb-3 mb-lg-0 text-center">
                <div class="px-0 px-lg-3">
                    <div class="icon-rounded bg-primary-light mb-3">
                        <svg class="svg-icon text-primary w-2rem h-2rem">
                            <use xlink:href="#destination-map-1"> </use>
                        </svg>
                    </div>
                    <h3 class="h5"><spring:message code="site.centerSub1"/></h3>
                </div>
            </div>
            <div class="col-lg-4 mb-3 mb-lg-0 text-center">
                <div class="px-0 px-lg-3">
                    <div class="icon-rounded bg-primary-light mb-3">
                        <svg class="svg-icon text-primary w-2rem h-2rem">
                            <use xlink:href="#pay-by-card-1"> </use>
                        </svg>
                    </div>
                    <h3 class="h5"><spring:message code="site.centerSub2"/> </h3>
                    <%--                    <p class="text-muted">The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pit</p>--%>
                </div>
            </div>
            <div class="col-lg-4 mb-3 mb-lg-0 text-center">
                <div class="px-0 px-lg-3">
                    <div class="icon-rounded bg-primary-light mb-3">
                        <svg class="svg-icon text-primary w-2rem h-2rem">
                            <use xlink:href="#heart-1"> </use>
                        </svg>
                    </div>
                    <h3 class="h5"><spring:message code="site.centerSub3"/></h3>
                </div>
            </div>
        </div>
    </div>
</section>


<%--<section class="py-6 bg-gray-100">--%>
<%--    <div class="container">--%>
<%--        <div class="row mb-5">--%>
<%--            <div class="col-md-8">--%>
<%--                <p class="subtitle text-secondary">Stories from around the globe</p>--%>
<%--                <h2>From our travel blog</h2>--%>
<%--            </div>--%>
<%--            <div class="col-md-4 d-md-flex align-items-center justify-content-end"><a class="text-muted text-sm" href="blog.html">--%>
<%--                See all articles<i class="fas fa-angle-double-right ms-2"></i></a></div>--%>
<%--        </div>--%>
<%--        <div class="row">--%>
<%--            <!-- blog item-->--%>
<%--            <div class="col-lg-4 col-sm-6 mb-4 hover-animate">--%>
<%--                <div class="card shadow border-0 h-100"><a href="post.html"><img class="img-fluid card-img-top" src="img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="..."/></a>--%>
<%--                    <div class="card-body"><a class="text-uppercase text-muted text-sm letter-spacing-2" href="#">Travel </a>--%>
<%--                        <h5 class="my-2"><a class="text-dark" href="post.html">Autumn fashion tips and tricks          </a></h5>--%>
<%--                        <p class="text-gray-500 text-sm my-3"><i class="far fa-clock me-2"></i>January 16, 2016</p>--%>
<%--                        <p class="my-2 text-muted text-sm">Pellentesque habitant morbi tristique senectus. Vestibulum tortor quam, feugiat vitae, ultricies ege...</p><a class="btn btn-link ps-0" href="post.html">Read more<i class="fa fa-long-arrow-alt-right ms-2"></i></a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- blog item-->--%>
<%--            <div class="col-lg-4 col-sm-6 mb-4 hover-animate">--%>
<%--                <div class="card shadow border-0 h-100"><a href="post.html"><img class="img-fluid card-img-top" src="img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="..."/></a>--%>
<%--                    <div class="card-body"><a class="text-uppercase text-muted text-sm letter-spacing-2" href="#">Living </a>--%>
<%--                        <h5 class="my-2"><a class="text-dark" href="post.html">Newest photo apps          </a></h5>--%>
<%--                        <p class="text-gray-500 text-sm my-3"><i class="far fa-clock me-2"></i>January 16, 2016</p>--%>
<%--                        <p class="my-2 text-muted text-sm">ellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibu...</p><a class="btn btn-link ps-0" href="post.html">Read more<i class="fa fa-long-arrow-alt-right ms-2"></i></a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- blog item-->--%>
<%--            <div class="col-lg-4 col-sm-6 mb-4 hover-animate">--%>
<%--                <div class="card shadow border-0 h-100"><a href="post.html"><img class="img-fluid card-img-top" src="img/photo/photo-1482463084673-98272196658a.jpg" alt="..."/></a>--%>
<%--                    <div class="card-body"><a class="text-uppercase text-muted text-sm letter-spacing-2" href="#">Travel </a>--%>
<%--                        <h5 class="my-2"><a class="text-dark" href="post.html">Best books about Photography          </a></h5>--%>
<%--                        <p class="text-gray-500 text-sm my-3"><i class="far fa-clock me-2"></i>January 16, 2016</p>--%>
<%--                        <p class="my-2 text-muted text-sm">Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.  Mauris placerat eleif...</p><a class="btn btn-link ps-0" href="post.html">Read more<i class="fa fa-long-arrow-alt-right ms-2"></i></a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>

<!-- Instagram-->
<section>
    <div class="container-fluid px-0">
        <div class="swiper-container instagram-slider">
            <div class="swiper-wrapper">
                <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-1.jpg" alt=" "></a></div>
                <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-2.jpg" alt=" "></a></div>
                <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-3.jpg" alt=" "></a></div>
                <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-4.jpg" alt=" "></a></div>
                <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-5.jpg" alt=" "></a></div>
                <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-6.jpg" alt=" "></a></div>
                <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-7.jpg" alt=" "></a></div>
                <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-8.jpg" alt=" "></a></div>
                <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-9.jpg" alt=" "></a></div>
                <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-10.jpg" alt=" "></a></div>
                <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-11.jpg" alt=" "></a></div>
                <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-12.jpg" alt=" "></a></div>
                <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-13.jpg" alt=" "></a></div>
                <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-14.jpg" alt=" "></a></div>
                <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-10.jpg" alt=" "></a></div>
                <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-11.jpg" alt=" "></a></div>
                <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-12.jpg" alt=" "></a></div>
                <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-13.jpg" alt=" "></a></div>
                <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-14.jpg" alt=" "></a></div>
            </div>
        </div>
    </div>
</section>