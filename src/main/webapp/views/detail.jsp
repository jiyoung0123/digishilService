<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<body style="padding-top: 72px;">

<!-- Hero Section-->
<section class="pt-7 pb-5 d-flex align-items-end dark-overlay bg-cover" style="background-image: url('img/photo/restaurant-1515164783716-8e6920f3e77c.jpg');">
  <div class="container overlay-content">
    <div class="d-flex justify-content-between align-items-start flex-column flex-lg-row align-items-lg-end">
      <div class="text-white mb-4 mb-lg-0">
        <div class="badge badge-pill badge-transparent px-3 py-2 mb-4">Eat &amp; Drink</div>
        <h1 class="text-shadow verified">Fifteen Restaurant & Bar</h1>
        <p><i class="fa-map-marker-alt fas me-2"></i> 53 Broadway, Brooklyn, NY 1129</p>
        <p class="mb-0 d-flex align-items-center"><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-gray-200 me-4">                   </i>8 Reviews</p>
      </div>
      <div class="calltoactions"><a class="btn btn-primary" href="#leaveReview" onclick="$('#leaveReview').collapse('show')" data-smooth-scroll>Leave a Review</a></div>
    </div>
  </div>
</section>
<section class="py-6">
  <div class="container">
    <div class="row">
      <div class="col-lg-8">
        <!-- About Listing-->
        <div class="text-block">
          <h3 class="mb-3">About</h3>
          <p class="text-muted"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.</p>
          <p class="text-muted"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
        <div class="text-block">
          <!-- Listing Location-->
          <h3 class="mb-4">Location</h3>
          <div class="map-wrapper-300 mb-3">
            <div class="h-100" id="detailMap"></div>
          </div>
        </div>
        <div class="text-block">
          <!-- Gallery-->
          <h3 class="mb-4">Gallery</h3>
          <div class="row gallery ms-n1 me-n1">
            <div class="col-lg-4 col-6 px-1 mb-2"><a href="img/photo/restaurant-1515164783716-8e6920f3e77c.jpg"><img class="img-fluid" src="img/photo/restaurant-1515164783716-8e6920f3e77c.jpg" alt="..."></a></div>
            <div class="col-lg-4 col-6 px-1 mb-2"><a href="img/photo/restaurant-1466978913421-dad2ebd01d17.jpg"><img class="img-fluid" src="img/photo/restaurant-1466978913421-dad2ebd01d17.jpg" alt="..."></a></div>
            <div class="col-lg-4 col-6 px-1 mb-2"><a href="img/photo/restaurant-1477763858572-cda7deaa9bc5.jpg"><img class="img-fluid" src="img/photo/restaurant-1477763858572-cda7deaa9bc5.jpg" alt="..."></a></div>
            <div class="col-lg-4 col-6 px-1 mb-2"><a href="img/photo/restaurant-1505275350441-83dcda8eeef5.jpg"><img class="img-fluid" src="img/photo/restaurant-1505275350441-83dcda8eeef5.jpg" alt="..."></a></div>
            <div class="col-lg-4 col-6 px-1 mb-2"><a href="img/photo/restaurant-1508766917616-d22f3f1eea14.jpg"><img class="img-fluid" src="img/photo/restaurant-1508766917616-d22f3f1eea14.jpg" alt="..."></a></div>
            <div class="col-lg-4 col-6 px-1 mb-2"><a href="img/photo/restaurant-1430931071372-38127bd472b8.jpg"><img class="img-fluid" src="img/photo/restaurant-1430931071372-38127bd472b8.jpg" alt="..."></a></div>
          </div>
        </div>
        <!-- Amenities-->
        <div class="text-block">
          <h3 class="mb-4">Amenities</h3>
          <ul class="amenities-list list-inline">
            <li class="list-inline-item mb-3">
              <div class="d-flex align-items-center">
                <div class="icon-circle bg-secondary me-2"><i class="fa fa-check"></i></div><span>Elevator</span>
              </div>
            </li>
            <li class="list-inline-item mb-3">
              <div class="d-flex align-items-center">
                <div class="icon-circle bg-secondary me-2"><i class="fa fa-check"></i></div><span>Vegan friendly</span>
              </div>
            </li>
            <li class="list-inline-item mb-3">
              <div class="d-flex align-items-center">
                <div class="icon-circle bg-secondary me-2"><i class="fa fa-check"></i></div><span>Alcohol served</span>
              </div>
            </li><li class="list-inline-item mb-3">
            <div class="d-flex align-items-center">
              <div class="icon-circle bg-secondary me-2"><i class="fa fa-check"></i></div><span>No smoking</span>
            </div>
          </li>

            <li class="list-inline-item mb-3">
              <div class="d-flex align-items-center">
                <div class="icon-circle bg-secondary me-2">
                  <i class="fa fa-check"></i>
                </div>
                <span>Parking spaces (paid)</span>
              </div>
            </li>
            <li class="list-inline-item mb-3">
              <div class="d-flex align-items-center">
                <div class="icon-circle bg-secondary me-2"><i class="fa fa-check"></i></div><span>WiFi</span>
              </div>
            </li>
          </ul>
        </div>
        <div class="text-block">
          <p class="subtitle text-sm text-primary">Reviews    </p>
          <h5 class="mb-4">Listing Reviews </h5>
          <div class="d-flex d-block d-sm-flex review">
            <div class="text-md-center flex-shrink-0 me-4 me-xl-5"><img class="d-block avatar avatar-xl p-2 mb-2" src="img/avatar/avatar-8.jpg" alt="Padmé Amidala"><span class="text-uppercase text-muted text-sm">Dec 2018</span></div>
            <div>
              <h6 class="mt-2 mb-1">Padmé Amidala</h6>
              <div class="mb-2"><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i>
              </div>
              <p class="text-muted text-sm">One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections     </p>
            </div>
          </div>
          <div class="d-flex d-block d-sm-flex review">
            <div class="text-md-center flex-shrink-0 me-4 me-xl-5"><img class="d-block avatar avatar-xl p-2 mb-2" src="img/avatar/avatar-2.jpg" alt="Luke Skywalker"><span class="text-uppercase text-muted text-sm">Dec 2018</span></div>
            <div>
              <h6 class="mt-2 mb-1">Luke Skywalker</h6>
              <div class="mb-2"><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-gray-200"></i>
              </div>
              <p class="text-muted text-sm">The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. &quot;What's happened to me?&quot; he thought. It wasn't a dream.     </p>
            </div>
          </div>
          <div class="d-flex d-block d-sm-flex review">
            <div class="text-md-center flex-shrink-0 me-4 me-xl-5"><img class="d-block avatar avatar-xl p-2 mb-2" src="img/avatar/avatar-3.jpg" alt="Princess Leia"><span class="text-uppercase text-muted text-sm">Dec 2018</span></div>
            <div>
              <h6 class="mt-2 mb-1">Princess Leia</h6>
              <div class="mb-2"><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-gray-200"></i><i class="fa fa-xs fa-star text-gray-200"></i>
              </div>
              <p class="text-muted text-sm">His room, a proper human room although a little too small, lay peacefully between its four familiar walls. A collection of textile samples lay spread out on the table.     </p>
            </div>
          </div>
          <div class="d-flex d-block d-sm-flex review">
            <div class="text-md-center flex-shrink-0 me-4 me-xl-5"><img class="d-block avatar avatar-xl p-2 mb-2" src="img/avatar/avatar-4.jpg" alt="Jabba Hut"><span class="text-uppercase text-muted text-sm">Dec 2018</span></div>
            <div>
              <h6 class="mt-2 mb-1">Jabba Hut</h6>
              <div class="mb-2"><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i>
              </div>
              <p class="text-muted text-sm">Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.     </p>
            </div>
          </div>
          <div class="py-5">
            <button class="btn btn-outline-primary" type="button" data-bs-toggle="collapse" data-bs-target="#leaveReview" aria-expanded="false" aria-controls="leaveReview">Leave a review</button>
            <div class="collapse mt-4" id="leaveReview">
              <h5 class="mb-4">Leave a review</h5>
              <form class="form" id="contact-form" method="get" action="#">
                <div class="row">
                  <div class="col-sm-6">
                    <div class="mb-4">
                      <label class="form-label" for="name">Your name *</label>
                      <input class="form-control" type="text" name="name" id="name" placeholder="Enter your name" required="required">
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="mb-4">
                      <label class="form-label" for="rating">Your rating *</label>
                      <select class="form-select focus-shadow-0" name="rating" id="rating">
                        <option value="5">&#9733;&#9733;&#9733;&#9733;&#9733; (5/5)</option>
                        <option value="4">&#9733;&#9733;&#9733;&#9733;&#9734; (4/5)</option>
                        <option value="3">&#9733;&#9733;&#9733;&#9734;&#9734; (3/5)</option>
                        <option value="2">&#9733;&#9733;&#9734;&#9734;&#9734; (2/5)</option>
                        <option value="1">&#9733;&#9734;&#9734;&#9734;&#9734; (1/5)</option>
                      </select>
                    </div>
                  </div>
                </div>
                <div class="mb-4">
                  <label class="form-label" for="email">Your email *</label>
                  <input class="form-control" type="email" name="email" id="email" placeholder="Enter your  email" required="required">
                </div>
                <div class="mb-4">
                  <label class="form-label" for="review">Review text *</label>
                  <textarea class="form-control" rows="4" name="review" id="review" placeholder="Enter your review" required="required"></textarea>
                </div>
                <button class="btn btn-primary" type="submit">Post review</button>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="ps-xl-4">
          <!-- Opening Hours      -->
          <div class="card border-0 shadow mb-5">
            <div class="card-header bg-gray-100 py-4 border-0">
              <div class="d-flex align-items-center justify-content-between">
                <div>
                  <p class="subtitle text-sm text-primary">Opening in 5 minutes</p>
                  <h4 class="mb-0">Opening Hours </h4>
                </div>
                <svg class="svg-icon svg-icon svg-icon-light w-3rem h-3rem ms-3 text-muted flex-shrink-0">
                  <use xlink:href="#wall-clock-1"> </use>
                </svg>
              </div>
            </div>
            <div class="card-body">
              <table class="table text-sm mb-0">
                <tr>
                  <th class="ps-0 border-0">Sunday</th>
                  <td class="pe-0 text-end border-0">8:00 am - 6:00 pm</td>
                </tr>
                <tr>
                  <th class="ps-0">Monday</th>
                  <td class="pe-0 text-end">8:00 am - 6:00 pm</td>
                </tr>
                <tr>
                  <th class="ps-0">Tuesday</th>
                  <td class="pe-0 text-end">8:00 am - 6:00 pm</td>
                </tr>
              </table>
            </div>
          </div>


          <!-- Contact-->
          <div class="card border-0 shadow mb-5">
            <div class="card-header bg-gray-100 py-4 border-0">
              <div class="d-flex align-items-center justify-content-between">
                <div>
                  <p class="subtitle text-sm text-primary">Drop Us a Line</p>
                  <h4 class="mb-0">Contact</h4>
                </div>
                <svg class="svg-icon svg-icon svg-icon-light w-3rem h-3rem ms-3 text-muted flex-shrink-0">
                  <use xlink:href="#fountain-pen-1"> </use>
                </svg>
              </div>
            </div>
            <div class="card-body">
              <ul class="list-unstyled mb-4">
                <li class="mb-2"> <a class="text-gray-00 text-sm text-decoration-none" href="#"><i class="fa fa-phone me-3"></i><span class="text-muted">(020) 123 456 789</span></a></li>
                <li class="mb-2"> <a class=" text-sm text-decoration-none" href="#"><i class="fa fa-envelope me-3"></i><span class="text-muted">info@example.com</span></a></li>
                <li class="mb-2"> <a class=" text-sm text-decoration-none" href="#"><i class="fa fa-globe me-3"></i><span class="text-muted">www.example.com</span></a></li>
                <li class="mb-2"> <a class="text-blue text-sm text-decoration-none" href="#"><i class="fab fa-facebook me-3"></i><span class="text-muted">Facebook</span></a></li>
                <li class="mb-2"> <a class=" text-sm text-decoration-none" href="#"><i class="fab fa-twitter me-3"></i><span class="text-muted">Twitter</span></a></li>
                <li class="mb-2"> <a class=" text-sm text-decoration-none" href="#"><i class="fab fa-instagram me-3"></i><span class="text-muted">Instagram</span></a></li>
                <li class="mb-2"> <a class=" text-sm text-decoration-none" href="#"><i class="fab fa-google-plus me-3"></i><span class="text-muted">Google+</span></a></li>
              </ul>
              <div class="d-grid text-center"><a class="btn btn-outline-primary" href="#"> <i class="far fa-paper-plane me-2"></i>Send a Message</a></div>
            </div>
          </div>
          <div class="text-center">
            <p><a class="text-secondary" href="#"> <i class="fa fa-heart"></i> Bookmark This Listing</a></p><span>79 people bookmarked this place </span>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<div class="py-6 bg-gray-100">
  <div class="container">
    <h5 class="mb-0">Similar places</h5>
    <p class="subtitle text-sm text-primary mb-4">You may also like         </p>
    <!-- Slider main container-->
    <div class="swiper-container swiper-container-mx-negative items-slider">
      <!-- Additional required wrapper-->
      <div class="swiper-wrapper pb-5">
        <!-- Slides-->
        <div class="swiper-slide h-auto px-2">
          <!-- venue item-->
          <div class="w-100 h-100" data-marker-id="59c0c8e33b1527bfe2abaf92">
            <div class="card h-100 border-0 shadow">
              <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(img/photo/restaurant-1430931071372-38127bd472b8.jpg); min-height: 200px;"><a class="tile-link" href="detail.html"></a>
                <div class="card-img-overlay-bottom z-index-20">
                  <h4 class="text-white text-shadow">Blue Hill</h4>
                  <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                    </i>
                  </p>
                </div>
                <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                  <div class="badge badge-transparent badge-pill px-3 py-2">Restaurants</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a>
                </div>
              </div>
              <div class="card-body">
                <p class="text-sm text-muted mb-3"> Cupidatat excepteur non dolore laborum et quis nostrud veniam dolore deserunt. Pariatur dolore ut in elit id nulla. Irur...</p>
                <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p>
                <p class="text-sm mb-0"><a class="me-1" href="#">Restaurant,</a><a class="me-1" href="#">Contemporary</a>
                </p>
              </div>
            </div>
          </div>
        </div>
        <div class="swiper-slide h-auto px-2">
          <!-- venue item-->
          <div class="w-100 h-100" data-marker-id="59c0c8e322f3375db4d89128">
            <div class="card h-100 border-0 shadow">
              <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(img/photo/restaurant-1436018626274-89acd1d6ec9d.jpg); min-height: 200px;"><a class="tile-link" href="detail.html"></a>
                <div class="card-img-overlay-bottom z-index-20">
                  <h4 class="text-white text-shadow">Plutorque</h4>
                  <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                  </p>
                </div>
                <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                  <div class="badge badge-transparent badge-pill px-3 py-2">Restaurant</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a>
                </div>
              </div>
              <div class="card-body">
                <p class="text-sm text-muted mb-3"> Proident irure eiusmod velit veniam consectetur id minim irure et nostrud mollit magna velit. Commodo amet proident aliq...</p>
                <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p>
                <p class="text-sm mb-0"><a class="me-1" href="#">Restaurant,</a><a class="me-1" href="#">Fusion</a>
                </p>
              </div>
            </div>
          </div>
        </div>
        <div class="swiper-slide h-auto px-2">
          <!-- venue item-->
          <div class="w-100 h-100" data-marker-id="59c0c8e3a31e62979bf147c9">
            <div class="card h-100 border-0 shadow">
              <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(img/photo/restaurant-1466978913421-dad2ebd01d17.jpg); min-height: 200px;"><a class="tile-link" href="detail.html"></a>
                <div class="card-img-overlay-bottom z-index-20">
                  <h4 class="text-white text-shadow">Junipoor</h4>
                  <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                  </p>
                </div>
                <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                  <div class="badge badge-transparent badge-pill px-3 py-2">Music club</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a>
                </div>
              </div>
              <div class="card-body">
                <p class="text-sm text-muted mb-3"> Lorem amet ex duis in et fugiat consectetur laborum eiusmod labore. Quis cupidatat et do dolor in in magna. Eu sit quis ...</p>
                <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p>
                <p class="text-sm mb-0"><a class="me-1" href="#">Music,</a><a class="me-1" href="#">Techno,</a><a class="me-1" href="#">House</a>
                </p>
              </div>
            </div>
          </div>
        </div>
        <div class="swiper-slide h-auto px-2">
          <!-- venue item-->
          <div class="w-100 h-100" data-marker-id="59c0c8e3503eb77d487e8082">
            <div class="card h-100 border-0 shadow">
              <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(img/photo/restaurant-1477763858572-cda7deaa9bc5.jpg); min-height: 200px;"><a class="tile-link" href="detail.html"></a>
                <div class="card-img-overlay-bottom z-index-20">
                  <h4 class="text-white text-shadow">Musix</h4>
                  <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                    </i><i class="fa fa-star text-gray-300">                    </i>
                  </p>
                </div>
                <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                  <div class="badge badge-transparent badge-pill px-3 py-2">Music club</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a>
                </div>
              </div>
              <div class="card-body">
                <p class="text-sm text-muted mb-3"> Deserunt eiusmod Lorem proident consequat elit culpa laboris ea cupidatat. Consequat dolore proident ipsum qui sint enim...</p>
                <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p>
                <p class="text-sm mb-0"><a class="me-1" href="#">Music,</a><a class="me-1" href="#">Club,</a><a class="me-1" href="#">Rock</a>
                </p>
              </div>
            </div>
          </div>
        </div>
        <div class="swiper-slide h-auto px-2">
          <!-- venue item-->
          <div class="w-100 h-100" data-marker-id="59c0c8e39aa2eed0626e485d">
            <div class="card h-100 border-0 shadow">
              <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(img/photo/restaurant-1504087697492-238a6bf49ce8.jpg); min-height: 200px;"><a class="tile-link" href="detail.html"></a>
                <div class="card-img-overlay-bottom z-index-20">
                  <h4 class="text-white text-shadow">Prosure</h4>
                  <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                  </p>
                </div>
                <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                  <div class="badge badge-transparent badge-pill px-3 py-2">Restaurant</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a>
                </div>
              </div>
              <div class="card-body">
                <p class="text-sm text-muted mb-3"> Cillum sunt reprehenderit ea non irure veniam dolore commodo labore fugiat est consequat velit. Cupidatat nisi qui ad si...</p>
                <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p>
                <p class="text-sm mb-0"><a class="me-1" href="#">Nisi,</a><a class="me-1" href="#">Ex,</a><a class="me-1" href="#">Eiusmod</a>
                </p>
              </div>
            </div>
          </div>
        </div>
        <div class="swiper-slide h-auto px-2">
          <!-- venue item-->
          <div class="w-100 h-100" data-marker-id="59c0c8e39aa2edasd626e485d">
            <div class="card h-100 border-0 shadow">
              <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(img/photo/restaurant-1505275350441-83dcda8eeef5.jpg); min-height: 200px;"><a class="tile-link" href="detail.html"></a>
                <div class="card-img-overlay-bottom z-index-20">
                  <h4 class="text-white text-shadow">Take That</h4>
                  <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                    </i>
                  </p>
                </div>
                <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                  <div class="badge badge-transparent badge-pill px-3 py-2">Café</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a>
                </div>
              </div>
              <div class="card-body">
                <p class="text-sm text-muted mb-3"> Cillum sunt reprehenderit ea non irure veniam dolore commodo labore fugiat est consequat velit. Cupidatat nisi qui ad si...</p>
                <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p>
                <p class="text-sm mb-0"><a class="me-1" href="#">Nisi,</a><a class="me-1" href="#">Ex,</a><a class="me-1" href="#">Eiusmod</a>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- If we need pagination-->
      <div class="swiper-pagination"></div>
    </div>
  </div>
</div>
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
<!-- Map-->
<script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js" integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og==" crossorigin=""></script>
<!-- Available tile layers-->
<script src="js/map-layers.js"> </script>
<script src="js/map-detail.js"></script>
<script>
  createDetailMap({
    mapId: 'detailMap',
    mapCenter: [40.732346, -74.0014247],
    markerShow: true,
    markerPosition: [40.732346, -74.0014247],
    markerPath: 'img/marker.svg',
  })
</script>
</body>
