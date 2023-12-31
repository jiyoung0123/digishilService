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
    <!-- Leaflet Maps-->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css" integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ==" crossorigin="">
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
<header class="header">
    <!-- Navbar-->
    <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">
        <div class="container-fluid">
            <div class="d-flex align-items-center"><a class="navbar-brand py-1" href="index.html"><img src="img/logo.svg" alt="Directory logo"></a>
                <form class="form-inline d-none d-sm-flex" action="#" id="search">
                    <div class="input-label-absolute input-label-absolute-left input-expand ms-lg-2 ms-xl-3">
                        <label class="label-absolute" for="search_search"><i class="fa fa-search"></i><span class="sr-only">What are you looking for?</span></label>
                        <input class="form-control form-control-sm border-0 shadow-0 bg-gray-200" id="search_search" placeholder="Search" aria-label="Search" type="search">
                    </div>
                </form>
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
                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="homeDropdownMenuLink" href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Home</a>
                        <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink"><a class="dropdown-item" href="index.html">Rooms</a><a class="dropdown-item" href="index-2.html">Restaurants</a><a class="dropdown-item" href="index-3.html">Travel</a><a class="dropdown-item" href="index-4.html">Real Estate <span class="badge badge-info-light ms-1 mt-n1">New</span></a></div>
                    </li>
                    <!-- Megamenu-->
                    <li class="nav-item dropdown position-static"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Template</a>
                        <div class="dropdown-menu megamenu py-lg-0">
                            <div class="row">
                                <div class="col-lg-9">
                                    <div class="row p-3 pe-lg-0 ps-lg-5 pt-lg-5">
                                        <div class="col-lg-3">
                                            <!-- Megamenu list-->
                                            <h6 class="text-uppercase">Homepage</h6>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="index.html">Rooms   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="index-2.html">Restaurants   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="index-3.html">Travel   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="index-4.html">Real estate <span class="badge badge-info-light ms-1">New</span>   </a></li>
                                            </ul>
                                            <!-- Megamenu list-->
                                            <h6 class="text-uppercase">Restaurants</h6>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="category.html">Category - Map on the top   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-2.html">Category - Map on the right   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-3.html">Category - no map   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="detail.html">Restaurant detail   </a></li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-3">
                                            <!-- Megamenu list-->
                                            <h6 class="text-uppercase">Rooms</h6>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-rooms.html">Category - Map on the top   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-2-rooms.html">Category - Map on the right   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-3-rooms.html">Category - no map   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="detail-rooms.html">Room detail   </a></li>
                                            </ul>
                                            <!-- Megamenu list-->
                                            <h6 class="text-uppercase">Blog</h6>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="blog.html">Blog   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="post.html">Post   </a></li>
                                            </ul>
                                            <!-- Megamenu list-->
                                            <h6 class="text-uppercase">Pages</h6>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="compare.html">Comparison   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="team.html">Team   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="contact.html">Contact   </a></li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-3">
                                            <!-- Megamenu list-->
                                            <h6 class="text-uppercase">Pages</h6>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="pricing.html">Pricing   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="text.html">Text page   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="faq.html">F.A.Q.s   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="coming-soon.html">Coming soon   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="404.html">404 page   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="knowledge-base.html">Knowledge Base  <span class="badge badge-info-light ms-1">New</span>   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="knowledge-base-topic.html">Knowledge Base  &mdash; Topic<span class="badge badge-info-light ms-1">New</span>   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="terms.html">Terms & Conditions  <span class="badge badge-info-light ms-1">New</span>   </a></li>
                                            </ul>
                                            <!-- Megamenu list-->
                                            <h6 class="text-uppercase">Host</h6>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-add-0.html">Add new listing - 6 pages   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-list.html">Bookings &mdash; list view   </a></li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-3">
                                            <!-- Megamenu list-->
                                            <h6 class="text-uppercase">User</h6>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-profile.html">Profile   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-account.html">Account   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-personal.html">Personal info - forms   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-security.html">Password & security - forms   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="login.html">Sign in   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="signup.html">Sign up   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-booking-1.html">Booking process - 4 pages   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-grid.html">Bookings &mdash; grid view   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-booking-detail.html">Booking detail   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-invoice.html">Invoice  <span class="badge badge-info-light ms-1">New</span>   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-messages.html">Messages <span class="badge badge-info-light ms-1">New</span>   </a></li>
                                                <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-messages-detail.html">Message Detail  <span class="badge badge-info-light ms-1">New</span>   </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="row megamenu-services d-none d-lg-flex ps-lg-5">
                                        <div class="col-xl-3 col-lg-6 d-flex">
                                            <div class="megamenu-services-item">
                                                <svg class="svg-icon megamenu-services-icon">
                                                    <use xlink:href="#destination-map-1"> </use>
                                                </svg>
                                                <div>
                                                    <h6 class="text-uppercase">Best rentals</h6>
                                                    <p class="mb-0 text-muted text-sm">Find the perfect place</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-6 d-flex">
                                            <div class="megamenu-services-item">
                                                <svg class="svg-icon megamenu-services-icon">
                                                    <use xlink:href="#money-box-1"> </use>
                                                </svg>
                                                <div>
                                                    <h6 class="text-uppercase">Earn points</h6>
                                                    <p class="mb-0 text-muted text-sm">And get great rewards</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-6 d-flex">
                                            <div class="megamenu-services-item">
                                                <svg class="svg-icon megamenu-services-icon">
                                                    <use xlink:href="#customer-support-1"> </use>
                                                </svg>
                                                <div>
                                                    <h6 class="text-uppercase">020-800-456-747</h6>
                                                    <p class="mb-0 text-muted text-sm">24/7 Available Support</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-6 d-flex">
                                            <div class="megamenu-services-item">
                                                <svg class="svg-icon megamenu-services-icon">
                                                    <use xlink:href="#secure-payment-1"> </use>
                                                </svg>
                                                <div>
                                                    <h6 class="text-uppercase">Secure Payment</h6>
                                                    <p class="mb-0 text-muted text-sm">Secure Payment</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 d-none d-lg-block position-relative"><img class="bg-image" src="img/photo/photo-1521170665346-3f21e2291d8b.jpg" alt=""></div>
                            </div>
                        </div>
                    </li>
                    <!-- /Megamenu end-->
                    <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a>
                    </li>
                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="docsDropdownMenuLink" href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Docs</a>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
                            <h6 class="dropdown-header fw-normal">Documentation</h6><a class="dropdown-item" href="docs/docs-introduction.html">Introduction </a><a class="dropdown-item" href="docs/docs-directory-structure.html">Directory structure </a><a class="dropdown-item" href="docs/docs-gulp.html">Gulp </a><a class="dropdown-item" href="docs/docs-customizing-css.html">Customizing CSS </a><a class="dropdown-item" href="docs/docs-credits.html">Credits </a><a class="dropdown-item" href="docs/docs-changelog.html">Changelog </a>
                            <div class="dropdown-divider"></div>
                            <h6 class="dropdown-header fw-normal">Components</h6><a class="dropdown-item" href="docs/components-bootstrap.html">Bootstrap </a><a class="dropdown-item" href="docs/components-directory.html">Theme </a>
                        </div>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="login.html">Sign in</a></li>
                    <li class="nav-item"><a class="nav-link" href="signup.html">Sign up</a></li>
                    <li class="nav-item mt-3 mt-lg-0 ms-lg-3 d-lg-none d-xl-inline-block"><a class="btn btn-primary" href="user-add-0.html">Add a listing</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- /Navbar -->
</header>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6 py-4 p-xl-5">
            <h2 class="mb-4">서울에서 살아보기</h2>
            <hr class="my-4">
            <form action="#" autocomplete="off">
                <div class="row">
                    <div class="col-xl-4 col-md-6 mb-4">
                        <label class="form-label" for="form_dates">날짜</label>
                        <div class="datepicker-container datepicker-container-left">
                            <input class="form-control" type="text" name="bookingDate" id="form_dates" placeholder="날짜를 선택하세요">
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-6 mb-4">
                        <label class="form-label" for="form_guests">게스트</label>
                        <select class="selectpicker form-control" name="guests" id="form_guests" data-style="btn-selectpicker" title=" ">
                            <option value="guests_0">1    </option>
                            <option value="guests_1">2    </option>
                            <option value="guests_2">3    </option>
                            <option value="guests_3">4    </option>
                            <option value="guests_4">5    </option>
                        </select>
                    </div>
                    <div class="col-xl-4 col-md-6 mb-4">
                        <label class="form-label" for="form_type">타입</label>
                        <select class="selectpicker form-control" name="type" id="form_type" multiple data-style="btn-selectpicker" data-none-selected-text="">
                            <option value="type_0">Entire place    </option>
                            <option value="type_1">Private room    </option>
                            <option value="type_2">Shared room    </option>
                        </select>
                    </div>
                    <div class="col-xl-4 col-md-6 mb-4">
                        <label class="form-label">가격 범위</label>
                        <div class="text-primary" id="slider-snap"></div>
                        <div class="nouislider-values">
                            <div class="min">From $<span id="slider-snap-value-from"></span></div>
                            <div class="max">To $<span id="slider-snap-value-to"></span></div>
                        </div>
                        <input type="hidden" name="pricefrom" id="slider-snap-input-from" value="40">
                        <input type="hidden" name="priceto" id="slider-snap-input-to" value="110">
                    </div>
                    <div class="col-md-6 col-lg-12 col-xl-8 mb-4 d-xl-flex justify-content-center">
                        <div>
                            <label class="form-label">상세 조건</label>
                            <ul class="list-inline mb-0 mt-1">
                                <li class="list-inline-item">
                                    <div class="form-check form-switch">
                                        <input class="form-check-input" id="instantBook" type="checkbox">
                                        <label class="form-check-label" for="instantBook"> <span class="text-sm">빠른 예약</span></label>
                                    </div>
                                </li>
                                <li class="list-inline-item">
                                    <div class="form-check form-switch">
                                        <input class="form-check-input" id="superhost" type="checkbox">
                                        <label class="form-check-label" for="superhost"> <span class="text-sm">슈퍼 호스트</span></label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-12 pb-4">
                        <div class="collapse" id="moreFilters">
                            <div class="filter-block">
                                <h6 class="mb-3">Location</h6>
                                <div class="row">
                                    <div class="col-xl-4 col-md-6 mb-4 mb-xl-0">
                                        <label class="form-label" for="form_neighbourhood">Neighbourhood</label>
                                        <select class="selectpicker form-control" name="neighbourhood" id="form_neighbourhood" multiple data-style="btn-selectpicker" data-live-search="true" data-selected-text-format="count &gt; 1" data-none-selected-text="">
                                            <option value="neighbourhood_0">Battery Park City    </option>
                                            <option value="neighbourhood_1">Bowery    </option>
                                            <option value="neighbourhood_2">Carnegie Hill    </option>
                                            <option value="neighbourhood_3">Central Park    </option>
                                            <option value="neighbourhood_4">Chelsea    </option>
                                            <option value="neighbourhood_5">Chinatown    </option>
                                            <option value="neighbourhood_6">Civic Center    </option>
                                            <option value="neighbourhood_7">East Harlem    </option>
                                            <option value="neighbourhood_8">Financial District    </option>
                                            <option value="neighbourhood_9">Flatiron    </option>
                                            <option value="neighbourhood_10">Garment District    </option>
                                            <option value="neighbourhood_11">Gramercy Park    </option>
                                            <option value="neighbourhood_12">Greenwich Village    </option>
                                            <option value="neighbourhood_13">East Village    </option>
                                            <option value="neighbourhood_14">West Village    </option>
                                            <option value="neighbourhood_15">Hamilton Heights    </option>
                                            <option value="neighbourhood_16">Harlem    </option>
                                            <option value="neighbourhood_17">Hell's Kitchen / Clinton    </option>
                                            <option value="neighbourhood_18">Inwood    </option>
                                            <option value="neighbourhood_19">Kips Bay    </option>
                                            <option value="neighbourhood_20">Lenox Hill    </option>
                                            <option value="neighbourhood_21">Little Italy    </option>
                                            <option value="neighbourhood_22">Lower Eastside    </option>
                                            <option value="neighbourhood_23">Madison Square    </option>
                                            <option value="neighbourhood_24">Manhattan Valley    </option>
                                            <option value="neighbourhood_25">Meatpacking District    </option>
                                            <option value="neighbourhood_26">Midtown    </option>
                                            <option value="neighbourhood_27">Morningside Heights    </option>
                                            <option value="neighbourhood_28">Murray Hill    </option>
                                            <option value="neighbourhood_29">NoHo    </option>
                                            <option value="neighbourhood_30">NoLita    </option>
                                            <option value="neighbourhood_31">Roosevelt Island    </option>
                                            <option value="neighbourhood_32">SoHo    </option>
                                            <option value="neighbourhood_33">Stuyvesant Town (Stuyvesant Square)    </option>
                                            <option value="neighbourhood_34">Sutton Place    </option>
                                            <option value="neighbourhood_35">Times Square    </option>
                                            <option value="neighbourhood_36">Tribeca    </option>
                                            <option value="neighbourhood_37">Turtle Bay    </option>
                                            <option value="neighbourhood_38">Upper Eastside    </option>
                                            <option value="neighbourhood_39">Upper Westside    </option>
                                            <option value="neighbourhood_40">Washington Heights    </option>
                                            <option value="neighbourhood_41">Yorkville    </option>
                                        </select>
                                    </div>
                                    <div class="col-xl-8">
                                        <label class="form-label">Neighbourhood Tag</label>
                                        <ul class="list-inline mt-xl-1 mb-0">
                                            <li class="list-inline-item">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="type_0" name="type[]">
                                                    <label class="form-check-label" for="type_0">Hipster                                            </label>
                                                </div>
                                            </li>
                                            <li class="list-inline-item">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="type_1" name="type[]">
                                                    <label class="form-check-label" for="type_1">Business                                            </label>
                                                </div>
                                            </li>
                                            <li class="list-inline-item">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="type_2" name="type[]">
                                                    <label class="form-check-label" for="type_2">Family                                            </label>
                                                </div>
                                            </li>
                                            <li class="list-inline-item">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="type_3" name="type[]">
                                                    <label class="form-check-label" for="type_3">Green                                            </label>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="filter-block">
                                <h6 class="mb-3">Rooms and beds</h6>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <label class="form-label">Beds</label>
                                        <div class="d-flex align-items-center">
                                            <div class="btn btn-items btn-items-decrease">-</div>
                                            <input class="form-control input-items input-items-greaterthan" type="text" value="1+" disabled>
                                            <div class="btn btn-items btn-items-increase">+</div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <label class="form-label">Bedrooms</label>
                                        <div class="d-flex align-items-center">
                                            <div class="btn btn-items btn-items-decrease">-</div>
                                            <input class="form-control input-items input-items-greaterthan" type="text" value="1+" disabled>
                                            <div class="btn btn-items btn-items-increase">+</div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <label class="form-label">Bathrooms</label>
                                        <div class="d-flex align-items-center">
                                            <div class="btn btn-items btn-items-decrease">-</div>
                                            <input class="form-control input-items input-items-greaterthan" type="text" value="1+" disabled>
                                            <div class="btn btn-items btn-items-increase">+</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="filter-block">
                                <h6 class="mb-3">Trip type</h6>
                                <div class="row pt-1">
                                    <div class="col-sm-6">
                                        <div class="form-check form-switch mb-3">
                                            <input class="form-check-input" id="forfamilies" type="checkbox" name="forfamilies" aria-describedby="forfamiliesHelp">
                                            <label class="form-check-label" for="forfamilies"> <span class="text-sm">For Families</span></label>
                                        </div><small class="text-muted form-text" id="forfamiliesHelp">Explore entire homes with 5-star reviews from families and essentials like a kitchen and TV</small>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-check form-switch mb-3">
                                            <input class="form-check-input" id="forwork" type="checkbox" name="forwork" aria-describedby="forworkHelp">
                                            <label class="form-check-label" for="forwork"> <span class="text-sm">For work</span></label>
                                        </div><small class="text-muted form-text" id="forworkHelp">Explore top-rated homes with essentials like a workspace, wifi, and self check-in</small>
                                    </div>
                                </div>
                            </div>
                            <div class="filter-block">
                                <h6 class="mb-3">Amenities</h6>
                                <ul class="list-inline mb-0">
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_0" name="amenities[]">
                                            <label class="form-check-label" for="amenities_0">Kitchen                               </label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_1" name="amenities[]">
                                            <label class="form-check-label" for="amenities_1">Shampoo                               </label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_2" name="amenities[]">
                                            <label class="form-check-label" for="amenities_2">Heating                               </label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_3" name="amenities[]">
                                            <label class="form-check-label" for="amenities_3">Air conditioning                               </label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_4" name="amenities[]">
                                            <label class="form-check-label" for="amenities_4">Washer                               </label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_5" name="amenities[]">
                                            <label class="form-check-label" for="amenities_5">Dryer                               </label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_6" name="amenities[]">
                                            <label class="form-check-label" for="amenities_6">Wifi                               </label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_7" name="amenities[]">
                                            <label class="form-check-label" for="amenities_7">Breakfast                               </label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_8" name="amenities[]">
                                            <label class="form-check-label" for="amenities_8">Indoor fireplace                               </label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_9" name="amenities[]">
                                            <label class="form-check-label" for="amenities_9">Buzzer/wireless intercom                               </label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_10" name="amenities[]">
                                            <label class="form-check-label" for="amenities_10">Doorman                               </label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_11" name="amenities[]">
                                            <label class="form-check-label" for="amenities_11">Hangers                               </label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_12" name="amenities[]">
                                            <label class="form-check-label" for="amenities_12">Iron                               </label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_13" name="amenities[]">
                                            <label class="form-check-label" for="amenities_13">Hair dryer                               </label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="amenities_14" name="amenities[]">
                                            <label class="form-check-label" for="amenities_14">Laptop friendly workspace                               </label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="filter-block">
                                <h6 class="mb-3">Facilities</h6>
                                <ul class="list-inline mb-0">
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="facilities_0" name="facilities[]">
                                            <label class="form-check-label" for="facilities_0">Free parking on premises                               </label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="facilities_1" name="facilities[]">
                                            <label class="form-check-label" for="facilities_1">Gym                               </label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="facilities_2" name="facilities[]">
                                            <label class="form-check-label" for="facilities_2">Hot tub                               </label>
                                        </div>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="facilities_3" name="facilities[]">
                                            <label class="form-check-label" for="facilities_3">Pool                               </label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 mb-4 order-2 order-sm-1">
                        <button class="btn btn-primary" type="submit"> <i class="fas fa-search me-1"></i>Search                </button>
                    </div>
                    <div class="col-sm-6 mb-4 text-sm-end order-1 order-sm-2">
                        <button class="btn btn-link btn-collapse ps-0 text-secondary" type="button" data-bs-toggle="collapse" data-bs-target="#moreFilters" aria-expanded="false" aria-controls="moreFilters" data-expanded-text="Less filters" data-collapsed-text="More filters">More filters</button>
                    </div>
                </div>
            </form>
            <hr class="my-4">
            <div class="d-flex justify-content-between align-items-center flex-column flex-md-row mb-4">
                <div class="me-3">
                    <p class="mb-3 mb-md-0"><strong>12</strong> results found</p>
                </div>
                <div>
                    <label class="form-label me-2" for="form_sort">Sort by</label>
                    <select class="selectpicker" name="sort" id="form_sort" data-style="btn-selectpicker" title="">
                        <option value="sortBy_0">Most popular   </option>
                        <option value="sortBy_1">Recommended   </option>
                        <option value="sortBy_2">Newest   </option>
                        <option value="sortBy_3">Oldest   </option>
                        <option value="sortBy_4">Closest   </option>
                    </select>
                </div>
            </div>
            <div class="row">
                <!-- place item-->
                <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                    <div class="card h-100 border-0 shadow">
                        <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="/img/photo/photo-1484154218962-a197022b5858.jpg" alt="Modern, Well-Appointed Room"/><a class="tile-link" href="detail-rooms.html"></a>
                            <div class="card-img-overlay-bottom z-index-20">
                                <div class="d-flex text-white text-sm align-items-center"><img class="avatar avatar-border-white flex-shrink-0 me-2" src="img/avatar/avatar-0.jpg" alt="Pamela"/>
                                    <div>Pamela</div>
                                </div>
                            </div>
                            <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                                <svg class="svg-icon text-white">
                                    <use xlink:href="#heart-1"> </use>
                                </svg></a></div>
                        </div>
                        <div class="card-body d-flex align-items-center">
                            <div class="w-100">
                                <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Modern, Well-Appointed Room</a></h6>
                                <div class="d-flex card-subtitle mb-3">
                                    <p class="flex-grow-1 mb-0 text-muted text-sm">Private room</p>
                                    <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                                    </p>
                                </div>
                                <p class="card-text text-muted"><span class="h4 text-primary">$80</span> per night</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- place item-->
                <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e322f3375db4d89128">
                    <div class="card h-100 border-0 shadow">
                        <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="/img/photo/photo-1426122402199-be02db90eb90.jpg" alt="Cute Quirky Garden apt, NYC adjacent"/><a class="tile-link" href="detail-rooms.html"></a>
                            <div class="card-img-overlay-bottom z-index-20">
                                <div class="d-flex text-white text-sm align-items-center"><img class="avatar avatar-border-white flex-shrink-0 me-2" src="img/avatar/avatar-7.jpg" alt="John"/>
                                    <div>John</div>
                                </div>
                            </div>
                            <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                                <svg class="svg-icon text-white">
                                    <use xlink:href="#heart-1"> </use>
                                </svg></a></div>
                        </div>
                        <div class="card-body d-flex align-items-center">
                            <div class="w-100">
                                <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Cute Quirky Garden apt, NYC adjacent</a></h6>
                                <div class="d-flex card-subtitle mb-3">
                                    <p class="flex-grow-1 mb-0 text-muted text-sm">Entire apartment</p>
                                    <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                                    </p>
                                </div>
                                <p class="card-text text-muted"><span class="h4 text-primary">$121</span> per night</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- place item-->
                <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
                    <div class="card h-100 border-0 shadow">
                        <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="Modern Apt - Vibrant Neighborhood!"/><a class="tile-link" href="detail-rooms.html"></a>
                            <div class="card-img-overlay-bottom z-index-20">
                                <div class="d-flex text-white text-sm align-items-center"><img class="avatar avatar-border-white flex-shrink-0 me-2" src="img/avatar/avatar-8.jpg" alt="Julie"/>
                                    <div>Julie</div>
                                </div>
                            </div>
                            <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                                <svg class="svg-icon text-white">
                                    <use xlink:href="#heart-1"> </use>
                                </svg></a></div>
                        </div>
                        <div class="card-body d-flex align-items-center">
                            <div class="w-100">
                                <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Modern Apt - Vibrant Neighborhood!</a></h6>
                                <div class="d-flex card-subtitle mb-3">
                                    <p class="flex-grow-1 mb-0 text-muted text-sm">Entire apartment</p>
                                    <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i><i class="fa fa-star text-gray-300">                                  </i>
                                    </p>
                                </div>
                                <p class="card-text text-muted"><span class="h4 text-primary">$75</span> per night</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- place item-->
                <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e3503eb77d487e8082">
                    <div class="card h-100 border-0 shadow">
                        <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="/img/photo/photo-1494526585095-c41746248156.jpg" alt="Sunny Private Studio-Apartment"/><a class="tile-link" href="detail-rooms.html"></a>
                            <div class="card-img-overlay-bottom z-index-20">
                                <div class="d-flex text-white text-sm align-items-center"><img class="avatar avatar-border-white flex-shrink-0 me-2" src="img/avatar/avatar-9.jpg" alt="Barbora"/>
                                    <div>Barbora</div>
                                </div>
                            </div>
                            <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                                <svg class="svg-icon text-white">
                                    <use xlink:href="#heart-1"> </use>
                                </svg></a></div>
                        </div>
                        <div class="card-body d-flex align-items-center">
                            <div class="w-100">
                                <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Sunny Private Studio-Apartment</a></h6>
                                <div class="d-flex card-subtitle mb-3">
                                    <p class="flex-grow-1 mb-0 text-muted text-sm">Shared room</p>
                                    <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                                    </p>
                                </div>
                                <p class="card-text text-muted"><span class="h4 text-primary">$93</span> per night</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- place item-->
                <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e39aa2eed0626e485d">
                    <div class="card h-100 border-0 shadow">
                        <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="Mid-Century Modern Garden Paradise"/><a class="tile-link" href="detail-rooms.html"></a>
                            <div class="card-img-overlay-bottom z-index-20">
                                <div class="d-flex text-white text-sm align-items-center"><img class="avatar avatar-border-white flex-shrink-0 me-2" src="img/avatar/avatar-10.jpg" alt="Jack"/>
                                    <div>Jack</div>
                                </div>
                            </div>
                            <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                                <svg class="svg-icon text-white">
                                    <use xlink:href="#heart-1"> </use>
                                </svg></a></div>
                        </div>
                        <div class="card-body d-flex align-items-center">
                            <div class="w-100">
                                <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Mid-Century Modern Garden Paradise</a></h6>
                                <div class="d-flex card-subtitle mb-3">
                                    <p class="flex-grow-1 mb-0 text-muted text-sm">Entire house</p>
                                    <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                                    </p>
                                </div>
                                <p class="card-text text-muted"><span class="h4 text-primary">$115</span> per night</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- place item-->
                <div class="col-sm-6 mb-5 hover-animate" data-marker-id="59c0c8e39aa2edasd626e485d">
                    <div class="card h-100 border-0 shadow">
                        <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="Brooklyn Life, Easy to Manhattan"/><a class="tile-link" href="detail-rooms.html"></a>
                            <div class="card-img-overlay-bottom z-index-20">
                                <div class="d-flex text-white text-sm align-items-center"><img class="avatar avatar-border-white flex-shrink-0 me-2" src="img/avatar/avatar-11.jpg" alt="Stuart"/>
                                    <div>Stuart</div>
                                </div>
                            </div>
                            <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                                <svg class="svg-icon text-white">
                                    <use xlink:href="#heart-1"> </use>
                                </svg></a></div>
                        </div>
                        <div class="card-body d-flex align-items-center">
                            <div class="w-100">
                                <h6 class="card-title"><a class="text-decoration-none text-dark" href="/detail-rooms.html">Brooklyn Life, Easy to Manhattan</a></h6>
                                <div class="d-flex card-subtitle mb-3">
                                    <p class="flex-grow-1 mb-0 text-muted text-sm">Private room</p>
                                    <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                                    </p>
                                </div>
                                <p class="card-text text-muted"><span class="h4 text-primary">$123</span> per night</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Pagination -->
            <nav aria-label="Page navigation example">
                <ul class="pagination pagination-template d-flex justify-content-center">
                    <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-left"></i></a></li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-right"></i></a></li>
                </ul>
            </nav>
        </div>
        <div class="col-lg-6 map-side-lg pe-lg-0">
            <div class="map-full shadow-left" id="categorySideMap"></div>
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
<script src="/js/map-layers.js"> </script>
<script src="/js/map-category.js">                               </script>
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
<script src="js/datepicker-category.js"> </script>
<!-- Price Slider-->
<script src="vendor/nouislider/nouislider.min.js"></script>
<script>
    var snapSlider = document.getElementById('slider-snap');

    noUiSlider.create(snapSlider, {
        start: [ 40, 110 ],
        snap: false,
        connect: true,
        step: 1,
        range: {
            'min': 40,
            'max': 110
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
        snapValues[handle].innerHTML = values[handle];
        inputValues[handle].value = values[handle];
    })
</script>
</body>
</html>