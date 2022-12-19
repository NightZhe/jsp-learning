<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="./css/main.css">
<script src="./js/main.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<!-- google enter -->
<script src="https://apis.google.com/js/platform.js" async defer></script>

<meta name="google-signin-client_id"
	content="750954315629-9fc9be4sabpcbtkfofe4c0eg3co6bh46.apps.googleusercontent.com">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://accounts.google.com/gsi/client" async defer></script>
<script src="./js/google_login.js"></script>

</head>

<body>

	<div class="header">
		<nav class="navbar navbar-expand-lg bg-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="index.jsp"><img
					src="./css/img/LAZY.jpeg" alt=""></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="index.jsp">LAZY HOME</a></li>

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Drink </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">50嵐</a></li>
								<li><a class="dropdown-item" href="#">五桐號</a></li>
								<li><a class="dropdown-item" href="#">迷客夏</a></li>
							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> 咖啡 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">星巴克</a></li>
								<li><a class="dropdown-item" href="#">路易莎</a></li>
								<li><a class="dropdown-item" href="#">Simple Kaffa</a></li>
							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> 餐廳 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">鼎泰豐</a></li>
								<li><a class="dropdown-item" href="#">隨意鳥地方</a></li>
								<li><a class="dropdown-item" href="#">DA ANTONIO</a></li>
							</ul></li>

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> 旅館 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">W hotel</a></li>
								<li><a class="dropdown-item" href="#">香格里拉</a></li>
								<li><a class="dropdown-item" href="#">君悅 </a></li>
							</ul></li>

						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/index.html">聊天室</a></li>



						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="./car.jsp">購物車</a></li>
					</ul>

					<button type="button" data-bs-toggle="modal"
						data-bs-target="#exampleModal" data-bs-whatever="@mdo"
						class="btn btn-outline-dark" style="margin-right: 1em;">登入/註冊
					</button>

					<a href="login.html"><button class="btn btn-outline-success"
							type="submit">登出</button></a>

				</div>
			</div>
		</nav>
	</div>
	<!-- data-callback="handleCallback" -->
	<!-- google登入 -->
<!-- 	<div id="g_id_onload"></div>
	<div class=" g_id_signin" data-type="standard" data-size="large"
		data-theme="outline" data-text="sign_in_with" data-shape="pill"
		data-logo_alignment="left"></div> -->




	<!-- 輪播圖 -->
	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="true">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="3" aria-label="Slide 4"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="5000">
				<img src="./css/img/50-01.jpeg" class="d-block w-100 h-50" alt="...">
			</div>
			<div class="carousel-item">
				<img src="./css/img/50-02.jpg" class="d-block w-100 h-50" alt="...">
			</div>
			<div class="carousel-item">
				<img src="./css/img/Woo-01.jpeg" class="d-block w-100 h-50"
					alt="...">
			</div>
			<div class="carousel-item">
				<img src="./css/img/milk01.jpeg" class="d-block w-100 h-50"
					alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
<!-- 輪播圖 -->
	</br>
	<div class="container text-center">
		<div class="row g-2">
			<div class="col-6">
				<div class="p-3 border bg-light">Custom column padding</div>
			</div>
			<div class="col-6">
				<div class="p-3 border bg-light">Custom column padding</div>
			</div>
			<div class="col-6">
				<div class="p-3 border bg-light">Custom column padding</div>
			</div>
			<div class="col-6">
				<div class="p-3 border bg-light">Custom column padding</div>
			</div>
		</div>
	</div>

	<div class="container text-left">
		<div class="row">
			<div class="col-3 col-s-3 menu">
				<h2>50嵐 板橋中山二店</h2>
				<div class="list-group">
					<button type="button"
						class="list-group-item list-group-item-action active">
						您專屬的推薦產品</button>
					<button type="button"
						class="list-group-item list-group-item-action">注意事項</button>
					<button type="button"
						class="list-group-item list-group-item-action">人氣精選popular
						items</button>
					<button type="button"
						class="list-group-item list-group-item-action">找好茶 Tea</button>
					<button type="button"
						class="list-group-item list-group-item-action">找奶茶 Milk
						Tez</button>
				</div>
			</div>
			<div class="col-8 col-s-5">
				<div class="card" style="width: 18rem;">
					<img src="./css/img/blacktealatte.jpg" class="card-img-top"
						alt="Drink">
					<div class="card-body">
						<h5 class="card-title">紅茶拿鐵 Black Milk Tea</h5>
						<p class="card-text">$60</p>
						<a href="./chose.jsp" class="btn btn-dark">加入購物車</a>
					</div>
				</div>
			</div>




			<div class="row">
				<div class="col-sm-6">
					<div class="card" style="width: 18rem">
						<div class="card-body">
							<img src="./css/img/blacktealatte.jpg" class="card-img-top"
								alt="Drink">
							<p class="card-text">
								<font style="vertical-align: inherit;"><font
									style="vertical-align: inherit;">下面的支持文本作為附加內容的自然引導。</font></font>
							</p>
							<a href="#" class="btn btn-primary"><font
								style="vertical-align: inherit;"><font
									style="vertical-align: inherit;">去一個地方</font></font></a>
						</div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">
								<font style="vertical-align: inherit;"><font
									style="vertical-align: inherit;">特殊職稱處理</font></font>
							</h5>
							<p class="card-text">
								<font style="vertical-align: inherit;"><font
									style="vertical-align: inherit;">下面的支持文本作為附加內容的自然引導。</font></font>
							</p>
							<a href="#" class="btn btn-primary"><font
								style="vertical-align: inherit;"><font
									style="vertical-align: inherit;">去一個地方</font></font></a>
						</div>
					</div>
				</div>
			</div>


			<div class="col-3 col-s-12">
				<div class="aside">
					<h2>What?</h2>
					<p>Chania is a city on the island of Crete.</p>
					<h2>Where?</h2>
					<p>Crete is a Greek island in the Mediterranean Sea.</p>
					<h2>How?</h2>
					<p>You can reach Chania airport from all over Europe.</p>
				</div>
			</div>
			-->


			<div class="footer">
				<div class="container">
					<footer class="py-3 my-4">
						<ul class="nav justify-content-center border-bottom pb-3 mb-3">
							<li class="nav-item"><a href="#"
								class="nav-link px-2 text-muted">Home</a></li>
							<li class="nav-item"><a href="#"
								class="nav-link px-2 text-muted">Features</a></li>
							<li class="nav-item"><a href="#"
								class="nav-link px-2 text-muted">Pricing</a></li>
							<li class="nav-item"><a href="#"
								class="nav-link px-2 text-muted">FAQs</a></li>
							<li class="nav-item"><a href="#"
								class="nav-link px-2 text-muted">About</a></li>
						</ul>
						<p class="text-center text-muted">&copy; 2022 Company, Inc</p>
					</footer>
				</div>
			</div>



			<!-- 		<div id="demo">1111</div>
		<button id=bt01 onclick="test()">click me</button>
		<h2>關聯性下拉式選單</h2>
		<hr>
		<select id="country">
			<option selected="selected">請選擇</option>
		</select> <select id="city">
			<option value="">請至左方選取城市</option>

		</select>

		<script>
            $(document).ready(function () {
                $.ajax(
                    {
                        url: "TwCities.json", type: "GET", dataType: "json",
                        success: function (result) {
                            JSON.stringify(result); // 序列化成 JSON 字串
                            for (i = 0; i < result.length; i++) {
                                $('#country').append("<option>" + result[i].name + "</option>")
                            }
                            $('#country').on('change', function () {
                                var selectElem = document.getElementById('country')
                                var index = (selectElem.selectedIndex) - 1;
                                if (index == (-1)) {
                                    $('#city').html('<option>請至左方選取城市</option>');
                                } else {
                                    $('#city').empty();
                                    for (j = 0; j < (result[index].districts.length); j++) {
                                        $('#city').append("<option>" + (result[index].districts[j].name) + "</option>")
                                    }
                                }
                            })
                        }
                    })
            })

        </script> -->

			<!-- 註冊登入彈跳視窗 -->
			<div class="modal fade" id="exampleModal" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true"
				style="display: none;">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h1 class="modal-title fs-5" id="exampleModalLabel">
								<font style="vertical-align: inherit;"> <font
									style="vertical-align: inherit;">登入/註冊</font>
								</font>
							</h1>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="關"></button>
						</div>
						<div class="modal-body">
							<form action=LoginController method="post">
								<div class="mb-3">
									<label for="recipient-name" class="col-form-label"> <font
										style="vertical-align: inherit;"> <font
											style="vertical-align: inherit;">請輸入你的Email：</font>
									</font>
									</label> <input type="text" class="form-control" id="recipient-name"
										name="email"> <label for="recipient-name"
										class="col-form-label"> <font
										style="vertical-align: inherit;">請輸入你的密碼：</font>
									</label> <input type="text" class="form-control" id="recipient-name"
										name="passwd">


								</div>
								<div class="mb-3">
									<label for="message-text" class="col-form-label"> <font
										style="vertical-align: inherit;"> <font
											style="vertical-align: inherit;">用以下帳號繼續</font>
									</font>
									</label> </br>
									<!-- google enter -->
									<script src="https://accounts.google.com/gsi/client" async
										defer></script>
									<div id="g_id_onload"
										data-client_id="750954315629-9fc9be4sabpcbtkfofe4c0eg3co6bh46.apps.googleusercontent.com"
										data-callback="handleCredentialResponse"></div>
									<div class="g_id_signin" data-type="standard"></div>

								</div>
								<div class="mx-auto">
									<div class="modal-footer">
										<button type="submit" class="btn btn-primary"
											data-bs-dismiss="modal">
											<font style="vertical-align: inherit;"> <font
												style="vertical-align: inherit;">登入</font>
											</font>
										</button>
										<button type="submit" class="btn btn-primary">
											<font style="vertical-align: inherit;"> <font
												style="vertical-align: inherit;">註冊</font>
											</font>
										</button>
							</form>
						</div>
					</div>

				</div>
			</div>

		</div>
	</div>
</body>

</html>