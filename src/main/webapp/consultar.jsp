<%-- 
    Document   : consultar
    Created on : 31 de out. de 2024, 10:10:31
    Author     : 20221148060002
--%>

<%@page import="model.Livro"%>
<%@page import="java.util.ArrayList"%>
<%@page import="data.Banco"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Livro</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body class="bg-light">
        
        <div class="container mt-5">
            <div class="card shadow-sm p-4">
                <h2 class="text-center mb-4">Consultar Livro</h2>

                <form action="consultar.jsp" method="POST" class="form-inline justify-content-center mb-4">
                    <div class="form-group mx-sm-3 mb-2">
                        <label for="titulo" class="sr-only">Título</label>
                        <input type="text" class="form-control" id="titulo" name="titulo" placeholder="Digite o título do livro">
                    </div>
                    <button type="submit" class="btn btn-primary mb-2">Consultar</button>
                </form>
                
                <div class="mt-4">
                    <%
                        String titulo = request.getParameter("titulo");
                        if (titulo != null) {
                            Banco b = new Banco();
                            ArrayList<Livro> livros = b.getLivrosByTitulo(titulo);

                            if (livros.isEmpty()) {
                    %>
                                <div class="alert alert-warning text-center" role="alert">
                                    Nenhum livro encontrado com o título "<%= titulo %>".
                                </div>
                    <%
                            } else {
                    %>
                                <ul class="list-group">
                                    <%
                                        for (Livro l : livros) {
                                    %>
                                        <li class="list-group-item">
                                            <strong>Título:</strong> <%= l.getTitulo() %> <br>
                                            <strong>Autor:</strong> <%= l.getAutor() %> <br>
                                            <strong>Exemplares:</strong> <%= l.getExemplares() %>
                                        </li>
                                    <%
                                        }
                                    %>
                                </ul>
                    <%
                            }
                        }
                    %>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
