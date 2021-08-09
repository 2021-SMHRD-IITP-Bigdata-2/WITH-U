<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/my_board.css"/>
    <link rel="stylesheet" href="css/sidebar.css"/>
</head>


<body>
    <!-- --------------------------BEGIN HEADER-------------------------------->
    <header id="my_header">
        <div>
            <img id="headerImg" src="images/img1.png"/>
        </div>
        <nav id="header-menu">
            <ul >
                <li class="nav-item"><a href="#profile-post" data-toggle="tab"><br><br>글 보기</a></li>
                <li class="nav-item"><a href="#" data-toggle="tab"><br><br>자가진단 결과</a></li>
                <li class="nav-item"><a href="#" data-toggle="tab"><br><br>필수템 찜 목록</a></li>
            </ul>
        </nav>
    </header>
    <!-- ---------------------------END HEADER--------------------------------->





    <!-- --------------------------BEGIN CONTENT-------------------------------->
    <div id="my_content">
        
        <!-- BEGIN TIMELINE -->
        <ul class="timeline">

            <!--첫번째 글-->
            <li>
            <!-- begin timeline-time -->
            <div class="timeline-time">
                <span class="date">today</span>
                <span class="time">04:20</span>
            </div>
            <!-- end timeline-time -->

            <!-- begin timeline-icon -->
            <div class="timeline-icon">
                <a href="javascript:;">&nbsp;</a>
            </div>
            <!-- end timeline-icon -->

            <!-- begin timeline-body -->
            <div class="timeline-body">
                <div class="timeline-header">
                    <span class="userimage"><img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt=""></span>
                    <span class="username"><a href="javascript:;">Sean Ngu</a> <small></small></span>
                </div>
                <div class="timeline-content">
                    <h1>그날의 이야기를 들은 당신의 생각은?</h1>
                    <img src="">
                    <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc faucibus turpis quis tincidunt luctus.
                        Nam sagittis dui in nunc consequat, in imperdiet nunc sagittis.
                    </p>
                </div>
            </div>
            <!-- end timeline-body -->
            </li>

            <!--두번째 글-->
            <li>
                <!-- begin timeline-time -->
                <div class="timeline-time">
                    <span class="date">today</span>
                    <span class="time">04:20</span>
                </div>
                <!-- end timeline-time -->
    
                <!-- begin timeline-icon -->
                <div class="timeline-icon">
                    <a href="javascript:;">&nbsp;</a>
                </div>
                <!-- end timeline-icon -->
    
                <!-- begin timeline-body -->
                <div class="timeline-body">
                    <div class="timeline-header">
                        <span class="userimage"><img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt=""></span>
                        <span class="username"><a href="javascript:;">Sean Ngu</a> <small></small></span>
                    </div>
                    <div class="timeline-content">
                        <h1>오늘은 소나기가 왕창 내린 날 !</h1>
                        <img class="diaryImg" src="images/diary_img.jpg">
                        <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc faucibus turpis quis tincidunt luctus.
                            Nam sagittis dui in nunc consequat, in imperdiet nunc sagittis.
                        </p>
                    </div>
                </div>
                <!-- end timeline-body -->
            </li>
        </ul>
    </div>
    <!-- ---------------------------END CONTENT--------------------------------->
</body>
</html>