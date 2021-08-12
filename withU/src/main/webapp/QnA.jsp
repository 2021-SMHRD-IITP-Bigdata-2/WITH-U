<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/QnA.css">
</head>
<body>
	<!-- ---------------------------BEGIN HEADER--------------------------------->
	<%@ include file = "header.jsp" %>
	<!-- ---------------------------END HEADER----------------------------------->
	
	<!-- ---------------------------BEGIN CONTENT--------------------------------->
	<div class="container">
		<div class="qcontainer">
			<div class="question">
				<strong><span class="qulist">그날 이야기를 들은 당신의 생각은?</span></strong>
				<div class="qreset">
					<a class="qhref" href=""> <span class="sub">질문바꾸기</span> <i
						id="qicon" class="fas fa-redo"></i>
					</a>
				</div>
				<strong><hr class="underline"></hr></strong>
			</div>
			<div class="text">
				<p class="textp">
					<textarea class="textbox" name="textbox" cols="90" rows="20"
						placeholder="질문에 답해주세요!"></textarea>
				</p>
			</div>
			<div class="btn">
				<input class="radio" type="radio" name="private" value="공개"><label>공개</label>
				<input class="radio" type="radio" name="private" value="비공개"><label>비공개</label>
				<button type="submit" class="save">
					<a class="btnhref" href="main_fin.html">저장하기</a>
				</button>
				<button type="submit" class="back">
					<a class="btnhref" href="main_fin.html">돌아가기</a>
				</button>
			</div>
		</div>
	</div>
	<!-- contaier end -->
	<!-- ---------------------------END CONTENT--------------------------------->
    
    <!-- ---------------------------BEGIN FOOTER--------------------------------->
    	<%@ include file = "footer.jsp" %>
	<!-- ---------------------------END FOOTER----------------------------------->
</body>
</html>