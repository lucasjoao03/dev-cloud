<%-- 
    Document   : atualizar
    Created on : 31 de out. de 2024, 10:09:49
    Author     : 20221148060002
--%>

<%@page import="data.Banco"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualizar Livro</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body class="bg-light">
        
        <div class="container mt-5">
            <div class="card shadow-sm p-4">
                <h2 class="text-center mb-4">Atualizar Livro</h2>

                <%
                    String tituloAntigo = request.getParameter("tituloAntigo");
                    String tituloNovo = request.getParameter("tituloNovo");
                    String autor = request.getParameter("autor");
                    String edicao = request.getParameter("edicao");
                    String editora = request.getParameter("editora");
                    String ano = request.getParameter("ano");
                    String codigo = request.getParameter("codigo");
                    String exemplares = request.getParameter("exemplares");

                    if (tituloAntigo == null) {
                %>
                
                <form action="atualizar.jsp" method="POST">
                    <div class="form-group">
                        <label for="tituloAntigo">Título Antigo</label>
                        <input type="text" class="form-control" id="tituloAntigo" name="tituloAntigo" placeholder="Título antigo do livro">
                    </div>
                    <div class="form-group">
                        <label for="tituloNovo">Título Novo</label>
                        <input type="text" class="form-control" id="tituloNovo" name="tituloNovo" placeholder="Novo título do livro">
                    </div>
                    <div class="form-group">
                        <label for="autor">Autor</label>
                        <input type="text" class="form-control" id="autor" name="autor" placeholder="Nome do autor">
                    </div>
                    <div class="form-group">
                        <label for="edicao">Edição</label>
                        <input type="text" class="form-control" id="edicao" name="edicao" placeholder="Número da edição">
                    </div>
                    <div class="form-group">
                        <label for="editora">Editora</label>
                        <input type="text" class="form-control" id="editora" name="editora" placeholder="Nome da editora">
                    </div>
                    <div class="form-group">
                        <label for="ano">Ano</label>
                        <input type="text" class="form-control" id="ano" name="ano" placeholder="Ano de publicação">
                    </div>
                    <div class="form-group">
                        <label for="codigo">Código</label>
                        <input type="text" class="form-control" id="codigo" name="codigo" placeholder="Código do livro">
                    </div>
                    <div class="form-group">
                        <label for="exemplares">Exemplares</label>
                        <input type="text" class="form-control" id="exemplares" name="exemplares" placeholder="Quantidade de exemplares">
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Atualizar</button>
                </form>
                
                <%
                    } else {
                        Banco b = new Banco();
                        b.atualizarLivro(tituloAntigo, tituloNovo, autor, edicao, editora, ano, codigo, exemplares);
                %>
                
                <div class="alert alert-success text-center mt-4" role="alert">
                    Livro atualizado com sucesso!
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
