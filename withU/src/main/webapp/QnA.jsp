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
				<strong><span class="qulist">�׳� �̾߱⸦ ���� ����� ������?</span></strong>
				<div class="qreset">
					<a class="qhref" href=""> <span class="sub">�����ٲٱ�</span> <i
						id="qicon" class="fas fa-redo"></i>
					</a>
				</div>
				<strong><hr class="underline"></hr></strong>
			</div>
			<div class="text">
				<p class="textp">
					<textarea class="textbox" name="textbox" cols="90" rows="20"
						placeholder="������ �����ּ���!"></textarea>
				</p>
			</div>
			<div class="btn">
				<input class="radio" type="radio" name="private" value="����"><label>����</label>
				<input class="radio" type="radio" name="private" value="�����"><label>�����</label>
				<button type="submit" class="save">
					<a class="btnhref" href="main_fin.html">�����ϱ�</a>
				</button>
				<button type="submit" class="back">
					<a class="btnhref" href="main_fin.html">���ư���</a>
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