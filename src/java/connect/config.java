/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package connect;
import java.sql.*;
/**
 *
 *
 * @author Administrator
 */
public class config {
Connection con = null;
public Connection getcon(){
try {
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitmentsystem","root","root");

    }
catch(Exception e){
        e.printStackTrace();

} return con;
}
public static void main(String[] args){
   config c=new config();
    Connection con1=c.getcon();
    System.out.println("Connection is:"+con1);
}
}
