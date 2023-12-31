<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
  <link rel="stylesheet" href="vendor/nouislider/nouislider.css">
  <!-- Google fonts - Playfair Display-->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
  <!-- Google fonts - Poppins-->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
  <!-- swiper-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
  <!-- Magnigic Popup-->
  <link rel="stylesheet" href="vendor/magnific-popup/magnific-popup.css">
  <!-- theme stylesheet-->
  <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
  <!-- Custom stylesheet - for your changes-->
  <link rel="stylesheet" href="css/custom.css">
  <!-- Favicon-->
  <link rel="shortcut icon" href="img/favicon.png">
  <!-- Tweaks for older IEs--><!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  <!-- Font Awesome CSS-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
</head>
<body style="padding-top: 72px;">

<section class="py-5">
  <div class="container">
    <!-- Breadcrumbs -->
    <ol class="breadcrumb ps-0  justify-content-start">
      <li class="breadcrumb-item"><a href="index.html">Home</a></li>
      <li class="breadcrumb-item"><a href="user-account.html">Account</a></li>
      <li class="breadcrumb-item active">Messages   </li>
    </ol>
    <div class="d-flex justify-content-between align-items-center mb-5">
      <h1 class="hero-heading mb-0">Inbox</h1><a class="btn btn-link text-muted" href="#">Archived Messages</a>
    </div>
    <div class="d-flex justify-content-between align-items-end mb-4">
      <select class="selectpicker me-3 mb-3 mb-lg-0" name="bulk" id="form_bulk" data-style="btn-selectpicker" title="Bulk Actions">
        <option value="bulk_0">Edit                     </option>
        <option value="bulk_1">Archive                     </option>
        <option value="bulk_2">Delete                     </option>
      </select>

    </div>
    <div class="list-group shadow mb-5">
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
              <h2 class="h5 mb-0">Meredith Goodwin</h2><img class="avatar avatar-sm avatar-border-white ms-3" src="img/avatar/avatar-0.jpg" alt="Jack London">
            </div>
            <p class="text-sm text-muted">Double Room</p><span class="badge badge-pill p-2 badge-secondary-light">February 16, 2019</span><a class="stretched-link" href="user-messages-detail.html"></a>
          </div>
          <div class="col-10 ms-auto col-lg-7">
            <div class="row">
              <div class="col-md-8 py-3">
                <p class="text-sm mb-0">One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections</p>
              </div>
              <div class="col-md-4 text-end py-3">
                <p class="text-sm">February 16, 2019</p>
              </div><a class="stretched-link" href="user-messages-detail.html"></a>
            </div>
          </div>
        </div>
      </div>
      <div class="list-group-item list-group-item-action p-4">
        <div class="row">
          <div class="col-2 col-lg-1 align-self-lg-center py-3 d-flex align-items-lg-center z-index-10">
            <div class="form-check">
              <input class="form-check-input" id="select_message_1" type="checkbox">
              <label class="form-check-label" for="select_message_1"> </label>
            </div>
            <div class="form-star d-none d-sm-inline-block mt-n1">
              <input id="star_message_1" type="checkbox" name="star">
              <label class="star-label" for="star_message_1"><span class="sr-only">Important Message</span></label>
            </div>
          </div>
          <div class="col-9 col-lg-4 align-self-center mb-3 mb-lg-0">
            <div class="d-flex align-items-center mb-1 mb-lg-3">
              <h2 class="h5 mb-0">Weeks Garrett</h2><img class="avatar avatar-sm avatar-border-white ms-3" src="img/avatar/avatar-1.jpg" alt="Jack London">
            </div>
            <p class="text-sm text-muted">Double Room</p><span class="badge badge-pill p-2 badge-primary-light">March 14, 2019</span><a class="stretched-link" href="user-messages-detail.html"></a>
          </div>
          <div class="col-10 ms-auto col-lg-7">
            <div class="row">
              <div class="col-md-8 py-3">
                <p class="text-sm mb-0">The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. &quot;What's happened to me?&quot; he thought. It wasn't a dream.</p>
              </div>
              <div class="col-md-4 text-end py-3">
                <p class="text-sm">March 14, 2019</p>
              </div><a class="stretched-link" href="user-messages-detail.html"></a>
            </div>
          </div>
        </div>
      </div>
      <div class="list-group-item list-group-item-action p-4">
        <div class="row">
          <div class="col-2 col-lg-1 align-self-lg-center py-3 d-flex align-items-lg-center z-index-10">
            <div class="form-check">
              <input class="form-check-input" id="select_message_2" type="checkbox">
              <label class="form-check-label" for="select_message_2"> </label>
            </div>
            <div class="form-star d-none d-sm-inline-block mt-n1">
              <input id="star_message_2" type="checkbox" name="star">
              <label class="star-label" for="star_message_2"><span class="sr-only">Important Message</span></label>
            </div>
          </div>
          <div class="col-9 col-lg-4 align-self-center mb-3 mb-lg-0">
            <div class="d-flex align-items-center mb-1 mb-lg-3">
              <h2 class="h5 mb-0">Fisher Bauer</h2><img class="avatar avatar-sm avatar-border-white ms-3" src="img/avatar/avatar-2.jpg" alt="Jack London">
            </div>
            <p class="text-sm text-muted">Double Room</p><span class="badge badge-pill p-2 badge-danger-light">March 10, 2019</span><a class="stretched-link" href="user-messages-detail.html"></a>
          </div>
          <div class="col-10 ms-auto col-lg-7">
            <div class="row">
              <div class="col-md-8 py-3">
                <p class="text-sm mb-0">His room, a proper human room although a little too small, lay peacefully between its four familiar walls. A collection of textile samples lay spread out on the table.</p>
              </div>
              <div class="col-md-4 text-end py-3">
                <p class="text-sm">March 10, 2019</p>
              </div><a class="stretched-link" href="user-messages-detail.html"></a>
            </div>
          </div>
        </div>
      </div>
      <div class="list-group-item list-group-item-action p-4">
        <div class="row">
          <div class="col-2 col-lg-1 align-self-lg-center py-3 d-flex align-items-lg-center z-index-10">
            <div class="form-check">
              <input class="form-check-input" id="select_message_3" type="checkbox">
              <label class="form-check-label" for="select_message_3"> </label>
            </div>
            <div class="form-star d-none d-sm-inline-block mt-n1">
              <input id="star_message_3" type="checkbox" name="star" checked>
              <label class="star-label" for="star_message_3"><span class="sr-only">Important Message</span></label>
            </div>
          </div>
          <div class="col-9 col-lg-4 align-self-center mb-3 mb-lg-0">
            <div class="d-flex align-items-center mb-1 mb-lg-3">
              <h2 class="h5 mb-0">Aguilar Webb</h2><img class="avatar avatar-sm avatar-border-white ms-3" src="img/avatar/avatar-3.jpg" alt="Jack London">
            </div>
            <p class="text-sm text-muted">Double Room</p><span class="badge badge-pill p-2 badge-success-light">April 09, 2019</span><a class="stretched-link" href="user-messages-detail.html"></a>
          </div>
          <div class="col-10 ms-auto col-lg-7">
            <div class="row">
              <div class="col-md-8 py-3">
                <p class="text-sm mb-0">Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>
              </div>
              <div class="col-md-4 text-end py-3">
                <p class="text-sm">April 09, 2019</p>
              </div><a class="stretched-link" href="user-messages-detail.html"></a>
            </div>
          </div>
        </div>
      </div>
      <div class="list-group-item list-group-item-action p-4">
        <div class="row">
          <div class="col-2 col-lg-1 align-self-lg-center py-3 d-flex align-items-lg-center z-index-10">
            <div class="form-check">
              <input class="form-check-input" id="select_message_4" type="checkbox">
              <label class="form-check-label" for="select_message_4"> </label>
            </div>
            <div class="form-star d-none d-sm-inline-block mt-n1">
              <input id="star_message_4" type="checkbox" name="star">
              <label class="star-label" for="star_message_4"><span class="sr-only">Important Message</span></label>
            </div>
          </div>
          <div class="col-9 col-lg-4 align-self-center mb-3 mb-lg-0">
            <div class="d-flex align-items-center mb-1 mb-lg-3">
              <h2 class="h5 mb-0">Melton Simon</h2><img class="avatar avatar-sm avatar-border-white ms-3" src="img/avatar/avatar-4.jpg" alt="Jack London">
            </div>
            <p class="text-sm text-muted">Double Room</p><span class="badge badge-pill p-2 badge-secondary-light">March 24, 2019</span><a class="stretched-link" href="user-messages-detail.html"></a>
          </div>
          <div class="col-10 ms-auto col-lg-7">
            <div class="row">
              <div class="col-md-8 py-3">
                <p class="text-sm mb-0">He must have tried it a hundred times, shut his eyes so that he wouldn't have to look at the floundering legs, and only stopped when he began to feel a mild, dull pain there that he had never felt before.</p>
              </div>
              <div class="col-md-4 text-end py-3">
                <p class="text-sm">March 24, 2019</p>
              </div><a class="stretched-link" href="user-messages-detail.html"></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Footer-->
<footer class="position-relative z-index-10 d-print-none">
  <!-- Main block - menus, subscribe form-->
  <div class="py-6 bg-gray-200 text-muted">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 mb-5 mb-lg-0">
          <div class="fw-bold text-uppercase text-dark mb-3">Directory</div>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing.</p>
          <ul class="list-inline">
            <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="twitter"><i class="fab fa-twitter"></i></a></li>
            <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="facebook"><i class="fab fa-facebook"></i></a></li>
            <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="instagram"><i class="fab fa-instagram"></i></a></li>
            <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="pinterest"><i class="fab fa-pinterest"></i></a></li>
            <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="vimeo"><i class="fab fa-vimeo"></i></a></li>
          </ul>
        </div>
        <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
          <h6 class="text-uppercase text-dark mb-3">Rentals</h6>
          <ul class="list-unstyled">
            <li><a class="text-muted" href="index.html">Rooms</a></li>
            <li><a class="text-muted" href="category-rooms.html">Map on top</a></li>
            <li><a class="text-muted" href="category-2-rooms.html">Side map</a></li>
            <li><a class="text-muted" href="category-3-rooms.html">No map</a></li>
            <li><a class="text-muted" href="detail-rooms.html">Room detail</a></li>
          </ul>
        </div>
        <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
          <h6 class="text-uppercase text-dark mb-3">Pages</h6>
          <ul class="list-unstyled">
            <li><a class="text-muted" href="compare.html">Comparison                                   </a></li>
            <li><a class="text-muted" href="team.html">Team                                   </a></li>
            <li><a class="text-muted" href="contact.html">Contact                                   </a></li>
          </ul>
        </div>
        <div class="col-lg-4">
          <h6 class="text-uppercase text-dark mb-3">Daily Offers & Discounts</h6>
          <p class="mb-3"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. At itaque temporibus.</p>
          <form action="#" id="newsletter-form">
            <div class="input-group mb-3">
              <input class="form-control bg-transparent border-dark border-end-0" type="email" placeholder="Your Email Address" aria-label="Your Email Address">
              <button class="btn btn-outline-dark border-start-0" type="submit"> <i class="fa fa-paper-plane text-lg"></i></button>
            </div>
          </form>
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
            <li class="list-inline-item"><img class="w-2rem" src="img/visa.svg" alt="..."></li>
            <li class="list-inline-item"><img class="w-2rem" src="img/mastercard.svg" alt="..."></li>
            <li class="list-inline-item"><img class="w-2rem" src="img/paypal.svg" alt="..."></li>
            <li class="list-inline-item"><img class="w-2rem" src="img/western-union.svg" alt="..."></li>
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
</html>