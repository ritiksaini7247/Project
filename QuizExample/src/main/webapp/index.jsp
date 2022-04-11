<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Quizo HTML Template - V.6</title>
<!-- FontAwesome-cdn include -->
<link rel="stylesheet"
	href="../../../../../cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<!-- Google fonts include -->
<link
	href="https://fonts.googleapis.com/css2?family=Jost:wght@400;500;600;700;800;900&amp;family=Poppins:wght@700;800&amp;display=swap"
	rel="stylesheet">
<!-- Bootstrap-css include -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<!-- Animate-css include -->
<link rel="stylesheet" href="assets/css/animate.min.css">
<!-- Main-StyleSheet include -->
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
	<div class="wrapper overflow-hidden">
		<!-- Top content -->
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-6"></div>
				<div class="col-sm-6 d-none d-sm-block">
					<div class="count_box d-flex float-end pt-5 pe-5">
						<!-- <div
							class="count_clock countdown_timer d-flex align-items-center pe-5 me-3"
							data-countdown="2022/10/24"></div> -->
						<!-- <div id="countdown"></div> -->
						<!-- Step Progress bar -->
						<div class="count_progress clip-1">
							<span class="progress-left"> <span class="progress_bar"></span>
							</span> <span class="progress-right"> <span class="progress_bar"></span>
							</span>
							<div class="progress-value">
								<div id="value">100%</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<form class="bg-white position-relative overflow-hidden" method="get"
				action="handler">
				<!------------------------- Step-1 ----------------------------->

				<%
				int j = 1;
				for (int i = 1; i <= 5; i++) {
				%>

				<div class="question_title text-center text-uppercase">
					<h1 class="animate__animated animate__fadeInRight animate_25ms">What
						kind of services you are quiz?</h1>
				</div>
				<div class="question_number text-center text-uppercase text-white">
					<span class="rounded-pill">Question 1 to <%=i%></span>
				</div>
				<div class="row pt-5 mt-4 form_items">
					<div class="col-6">
						<ul class="list-unstyled p-0">
							<li class=" animate__animated animate__fadeInRight animate_50ms">
								<input id="opt_<%=j%>" type="radio" value="ans1"
								name="stp_<%=i%>_select_option"> <label for="opt_<%=j%>">Ans1</label>
							</li>
						</ul>
					</div>
					<div class="col-6">
						<ul class="list-unstyled p-0">
							<li class="animate__animated animate__fadeInRight animate_100ms">
								<input id="opt_<%=(j + 1)%>" type="radio" value="ans2"
								name="stp_<%=i%>_select_option"> <label
								for="opt_<%=(j + 1)%>">Ans2</label>
							</li>
						</ul>
					</div>
					<div class="col-6">
						<ul class="list-unstyled p-0">
							<li class=" animate__animated animate__fadeInRight animate_150ms">
								<input id="opt_<%=(j + 2)%>" type="radio" value="ans3"
								name="stp_<%=i%>_select_option"> <label for="opt_<%=(j + 2)%>">Ans3</label>
							</li>
						</ul>
					</div>
					<div class="col-6">
						<ul class="list-unstyled p-0">
							<li class=" animate__animated animate__fadeInRight animate_200ms">
								<input id="opt_<%=(j + 3)%>" type="radio" value="ans4"
								name="stp_<%=i%>_select_option"> <label for="opt_<%=(j + 3)%>">Ans4</label>
							</li>
						</ul>
					</div>
					<%
					j += 4;
					%>
				</div>
				<%
				}
				%>


				<!---------- Form Button ---------->
				<div class="form_btn">

					<button type="submit"
						class="next_btn rounded-pill position-absolute text-uppercase text-white"
						id="nextBtn">Next</button>


				</div>
			</form>
		</div>
	</div>
	<!-- jQuery-js include -->
	<script src="assets/js/jquery-3.6.0.min.js"></script>
	<!-- Bootstrap-js include -->
	<script src="assets/js/bootstrap.min.js"></script>
	<!-- jQuery-counter-up-js include -->
	<script src="assets/js/countdown.js"></script>
	<!-- jQuery-validate-js include -->
	<script src="assets/js/jquery.validate.min.js"></script>
	<!-- Custom-js include -->
	<script src="assets/js/script.js"></script>
</body>

</html>