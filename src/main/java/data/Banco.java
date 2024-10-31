/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import model.Livro;

/**
 *
 * @author 20221148060002
 */

    
 public class Banco {

    private Statement stmt;
    private ResultSet rs;
    public Connection conn;
    private static Banco b = new Banco();

    public Banco() {

        String url = "jdbc:mysql://localhost:3306/biblioteca";
        String usr = "root";
        String pas = "";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, usr, pas);
            stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
        } catch (Exception e) {
            System.out.println("Erro: " + e.getMessage());
        }
    }
    
    public String getUsuario(String login) throws SQLException {
        String nome = "";

        rs = stmt.executeQuery("SELECT * FROM usuario WHERE login = '" + login + "'");
    
        while (rs.next()) {
            nome = rs.getString("nome");
        }
        
        return nome;
    }
    
    public String getSenha(String login) throws SQLException {
        String senha = "";

        rs = stmt.executeQuery("SELECT * FROM usuario WHERE login = '" + login + "'");
    
        while (rs.next()) {
            senha = rs.getString("senha");
        }
        
        return senha;
    }
    
    public ArrayList<Livro> getLivrosByTitulo(String titulo) throws SQLException {
//    @SuppressWarnings("Convert2Diamond")
    ArrayList<Livro> livros = new ArrayList<Livro>();
    rs = stmt.executeQuery("SELECT * FROM livros WHERE titulo LIKE '%" + titulo + "%'");

        while (rs.next()) {
            Livro livro = new Livro();
            livro.setTitulo(rs.getString("titulo"));
            livro.setAutor(rs.getString("autor"));
            livro.setExemplares(rs.getInt("exemplares"));

            livros.add(livro);
        }

        return livros;
    }
     
    public void deletarLivro(String titulo) throws SQLException{
        stmt.executeUpdate("DELETE FROM livros WHERE titulo = '"+titulo+"'");
    }
    
    public void cadastrarLivro(String id, String titulo, String autor, String edicao, String editora, String ano, String codigo, String exemplares) throws SQLException {
        stmt.executeUpdate("INSERT INTO livros VALUES('"+id+"', '"+titulo+"', '"+autor+"', '"+edicao+"', '"+editora+"', '"+ano+"', '"+codigo+"', '"+exemplares+"')");
    }
     public void atualizarLivro(String tituloAntigo, String tituloNovo, String autor, String edicao, String editora, String ano, String codigo, String exemplares) throws SQLException {
            stmt.executeUpdate("UPDATE livros SET \n "+
                                "titulo = '"+tituloNovo+"', \n" +
                                "autor = '"+autor+"', \n" +
                                "edicao = '"+edicao+"', \n" +
                                "editora = '"+editora+"', \n" +
                                "ano = '"+ano+"', \n" +
                                "codigo = '"+codigo+"', \n" +
                                "exemplares = '"+exemplares+"' \n" +
                                "WHERE titulo = '"+tituloAntigo+"'");
        }
}

