<?php
include_once("sponsor/includes/dbconn.php");
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Sponsors WISE students</title>

    <!-- Bootstrap Core CSS -->
    <link href="student/css/rtl/bootstrap.min.css" rel="stylesheet">
    
    <!-- not use this in ltr -->
    <link href="student/css/rtl/bootstrap.rtl.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="student/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="student/css/plugins/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="student/css/rtl/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="student/css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="student/css/font-awesome/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
 <style>
 .style
 {
    text-align:center;
    margin-top:200px;
    color:white;
    /* border:2px solid #0000FF; */
    font-size:40px;
    border-radius:10px;
    background-color:#0000fF;
    font-family: Georgia, serif;
 }
 body{
     background-image: url(wise12.jpg);
     background-repeat: no-repeat;
     background-size:cover;
     background-position:center;
    }
   

 </style>
</head>
<body>
<center>
<div class="sub">
   
   <h4> Sponsors WISE students</h4>
    </div>
    </center>
    
    <a href="admin/login.php"> تسجيل دخول المسؤول </a>
    
    

<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="style"></h3>
        </div>
    </div>
</div>
    <div class="container">
        <div class="row">
        <?php
if (isset($_POST['login_btn'])) {
    $email=$_POST['email'];
    $pass=$_POST['password'];

    $query="select * from sponsorenew where sponsor_email ='$email' AND sponsor_password='$pass' ";
    $result=mysqli_query($conn , $query);
    $row=mysqli_fetch_assoc($result);
    if (@$row['sponsor_id']) 
{
       $_SESSION['sponsor_id']=$row['sponsor_id'];
       header("location:sponsor/index.php");
    }else {
        echo '<script>alert("خطأ في تسجيل الدخول")</script>';
    }
}

?>

            <div class="col-lg-6">
                <div class="login-panel panel panel-primary">
                    <div class="panel-heading">
                    <h3 class="panel-title" style="text-align:center;">بوابة الكفيل </h3>
                   
                   </div>
                   <div class="panel-body">
                       <form role="form" method="POST" action="">
                           <fieldset>
                               <div class="form-group">
                                   <input class="form-control" placeholder="E-mail" name="email" type="email" autofocus required>
                               </div>
                               <div class="form-group">
                                   <input class="form-control" placeholder="Password" name="password" type="password" value="" required>
                               </div>
                               <div class="checkbox">
                                   <label>
                                   <a href="sponsor/add.php" class="">إنشاء حساب جديد</a>
                                   </label>
                               </div>
                               <button class="btn btn-lg btn-primary btn-block" type="submit" name="login_btn">تسجبل الدخول</button>
                           </fieldset>
                       </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
            <?php

if (isset($_POST['login_btn2'])) {
    $email2=$_POST['email2'];
    $password2=$_POST['password2'];
    $query="select * from signup where university_email='$email2'  AND university_pass='$password2' ";
    $result=mysqli_query($conn,$query);
    $row=mysqli_fetch_assoc($result);
    if (@$row['signup_id']) {
        $_SESSION['signup_id']=$row['signup_id'];
        header("location:student/index.php");
    }else {
        // echo "<div class='alert alert-danger'> error </div>";
        echo '<script>alert("خطأ في تسجيل الدخول")</script>';

    }
}

?>
                <div class="login-panel panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title" style="text-align:center;">   بوابة الطالب </h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" method="post">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="E-mail" name="email2" type="email" autofocus required>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="password2" type="password" value="" required>
                                </div>
                                <div class="checkbox">
                                    
                        <p class="text-secondary"> * الرجاء إدخال الإيميل الجامعي وكلمة السر التي حصلت عليها من الجامعة </p> 
                                
                                    
                                </div>
                               <button class="btn btn-lg btn-primary btn-block" type="submit" name="login_btn2">تسجيل الدخول</button>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery Version 1.11.0 -->
    <script src="student/js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="student/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="student/js/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="student/js/sb-admin-2.js"></script>

</body>

</html>
