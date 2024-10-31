<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            background: linear-gradient(135deg, #4B79A1, #283E51);
            color: #fff;
        }
        .login-container {
            background: rgba(255, 255, 255, 0.1);
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        }
        .form-control {
            background-color: rgba(255, 255, 255, 0.9);
            color: #333;
        }
        .btn-custom {
            background-color: #FFD700;
            color: #283E51;
            font-weight: bold;
        }
        .btn-custom:hover {
            background-color: #FFA500;
        }
    </style>
</head>
<body>
<div class="login-container text-center">
    <h1 class="mb-4 text-warning">Bem-vindo!</h1>
    <p>Faça login para continuar</p>
    <form action="menu.jsp" method="POST">
        <div class="form-group">
            <label for="login" class="sr-only">Usuário</label>
            <input type="text" id="login" name="login" class="form-control" placeholder="Digite seu usuário" required>
        </div>
        <div class="form-group">
            <label for="senha" class="sr-only">Senha</label>
            <input type="password" id="senha" name="senha" class="form-control" placeholder="Digite sua senha" required>
        </div>
        <button type="submit" class="btn btn-custom btn-block">Entrar</button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>


