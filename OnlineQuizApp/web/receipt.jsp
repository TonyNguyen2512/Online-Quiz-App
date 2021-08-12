<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="CSS/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">   
        <!--<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'><link rel="stylesheet" href="./login.css">
        --><link href="CSS/nicepage.css" media="screen" rel="stylesheet" />
        <link href="CSS/Home.css" media="screen" rel="stylesheet" /><script class="u-script" type="text/javascript" src="JS/jquery-1.9.1.min.js" defer=""></script><script class="u-script" type="text/javascript" src="JS/nicepage.js" defer=""></script><meta name="generator" content="Nicepage 3.3.5, nicepage.com">
        <link href="images/MongSinhShop.png" rel="icon" />
        <title>Payment Receipt</title>
        <style type="text/css">
            table { border: 0; }
            table td { padding: 5px; }
        </style>
    </head>
    <body>
        <div align="center">
            <h1>Payment Done. Thank you for purchasing our products</h1>
            <br/>
            <h2>Receipt Details:</h2>
            <table>
                <tr>
                    <td><b>Merchant:</b></td>
                    <td>Company SE151228 Ltd.</td>
                </tr>
                <tr>
                    <td><b>Payer:</b></td>
                    <td>${payer.firstName} ${payer.lastName}</td>		
                </tr>
                <tr>
                    <td><b>Description: Your billing ID</b></td>
                    <td>${transaction.description}</td>
                </tr>	
                <tr>
                    <td><b>Subtotal:</b></td>
                    <td>${transaction.amount.details.subtotal} USD</td>
                </tr>
                <tr>
                    <td><b>Shipping:</b></td>
                    <td>${transaction.amount.details.shipping} USD</td>
                </tr>
                <tr>
                    <td><b>Tax:</b></td>
                    <td>${transaction.amount.details.tax} USD</td>
                </tr>
                <tr>
                    <td><b>Total:</b></td>
                    <td>${transaction.amount.total} USD</td>
                </tr>						
            </table>
        </div>
        <h2 align="center">Navigations to other services:</h2>
        <div align="center" class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1">
                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.html">Home</a></li>
                <c:if test="${sessionScope.LOGIN_USER.role =='AD'}">
                    <li class="u-nav-item"><a class="u-button-style u-nav-link" href="dashboardadmin.jsp" >Dashboard</a></li>
                </c:if>
                <c:if test="${sessionScope.LOGIN_USER.role =='T' || sessionScope.LOGIN_USER.role =='T1' }">
                    <li class="u-nav-item"><a class="u-button-style u-nav-link" href="dashboardteacher.jsp" >Dashboard</a></li>
                </c:if>
                <c:if test="${sessionScope.LOGIN_USER.role =='S' || sessionScope.LOGIN_USER.role =='S1' }">
                    <li class="u-nav-item"> <a class="u-button-style u-nav-link" href="dashboardstudent.jsp" >Dashboard</a></li>
                </c:if> 
            </ul>
        </div>
        <div class="colorlibcopy-agile">
            <p>© 2021 Online Quiz App. All rights reserved </p>
        </div>
        <!-- //copyright -->
        <ul class="colorlib-bubbles">
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </body>
</html>