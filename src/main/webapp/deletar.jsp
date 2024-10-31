<%-- 
    Document   : deletar
    Created on : 31 de out. de 2024, 10:09:09
    Author     : 20221148060002
--%>

<%@page import="data.Banco"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deletar Livro</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body class="bg-light">
        
        <div class="container mt-5">
            <div class="card shadow-sm p-4">
                <h2 class="text-center mb-4">Deletar Livro</h2>

                <%
                    String titulo = request.getParameter("titulo");

                    if (titulo == null) {
                %>
                
                <form action="deletar.jsp" method="POST">
                    <div class="form-group">
                        <label for="titulo">Título</label>
                        <input type="text" class="form-control" id="titulo" name="titulo" placeholder="Digite o título do livro a ser deletado">
                    </div>
                    <button type="submit" class="btn btn-danger btn-block">Deletar</button>
                </form>
                
                <%
                    } else {
                        Banco b = new Banco();
                        b.deletarLivro(titulo);
                %>
                
                <div class="alert alert-success text-center mt-4" role="alert">
                    Livro deletado com sucesso!
                </div>
                
                <%
                    }
                %>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
