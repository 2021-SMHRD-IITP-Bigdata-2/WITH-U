<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/Item.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<!-- header include -->
	<%@ include file = "header.jsp" %>
	
	<div class="wrap">
		<div class="container">
			<div class="favorite-container">
				<div class="favorite-title">
					<strong class="selflike">자가격리, 함께하면 좋아요!</strong><br>
					<br> <span class="sublike">자가격리에 필요한 물품 부터, 긴 기간을 심심하지
						않게 해줄 물품들을 소개합니다.<br>
					</span> <span class="sublike">즐겨찾기를 통해 마이페이지에서도 확인할 수 있어요.</span>
				</div>
			</div>
			<!-- 아이템 리스트 표현하는 공간 -->
			<dir class="favorite-item">
				<div class="item-img">
					<p class="pcenter">
						<img class="i-img"
							src="http://image.auction.co.kr/itemimage/1b/a7/00/1ba700e8e6.jpg">
					</p>
				</div>
				<div class="item-name">
					<strong class="i-name">스마트폰 거치대</strong> <br>
					<br> <span class="i-review">격리 중 스마트폰 사용량이 많아지면서 스마트폰을
						더욱 편리하게 볼 수 있어요</span>
				</div>
				<div class="favorite-set">
					<div class="button-container like-container">
						<a class="favorite-a"> <i class="fas fa-star"> Like</i>
						</a>
					</div>
					<div class="button-container dislike-container">
						<a class="favorite-a"> <i class="fas fa-star"> Dislike</i>
						</a>
					</div>
				</div>
			</dir>
			<dir class="favorite-item">
				<div class="item-img">
					<p class="pcenter">
						<img class="i-img"
							src="http://openimage.interpark.com/goods_image_big/0/6/8/3/6751310683_l.jpg">
					</p>
				</div>
				<div class="item-name">
					<strong class="i-name">커플잠옷</strong> <br>
					<br> <span class="i-review">더운 여름 시원한 잠자리</span>
				</div>
				<div class="favorite-set">
					<div class="button-container like-container">
						<a class="favorite-a"> <i class="fas fa-star"> Like</i>
						</a>
					</div>
					<div class="button-container dislike-container">
						<a class="favorite-a"> <i class="fas fa-star"> Dislike</i>
						</a>
					</div>
				</div>
			</dir>
			<!-- 밑줄 여백 공간-->
			<div class="footblank"></div>
		</div>
	</div>
	<!-- ---------------------------BEGIN FOOTER--------------------------------->
	<%@ include file="footer.jsp"%>
	<!-- ---------------------------END FOOTER----------------------------------->
</body>
</html>