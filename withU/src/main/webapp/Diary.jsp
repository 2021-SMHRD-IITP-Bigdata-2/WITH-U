<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/diary.css">
    <link rel="stylesheet" href="css/head.css">
	<link rel="stylesheet" href="css/foot.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

	<!-- ---------------------------BEGIN HEADER--------------------------------->
    <div class="header">
        <div class="wrapper">
            <a class = "logoA" href="#"><h1 class="logo">WITH U</h1></a>
            <div class="menu">
                <ul class="nav">
                    <li class="navli"><a href="Main.jsp"><img class="profile" src="images/profile1.jpg" alt=""></a></li>
                </ul>
            </div>
        </div>
    </div>
	<!-- ---------------------------END HEADER----------------------------------->
	
	<!-- ---------------------------BEGIN CONTENT----------------------------------->
    <div class="container">
        <div class="diary">
            <div class="title">
                <input class = "titleIn" type="text" placeholder="제목을 입력해주세요">
            </div>
            <div class="divphoto">
                <input class="image_file" type="file" accept="image/*" id="real-input" onchange="setThumbnail(event);">
                <button class="browse_btn">
                    <i class="far fa-image" id="imgicon"></i>
                    <span class="photo">사진을 추가하세요</span>
                </button>
                <div id="image_container">
                    <p class="imgcenter"><img class="imgsize" src="images/preview.png" id="img_section"></p>
                </div>
            </div>
            <div class="textbox">
                <div class="text">
                    <p class="textp"><textarea class = "textbox" name="textbox" cols="100" rows="20" placeholder="글을 작성하는 공간입니다."></textarea></p>
                </div>
            <div class="btn">
                <input class ="radio" type="radio" name="private" value="공개"><label>공개</label>
                <input class ="radio" type="radio" name="private" value="비공개"><label>비공개</label>
                <button type="submit" class="save"><a class= "btnhref" href="main_fin.html">저장하기</a></button>
                <button type="submit" class="back"><a class= "btnhref" href="main_fin.html">돌아가기</a></button>
            </div>
            </div>
        </div>
    </div>
    <!-- ---------------------------END CONTENT----------------------------------->
    
    
	<!-- ---------------------------BEGIN FOOTER--------------------------------->
	<div class="footer">
		<div class="table">
			<table class="footTable">
				<tr class="foottr">
					<td class="leftblank"></td>
					<td class="star"><a class=fhref href=""> <i id="icon"
							class="fas fa-star"></i> <br>
							<p class="font">ITEM</p>

					</a></td>
					<td class="diary"><a class=fhref href=""> <i id="icon"
							class="fas fa-pencil-alt"></i> <br>
							<p class="font">DIARY</p>
					</a></td>
					<td class="home"><a class=fhref href="#"> <i id="icon"
							class="fas fa-home"></i> <br>
							<p class="font">HOME</p>
					</a></td>
					<td class="test"><a class=fhref href=""> <i id="icon"
							class="fas fa-clipboard-list"></i> <br>
							<p class="font">TEST</p>
					</a></td>
					<td class="mypage"><a class=fhref href="sidebar_fin.html">
							<i id="icon" class="far fa-laugh-wink"></i> <br>
							<p class="font">MYPAGE</p>
					</a></td>
					<td class="rightblank"></td>
				</tr>
			</table>
		</div>
	</div>
	<!-- ---------------------------END FOOTER----------------------------------->
	
	
	
    <script src="js/image.js"></script>
</body>
</html>