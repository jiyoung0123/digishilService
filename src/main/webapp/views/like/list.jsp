<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/5f198f7eda.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
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
    });

</script>

<div class="container-fluid pt-5 pb-3 border-bottom px-lg-5">
    <div class="row">
        <div class="col-xl-8">
            <h1>${loginGuest.guestName}님의 <span style="color:rgb(77,102,247)">찜</span> 목록</h1>
        </div>
    </div>
</div>
<div class="container-fluid py-5 px-lg-5">
    <div class="row">
        <div class="col-lg-9">
            <div class="row">
                <!-- place item-->
                <c:forEach var="roomList" items="${roomList.getList()}">
                    <div class="col-sm-6 col-xl-4 mb-5 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
                        <div class="card h-100 border-0 shadow">
                            <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="img/photo/${roomList.roomImage1}" alt="Modern Apt - Vibrant Neighborhood!"/><a class="tile-link" href="/room/detail?id=${roomList.roomId}"></a>
                                <div class="card-img-overlay-bottom z-index-20">
                                    <div class="d-flex text-white text-sm align-items-center"><img class="avatar avatar-border-white flex-shrink-0 me-2" src="img/avatar/${roomList.hostImage}" alt="Julie"/>
                                        <div>${roomList.hostName}</div>
                                    </div>
                                </div>
                                <form id="likeForm_${roomList.roomId}">
                                    <input type="hidden" name="guestId" value="${loginGuest.guestId}">
                                    <input type="hidden" name="roomId" value="${roomList.roomId}">
                                    <div class="card-img-overlay-top text-end">
                                        <button id="likeFormBtn" class="card-fav-icon position-relative z-index-40" type="button">
                                            <i id="likeHeart" class="fa-solid fa-heart" style="color: #fff700;"></i>
                                        </button>
                                    </div>
                                </form>
                            </div>
                            <div class="card-body d-flex align-items-center">
                                <div class="w-100">
                                    <h6 class="card-title"><a class="text-decoration-none text-dark" href="/room/detail?id=${roomList.roomId}">${roomList.roomName}</a></h6>
                                    <div class="d-flex card-subtitle mb-3">
                                        <p class="flex-grow-1 mb-0 text-muted text-sm">${roomList.roomType}</p>
                                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300"></i><i class="fa fa-star text-gray-300">                                  </i>
                                        </p>
                                    </div>
                                    <p class="card-text text-muted"><span class="h4 text-primary"><fmt:formatNumber type="number" pattern="₩###,###" value="${roomList.roomPrice}"/></span>/1박</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <jsp:include page="page.jsp"/>
            </div>
            <!-- Pagination -->
        </div>
    </div>
</div>
