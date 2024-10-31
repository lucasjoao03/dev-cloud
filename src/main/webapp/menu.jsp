<%-- 
    Document   : menu
    Created on : 16 de out. de 2024, 08:05:53
    Author     : 20221148060002
--%>

<%@page import="data.Banco"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body class="bg-light">
        <div class="container mt-5">
            <div class="card p-4 shadow-sm">
                <h2 class="text-center mb-4">Bem-vindo(a)</h2>
                
                <%
                    String login = request.getParameter("login");
                    String senha = request.getParameter("senha");
                    Banco b = new Banco();
                    String senhaBanco = b.getSenha(login);
                    if (senha.equals(senhaBanco)){ 
                %>
                
                <h3 class="text-center text-success">Menu de Operações</h3>
                <div class="list-group mt-3">
                    <a href="cadastrar.jsp" class="list-group-item list-group-item-action">Cadastrar Livro</a>
                    <a href="consultar.jsp" class="list-group-item list-group-item-action">Consultar Livro</a>
                    <a href="deletar.jsp" class="list-group-item list-group-item-action">Deletar Livro</a>
                    <a href="atualizar.jsp" class="list-group-item list-group-item-action">Atualizar Livro</a>
                </div>
                
                <%
                    } else {
                %>
                
                <div class="alert alert-danger mt-4 text-center" role="alert">
                    Usuário ou senha incorretos
                </div>
                
                <%
                    }
                %>
            </div>
        </div>

        <!-- Script do Bootstrap para funcionalidades JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
