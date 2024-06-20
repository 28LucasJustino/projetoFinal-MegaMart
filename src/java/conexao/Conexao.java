package conexao;

import java.sql.DriverManager;

public class Conexao {
    private static String URL = "jdbc:mysql://localhost:3306/bd_projetofinal";
    private static String USUARIO = "root";
    private static String SENHA = "";
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