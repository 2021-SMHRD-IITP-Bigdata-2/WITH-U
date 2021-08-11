<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/join.css">
</head>
<body>
	<div class="join">
		<table class="joinTable">
			<tr>
				<td>
					<div class="joinTitle">
						<h1>WITH U</h1>
						<div class="joinSub">
							<span>����� �̾߱⸦ �������� �����Ϸ��� <br> �����ϼ���.</span>
						</div>
					</div>
				</td>
			</tr>
		</table>
		<form action="JoinCon" method="post">
			<div class="inputForm">
				<input type="text" class="id" name="id" placeholder="���̵�">
				<input type="password" class="pw" name="pw" placeholder="��й�ȣ">
				<input type="text" class="nick" name="nick" placeholder="�г���">
				<input type="text" class="name" name="name" placeholder="�̸�">
				<input type="text" class="tel" name="tel" placeholder="��ȭ��ȣ">
				<button type="submit" class="joinBtn"> <a class= "joinHref1"  href="Main.jsp"> ���� </a> </button>
			</div>
		</form>
		<table class="joinTable">
			<tr>
				<td>
					<div class="joinLog">
						<p class="joinQ">
							������ �����Ű���? <a class="joinHref2" href="Login.jsp" tabindex="0">
								<span class="joinLogin">�α���</span>
							</a>
						</p>
					</div>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>