/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package connection;

/**
 *
 * @author Muhammed Imthiyas
 */
   
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DbManager {
    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    public DbManager() throws ClassNotFoundException, SQLException {
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sameer?characterEncoding=utf-8","root","");
    }
    public boolean insertUpdateDelete(String query) throws SQLException
    {
     ps=con.prepareStatement(query);
        if(ps.executeUpdate()>0)
        {
        return true;
        }
        else
        {
        return false;
        }
    }
 
}
