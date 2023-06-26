<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
  * { padding: 0; margin: 0; }
  canvas { background: #eee; display: block; margin: 0 auto; }
</style>




<!-- Hero Section-->
<section class="hero py-5 py-lg-7">
    <div class="container position-relative">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb ps-0  justify-content-center">
            <li class="breadcrumb-item"><a href="index.html">포인트게임</a></li>
            <li class="breadcrumb-item active">벽돌게임</li>
        </ol>
        <h1 class="hero-heading mb-0">Brick !</h1>
    </div>
</section>
<section class="py-6">
    <div class="container">
        <div class="row">
            <div class="col-xl-8 col-lg-10 mx-auto">
                <div class="text-content">
                    <canvas id="myCanvas" width="480" height="320"></canvas>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    alert("게임 시작 !");

    let canvas = document.getElementById("myCanvas");
    let ctx = canvas.getContext("2d");

    let x = canvas.width/2;
    let y = canvas.height-30;
    let dx = 2;
    let dy = -2;
    // 공의 곡선형
    let ballRadius = 10;
    // 패들 그리기
    let paddleHeight = 10;
    let paddleWidth = 75;
    let paddleX = (canvas.width-paddleWidth)/2;
    // 패들의 움직임 (처음은 눌리지 않은 상태라서 boolean 으로 false)
    let rightPressed = false;
    let leftPressed = false;
    // 벽돌 그리기
    let brickRowCount = 5;
    let brickColumnCount = 3;
    let brickWidth = 75;
    let brickHeight = 20;
    let brickPadding = 10;
    let brickOffsetTop = 30;
    let brickOffsetLeft = 30;
    let bricks = [];
    for(let c=0; c<brickColumnCount; c++) {
        bricks[c] = [];
        for(let r=0; r<brickRowCount; r++) {
            bricks[c][r] = { x: 0, y: 0, status: 1 };
        }
    }
    //스코어
    let score = 0;
    // 생명
    let lives = 3;

    // 방향키 이벤트
    document.addEventListener("keydown", keyDownHandler, false);
    document.addEventListener("keyup", keyUpHandler, false);

    document.addEventListener("mousemove", mouseMoveHandler, false);

    function mouseMoveHandler(e) {
        let relativeX = e.clientX - canvas.offsetLeft;
        if(relativeX > 37.5 && relativeX < canvas.width-37.5) {
            paddleX = relativeX - paddleWidth/2;
        }
    }

    function keyDownHandler(e) {
        if(e.keyCode == 39) {
            rightPressed = true;
        }
        else if(e.keyCode == 37) {
            leftPressed = true;
        }
    }
    function keyUpHandler(e) {
        if(e.keyCode == 39) {
            rightPressed = false;
        }
        else if(e.keyCode == 37) {
            leftPressed = false;
        }
    }
    // 벽돌 부딪히기(충돌감지)
    function collisionDetection() {
        for(let c=0; c<brickColumnCount; c++) {
            for(let r=0; r<brickRowCount; r++) {
                let b = bricks[c][r];
                if(b.status == 1) {
                    if(x > b.x && x < b.x+brickWidth && y > b.y && y < b.y+brickHeight) {
                        dy = -dy;
                        b.status = 0;
                        score++;
                        if(score == brickRowCount*brickColumnCount){
                            alert("YOU WIN, Congratulations!");
                            document.location.reload();
                        }
                    }
                }

            }
        }
    }
    // 스코어 그리기
    function drawScore() {
        ctx.font = "16px Arial";
        ctx.fillStyle = "black";
        ctx.fillText("Score: "+score, 8, 20);
    }
    //생명 그리기
    function drawLives() {
        ctx.font = "16px Arial";
        ctx.fillStyle = "black";
        ctx.fillText("Lives: "+lives, canvas.width-65, 20);
    }


    // 공 그리기
    function drawBall() {
        ctx.beginPath();
        ctx.arc(x, y, ballRadius, 0, Math.PI*2);
        ctx.fillStyle = "red";
        ctx.fill();
        ctx.closePath();
    }
    // 패들 그리기
    function drawPaddle() {
        ctx.beginPath();
        ctx.rect(paddleX, canvas.height-paddleHeight, paddleWidth, paddleHeight);
        ctx.fillStyle = "black";
        ctx.fill();
        ctx.closePath();
    }

    function drawBricks() {
        for(let c=0; c<brickColumnCount; c++) {
            for(let r=0; r<brickRowCount; r++) {
                if(bricks[c][r].status == 1) {
                    let brickX = (r*(brickWidth+brickPadding))+brickOffsetLeft;
                    let brickY = (c*(brickHeight+brickPadding))+brickOffsetTop;
                    bricks[c][r].x = brickX;
                    bricks[c][r].y = brickY;
                    ctx.beginPath();
                    ctx.rect(brickX, brickY, brickWidth, brickHeight);
                    ctx.fillStyle = "rgb(77,102,247)";
                    ctx.fill();
                    ctx.closePath();
                }
            }
        }
    }

    function draw() {
        ctx.clearRect(0, 0, canvas.width, canvas.height);
        drawBricks();
        drawBall();
        drawPaddle();
        drawScore();
        drawLives();
        collisionDetection();
        x += dx;
        y += dy;
        //공이 벽에 부딪히면 튀기기
        if(x + dx > canvas.width-ballRadius || x + dx < ballRadius) {
            dx = -dx;
        }
        if(y + dy < ballRadius) {
            dy = -dy;
        } else if(y + dy > canvas.height-ballRadius) {
            if(x > paddleX && x < paddleX + paddleWidth) {
                dy = -dy;
            }
            else {
                lives--;
                if(!lives) {
                    alert("GAME OVER");
                    document.location.reload();
                }else{
                    alert("천천히 해");
                    x = canvas.width/2;
                    y = canvas.height-30;
                    dx = 2;
                    dy = -2;
                    paddleX = (canvas.width-paddleWidth)/2;
                }
            }
        }
        // 패들 방향키로 움직이기
        if(rightPressed && paddleX < canvas.width-paddleWidth) {
            paddleX += 7;
        }
        else if(leftPressed && paddleX > 0) {
            paddleX -= 7;
        }
        x+=dx;
        y+=dy;
        requestAnimationFrame(draw);
    }

    // 10 밀리세컨드마다 그리기
    draw();
</script>
