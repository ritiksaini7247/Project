<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from jthemes.net/themes/html/quizo/version-6/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 10 Apr 2022 14:54:27 GMT -->
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Quizo HTML Template - V.6</title>
   <!-- FontAwesome-cdn include -->
   <link rel="stylesheet" href="../../../../../cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
   <!-- Google fonts include -->
   <link href="https://fonts.googleapis.com/css2?family=Jost:wght@400;500;600;700;800;900&amp;family=Poppins:wght@700;800&amp;display=swap" rel="stylesheet">
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
            <div class="col-sm-6">
               <div class="logo_area pt-5 ps-5">
                  <a href="index.html">
                     <img src="assets/images/logo/logo.png" alt="image-not-found">
                  </a>
               </div>
            </div>
            <div class="col-sm-6 d-none d-sm-block">
               <div class="count_box d-flex float-end pt-5 pe-5">
                  <div class="count_clock countdown_timer d-flex align-items-center pe-5 me-3" data-countdown="2022/10/24">
                  </div>
                  <!-- <div id="countdown"></div> -->
                  <!-- Step Progress bar -->
                  <div class="count_progress clip-1">
                     <span class="progress-left">
                        <span class="progress_bar"></span>
                     </span>
                     <span class="progress-right">
                        <span class="progress_bar"></span>
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
         <form class="multisteps_form bg-white position-relative overflow-hidden" id="wizard" method="get" action="handler">
            <!------------------------- Step-1 ----------------------------->
            <div class="multisteps_form_panel step">
               <div class="question_title text-center text-uppercase">
                  <h1 class="animate__animated animate__fadeInRight animate_25ms">What kind of services you are quiz?</h1>
               </div>
               <div class="question_number text-center text-uppercase text-white">
                  <span class="rounded-pill">Question 1 to 5</span>
               </div>
               <div class="row pt-5 mt-4 form_items">
                  <div class="col-6">
                     <ul class="list-unstyled p-0">
                        <li class="active step_1 animate__animated animate__fadeInRight animate_50ms">
                           <input id="opt_1" type="radio" name="stp_1_select_option" value="Well organized and Easy">
                           <label for="opt_1">Well organized and Easy</label>
                        </li>
                     </ul>
                  </div>
                  <div class="col-6">
                     <ul class="list-unstyled p-0">
                        <li class="step_1 animate__animated animate__fadeInRight animate_100ms">
                           <input id="opt_2" type="radio" name="stp_1_select_option" value="Transition Between Two">
                           <label for="opt_2">Transition Between Two</label>
                        </li>
                     </ul>
                  </div>
                  <div class="col-6">
                     <ul class="list-unstyled p-0">
                        <li class="step_1 animate__animated animate__fadeInRight animate_150ms">
                           <input id="opt_3" type="radio" name="stp_1_select_option" value="Transitions are Shown">
                           <label for="opt_3">Transitions are Shown</label>
                        </li>
                     </ul>
                  </div>
                  <div class="col-6">
                     <ul class="list-unstyled p-0">
                        <li class="step_1 animate__animated animate__fadeInRight animate_200ms">
                           <input id="opt_4" type="radio" name="stp_1_select_option" value="Generate a nice Color">
                           <label for="opt_4">Generate a nice Color</label>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
         
            <!---------- Form Button ---------->
            <div class="form_btn">
               <button type="button" class="prev_btn position-absolute text-uppercase border-0" id="prevBtn" onclick="nextPrev(-1)"> <span><i class="fas fa-arrow-left"></i></span> Back</button>
               <button type="button" class="next_btn rounded-pill position-absolute text-uppercase text-white" id="nextBtn" onclick="nextPrev(1)">Next</button>
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

<!-- Mirrored from jthemes.net/themes/html/quizo/version-6/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 10 Apr 2022 14:54:33 GMT -->
</html>