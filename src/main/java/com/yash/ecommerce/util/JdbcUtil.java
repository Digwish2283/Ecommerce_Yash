package com.yash.ecommerce.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcUtil {
    private final static String URL = "jdbc:mysql://localhost:3306/ecommerce";
    private final static String user = "root";
    private final static String password = "root";

    // static is imp to otherwise it will not work
    private static Connection conn ;

    //establishing connection
    public static Connection getConn() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver");

            conn = DriverManager.getConnection(URL, user, password);
//
        } catch (ClassNotFoundException e) {
            throw new SQLException("Jdbc driver not found ", e);
        }
        return conn;
    }

}
