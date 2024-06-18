package conexao;

import java.sql.DriverManager;

public class Conexao {
    private static String URL = "jdbc:mysql://db4free.net:3306/bd_projetofinal7?useSSL=false";
    private static String USUARIO = "senai_lucas_just";
    private static String SENHA = "!luk087123";
    private static String DRIVER = "com.mysql.cj.jdbc.Driver";
    
    public static java.sql.Connection conectar() {
        java.sql.Connection conn = null;
        try {
            Class.forName(DRIVER);
            conn = DriverManager.getConnection(URL, USUARIO, SENHA);
        } catch (Exception e) {
           e.printStackTrace();
        }
        return conn;
    }
}