<#import "/spring.ftl" as spring />
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="<@spring.url 'views/css/main.css' />" rel="stylesheet">
<link href="<@spring.url 'views/css/util.css' />" rel="stylesheet">
<link href="<@spring.url 'views/css/custom.css' />" rel="stylesheet">
<link href="<@spring.url 'views/fonts/font-awesome-4.7.0/css/font-awesome.min.css' />" rel="stylesheet">
<link href="<@spring.url 'views/vendor/bootstrap/css/bootstrap.min.css' />" rel="stylesheet">
<link href="<@spring.url 'views/vendor/animate/animate.css' />" rel="stylesheet">
<link href="<@spring.url 'views/vendor/css-hamburgers/hamburgers.min.css' />" rel="stylesheet">
<link href="<@spring.url 'views/vendor/animsition/css/animsition.min.css' />" rel="stylesheet">
<link href="<@spring.url 'views/vendor/select2/select2.min.css' />" rel="stylesheet">
<link href="<@spring.url 'views/vendor/daterangepicker/daterangepicker.css' />" rel="stylesheet">


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" rel="stylesheet">

</head>
<body>

		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
				<a class="navbar-brand" href="#">${name.firstName}</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<input type="hidden" value="${name.userid}">
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item active"><a class="nav-link"
							href="UpdateUserProfile">Edit Profile<span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item active"><a class="nav-link"
							href="UserLogout">Logout</a></li>
					</ul>
				</div>
			</nav>

			<div class="limiter">
				<div class="container-login100">
					<div class="wrap-login100">
						<form class="login100-form  p-l-55 p-r-55 p-t-178">
							<span class="login100-form-title"> Welcome ${name.firstName}
							</span>

							<div class="wrap-input100 validate-input m-b-16"
								data-validate="Please enter First Name">
								<input class="input100" type="text" name="firstname"
									id="firstname" value="${name.firstName}" readonly>
								<span id="fnameerror" style="color: red"></span>
							</div>

							<div class="wrap-input100 validate-input m-b-16"
								data-validate="Please enter Last Name">
								<input class="input100" type="text" name="lastname"
									id="lastname" value="${name.lastName}" readonly> <span
									id="lnameerror" style="color: red"></span>
							</div>


							<div class="wrap-input100 validate-input m-b-16"
								data-validate="Please enter username">
								<input class="input100" type="text" name="email" id="email"
									value="${name.email}" readonly> <span
									id="emailerror" style="color: red"></span>
							</div>


							<div class="wrap-input100 validate-input m-b-16"
								data-validate="Please enter phoneno">
								<input class="input100" type="text" name="phoneno" id="phoneno"
									value="${name.phoneNo}" readonly> <span
									id="phoneerror" style="color: red"></span>
							</div>


							<div class="wrap-input100 validate-input m-b-16"
								data-validate="Please enter birthdate">
								<input class="input100" type="date" name="birthdaydate"
									value="${name.dob}" id="birthdaydate" readonly>
							</div>

							<div class="wrap-input100 validate-input m-b-16">
								<label class="m-l-12" for="customer-gender">Gender :-${name.gender}</label>
								
								<!-- 						<label 	for="male" class="gender-size">Male</label> <input class="m-l-4" -->
								<!-- 													type="radio" id="male" name="gender" value="Male"> <br> -->
								<!-- 												<label class="gender-size m-l-85" for="female">Female</label> <input -->
								<!-- 													type="radio" id="female" name="gender" value="Female"> -->
							</div>




							<div class="wrap-input100 validate-input m-b-16"
								data-validate="Please enter phoneno">
								<input type="text" id="sanswer" class="input100" name="sanswer"
									value="${name.securityAnswer}" readonly> <span
									id="serror" style="color: red"></span>
							</div>


							<div class="wrap-input100 validate-input m-b-16"
								data-validate="Please enter password">
								<input class="input100" type="password" name="password"
									id="password" value="${name.password }" readonly>
								<span id="perror" style="color: red"></span>
							</div>

							<div class="wrap-input100 validate-input m-b-16"
								data-validate="Please enter password">
								<input class="input100" type="password" name="cpassword"
									id="cpassword" value="${name.CPassword }" readonly>
								<span id="cperror" style="color: red"></span>
							</div>
						</form>
					</div>
				</div>
			</div>	
	
	<!-- jQuery File -->
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
	<script src="<@spring.url 'views/vendor/jquery/jquery-3.2.1.min.js' />"> </script>
	<script src="<@spring.url 'views/vendor/jquery/formToJson.js' />"> </script>
	<script src="<@spring.url 'views/vendor/animsition/js/animsition.min.js' />"> </script>
	<script src="<@spring.url 'views/vendor/bootstrap/js/popper.js' />"> </script>
	<script src="<@spring.url 'views/vendor/bootstrap/js/bootstrap.min.js' />"> </script>
	<script src="<@spring.url 'views/vendor/select2/select2.min.js' />"> </script>
	<script src="<@spring.url 'views/vendor/daterangepicker/moment.min.js' />"> </script>
	<script src="<@spring.url 'views/vendor/daterangepicker/daterangepicker.js' />"> </script>
	<script src="<@spring.url 'views/vendor/countdowntime/countdowntime.js' />"> </script>
	<script src="<@spring.url 'views/js/cloneData.js' />"> </script>
	<script src="<@spring.url 'views/js/AddressPlugin.js' />"> </script>
	

		<!-- Include the Footer file -->
	<#include "footer.ftl">
</body>

</html>