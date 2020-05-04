<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Login</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<c:import url="menu.jsp" />
	
	<div id="login">
        <h3 class="text-center text-white pt-5">Login form</h3>
        <div class="container" id="main" >
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="controller.do" method="post">
                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">Username:</label><br>
                                <input type="text" name="username" id="username" class="form-control" maxlength="60" placeholder="Username" required>
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                <input type="password" name="passwd" id="passwd" class="form-control" placeholder="Senha" required>
                            </div>
                            <div class="row col-md-12">
								<button type="submit" class="btn btn-primary" name="command"
									value="FazerLogin">
									<span class="glyphicon glyphicon-ok" aria-hidden="true"></span> Ok
								</button>
							</div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
	
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>