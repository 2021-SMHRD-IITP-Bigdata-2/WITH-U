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
					<strong class="selflike">�ڰ��ݸ�, �Բ��ϸ� ���ƿ�!</strong><br>
					<br> <span class="sublike">�ڰ��ݸ��� �ʿ��� ��ǰ ����, �� �Ⱓ�� �ɽ�����
						�ʰ� ���� ��ǰ���� �Ұ��մϴ�.<br>
					</span> <span class="sublike">���ã�⸦ ���� ���������������� Ȯ���� �� �־��.</span>
				</div>
			</div>
			<!-- ������ ����Ʈ ǥ���ϴ� ���� -->
			<dir class="favorite-item">
				<div class="item-img">
					<p class="pcenter">
						<img class="i-img"
							src="http://image.auction.co.kr/itemimage/1b/a7/00/1ba700e8e6.jpg">
					</p>
				</div>
				<div class="item-name">
					<strong class="i-name">����Ʈ�� ��ġ��</strong> <br>
					<br> <span class="i-review">�ݸ� �� ����Ʈ�� ��뷮�� �������鼭 ����Ʈ����
						���� ���ϰ� �� �� �־��</span>
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
					<strong class="i-name">Ŀ�����</strong> <br>
					<br> <span class="i-review">���� ���� �ÿ��� ���ڸ�</span>
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
			<!-- ���� ���� ����-->
			<div class="footblank"></div>
		</div>
	</div>
	<!-- ---------------------------BEGIN FOOTER--------------------------------->
	<%@ include file="footer.jsp"%>
	<!-- ---------------------------END FOOTER----------------------------------->
</body>
</html>