package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {
    private static Connection conn;
    public static void getConnection(){
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        String user = "sa";
        String pass = "123456";

        try{
            conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName= Quiz_Practice; encrypt=true; trustServerCertificate=true", user, pass);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        if(conn == null)
        {
            System.out.println("Ket noi that bai");

        }else{
            System.out.println("Ket noi thanh cong");
        }

    }
    public static void main(String[] args){

        getConnection();
    }
}
