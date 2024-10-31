<%-- 
    Document   : cadastrar
    Created on : 31 de out. de 2024, 10:08:49
    Author     : 20221148060002
--%>

<%@page import="data.Banco"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Livro</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body class="bg-light">
        
        <div class="container mt-5">
            <div class="card shadow-sm p-4">
                <h2 class="text-center mb-4">Cadastrar Livro</h2>

                <%
                    String id = request.getParameter("id");
                    String titulo = request.getParameter("titulo");
                    String autor = request.getParameter("autor");
                    String edicao = request.getParameter("edicao");
                    String editora = request.getParameter("editora");
                    String ano = request.getParameter("ano");
                    String codigo = request.getParameter("codigo");
                    String exemplares = request.getParameter("exemplares");

                    if (id == null) {
                %>
                
                <form action="cadastrar.jsp" method="POST">
                    <div class="form-group">
                        <label for="id">ID</label>
                        <input type="text" class="form-control" id="id" name="id" placeholder="Digite o ID do livro">
                    </div>
                    <div class="form-group">
                        <label for="titulo">Título</label>
                        <input type="text" class="form-control" id="titulo" name="titulo" placeholder="Digite o título do livro">
                    </div>
                    <div class="form-group">
                        <label for="autor">Autor</label>
                        <input type="text" class="form-control" id="autor" name="autor" placeholder="Digite o nome do autor">
                    </div>
                    <div class="form-group">
                        <label for="edicao">Edição</label>
                        <input type="text" class="form-control" id="edicao" name="edicao" placeholder="Digite a edição do livro">
                    </div>
                    <div class="form-group">
                        <label for="editora">Editora</label>
                        <input type="text" class="form-control" id="editora" name="editora" placeholder="Digite a editora do livro">
                    </div>
                    <div class="form-group">
                        <label for="ano">Ano</label>
                        <input type="text" class="form-control" id="ano" name="ano" placeholder="Digite o ano de publicação">
                    </div>
                    <div class="form-group">
                        <label for="codigo">Código</label>
                        <input type="text" class="form-control" id="codigo" name="codigo" placeholder="Digite o código do livro">
                    </div>
                    <div class="form-group">
                        <label for="exemplares">Exemplares</label>
                        <input type="text" class="form-control" id="exemplares" name="exemplares" placeholder="Digite o número de exemplares">
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Enviar</button>
                </form>
                
                <%
                    } else {
                        Banco b = new Banco();
                        b.cadastrarLivro(id, titulo, autor, edicao, editora, ano, codigo, exemplares);
                %>
                
                <div class="alert alert-success text-center mt-4" role="alert">
                    Livro cadastrado com sucesso!
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
