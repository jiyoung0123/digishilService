<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>GPT</title>
    <meta content="" name="description">
    <meta content="" name="keywords">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

    <!-- Favicons -->
    <link href="/sales/assets/img/favicon.png" rel="icon">
    <link href="/sales/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->




</head>
<script>

    let chatGPT = {
        progressBar: null,
        init : ()=>{
            $('#chatGPT_btn').click(()=>{
                let message = $('#request').val();
                console.log("clicked");

                // Hide progress bar initially
                chatGPT.hideProgressBar();
                // Hide progress bar initially
                $('.progress').show();
                $.ajax({
                    url:'/chat/gpt/generate',
                    type: 'GET',
                    data: {
                        message: message
                    }
                }).done(
                    (data)=>{
                        console.log("success - Server");
                        chatGPT.display(data);
                    }
                )
                    .fail(
                        ()=>{
                            console.log("failured to contact ChatGPT server");
                        }
                    );
                // Start progress bar animation
                chatGPT.startProgressBar();
            })
        },//chatGPT- init
        display : (data)=>{
            console.log(data);
            //$('#response').val(data); // textArea
            $('#response').text(data);
        },
        hideProgressBar: () => {
            if (chatGPT.progressBar) {
                chatGPT.progressBar.stop().css('width', '0');
            }
        },

        startProgressBar: () => {
            chatGPT.progressBar = $('.progress-bar');
            chatGPT.progressBar.css('width', '0').animate({
                width: '100%'
            }, 10000, () => {
                $('.progress').hide();
            });
        }
    }
    $(()=>{
        // Hide progress bar initially
        $('.progress').hide();
        chatGPT.init();

    });
</script>

<body>



<section class="hero py-6 py-lg-7 text-white dark-overlay"><img class="bg-image" src="img/photo/photo-1522143049013-2519756a52d4.jpg" alt="How can we help you today?">
    <div class="container overlay-content">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb text-white justify-content-center no-border mb-0">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item active">Chat GPT                         </li>
        </ol>
        <h1 class="hero-heading">Chat GPT에게 물어보세요!</h1>
    </div>
</section>
<section class="py-6 bg-gray-100">
    <div class="container">
        <div class="row">
<%--            <div class="input-group">--%>
<%--                <input type="search" id="request" class="form-control rounded" placeholder="어떤 조언이 필요하신가요?" aria-label="Search" aria-describedby="search-addon" />--%>
<%--                <button type="button" id="chatGPT_btn" class="btn btn-outline-success">search</button>--%>
<%--            </div>--%>
<%--            <div class="progress">--%>
<%--                <div class="progress-bar progress-bar-success" role="progressbar"--%>
<%--                     aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:0%">--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div>--%>
<%--                <h4>Advice</h4>--%>

<%--                <textarea name="response" class="form-control" id="response" rows="15" readonly></textarea>--%>
<%--            </div>--%>



            <div class="col-md-4 mb-5 mb-md-0">
                    <div class="controls">

                        <div class="mb-4">
                            <div class="input-group">
                                <input type="search" id="request" class="form-control rounded" placeholder=" 어떤 조언이 필요하신가요?" aria-label="Search" aria-describedby="search-addon" />
                                <button type="button" id="chatGPT_btn" class="btn btn-outline-success">search</button>
                            </div>
<%--                            <input type="search" id="request" class="form-control rounded" placeholder="${loginhost.hostName}님. 어떤 조언이 필요하신가요?" aria-label="Search" aria-describedby="search-addon" />--%>
                            <div class="progress">
                                <div class="progress-bar progress-bar-success" role="progressbar"
                                     aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:0%">
                                </div>
                            </div>
                        </div>

                    </div>

            </div>
            <div class="col-md-8">
                <div class="ps-lg-4 text-sm">
                    <p name="response"  id="response" rows="15"</p>
                </div>
            </div>
        </div>
    </div>
</section>



</body>
</html>