<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/head.css">
<link rel="stylesheet" href="css/foot.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
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
				<p class="qulist">그날 이야기를 들은 당신의 생각은?</p>
			</div>
			<div class="btn">
				<table class="btntable">
					<tr>
						<td class="leftblank"></td>
						<td>
							<button type="submit" class="ansbtn">
								<a class="href" href="qustion.html">질문에 답하기</a>
							</button>
						</td>
						<td>
							<button type="submit" class="wrbtn">
								<a class="href" href="">다이어리 쓰기</a>
							</button>
						</td>
						<td class="rightblank"></td>
					</tr>
				</table>
			</div>
		</div>
		<div class="postcontainer">
			<div class="member">
				<img class="memberImg" src="images/profile1.jpg"> <strong
					class="nick">닉네임</strong> <strong class="date">21.08.04
					Wed 16:50</strong>

			</div>
			<div class="board">
				<p class="write">게시글 적은 내용이 나옵니다</p>
			</div>
			<div class="re">
				<div class="rewrite">
					<input class="rewriter" type="text" placeholder="댓글을 입력하세요">
					<button type="submit" class="confirm">
						<a class="href" href="">등록</a>
					</button>
				</div>
				<div class="seere">
					<strong class="renick">닉네임</strong> <strong class="review">이거
						되는거 맞죠?</strong>
					</ul>
				</div>
			</div>
		</div>
		<div class="postcontainer">
			<div class="member">
				<img class="memberImg" src="images/profile1.jpg"> <strong
					class="nick">닉네임</strong> <strong class="date">21.08.04
					Wed 16:50</strong>

			</div>
			<div class="boardimg">
				<p class="imgs">
					<img class="bimg" src="images/rock.png">
				</p>
			</div>
			<div class="board">
				<p class="write">게시글 적은 내용이 나옵니다</p>
			</div>
			<div class="re">
				<div class="rewrite">
					<input class="rewriter" type="text" placeholder="댓글을 입력하세요">
					<button type="submit" class="confirm">
						<a class="href" href="">등록</a>
					</button>
				</div>
				<div class="seere">
					<strong class="renick">닉네임</strong> <strong class="review">이거
						되는거 맞죠?</strong>
					</ul>
				</div>
			</div>
		</div>
		<div class="footblank"></div>
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

</body>
</html>