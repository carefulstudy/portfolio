<?php

session_start();

if(!empty($_POST["send"])){
    $name = $_POST['name'];
    $visitor_email = $_POST['email'];
    $message = $_POST['message'];
    
    $email_form = 'abcs.wastebin@gmail.com';
    
    $email_subject = "New Form Submission";
    
    $email_body = "User Name: $name. \n".
                    "User Email: $visitor_email. \n".
                      "User Message: $message. \n";
    
    $to = "abcs.wastebin@gmail.com"
    
    $headers = "From: $email_form \r\n";
    
    $headers .= "Reply-To: $visitor_email \r\n";
    
    mail($to,$email_subject,$email_body,$headers);
    
    header("Location: index.html");

} else {

}



?>


