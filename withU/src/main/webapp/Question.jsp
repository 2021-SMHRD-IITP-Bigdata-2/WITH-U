<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/question.css">
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
	
	
	
	<!-- ---------------------------BEGIN CONTENT--------------------------------->
    <div class="container">
        <div class="qcontainer">
            <div class="question">
                <strong><span class="qulist">그날 이야기를 들은 당신의 생각은?</span></strong>
                <a class = "href" href="">
                    <span class="sub">질문바꾸기</span>
                    <i id = "icon" class="fas fa-redo"></i>
                </a>
                <strong><hr class="underline"></hr></strong>
            </div>
            <div class="text">
                <p class="textp"><textarea class = "textbox" name="textbox" cols="100" rows="40"></textarea></p>
            </div>
            <div class="btn">
                <input class ="radio" type="radio" name="private" value="공개"><label>공개</label>
                <input class ="radio" type="radio" name="private" value="비공개"><label>비공개</label>
                <button type="submit" class="save"><a class= "btnhref" href="main.jsp">저장하기</a></button>
                <button type="submit" class="back"><a class= "btnhref" href="main.jsp">돌아가기</a></button>
            </div>
        </div>
    </div>
    <!-- ---------------------------END CONTENT--------------------------------->
    
    
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
</body>
</html>