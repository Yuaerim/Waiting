package DAO;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBConnection {
   static Connection conn=null;
   
   public static Connection connect() {
      try {   
   
         Context initContext = new InitialContext(); 
         String path="java:/comp/env/";
         String dePath="jdbc/mysql"; 
         DataSource ds = (DataSource) initContext.lookup(path+dePath);
         conn = ds.getConnection();
      } catch (Exception e) {
         e.printStackTrace();
      }
      return conn;  //여기부터 다시 작성
   }
}