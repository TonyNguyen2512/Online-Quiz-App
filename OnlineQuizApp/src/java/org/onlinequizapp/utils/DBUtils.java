package org.onlinequizapp.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtils {

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Connection conn = null;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        //Class.forName("com.mysql.jdbc.Driver");
        //String url = "jdbc:mysql://localhost:1433;databaseName=foodmanagement";
        String url = "jdbc:sqlserver://localhost:1433;databaseName=OnlineQuiz";
        conn = DriverManager.getConnection(url, "sa", "251201");
        return conn;
    }
}
