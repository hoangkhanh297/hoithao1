<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>ĐĂNG NHẬP</title>
<link href="../vendor/css/login.css" rel="stylesheet" type="text/css" />
</head>

<body class="body" style="background: #b6e0ef">

	<div class="login-page">

		<div class="form" style="min-height: 300px">
			<form class="login-form" action="/login/enter" method="POST">
			</br>	</br> <input type="text" id="username" name="username"
					placeholder="User name" />
				</br>	</br> <input type="password" id="password"
					name="password" placeholder="Password" /> 
				</br> </br>	</br> </br>
				<button style="background: #0087d6;">SIGN IN</button>
				<!--   <p class="message"> <a href="/">Trang chủ</a></p> -->
			</form>
		</div>
	</div>
</body>

</html>