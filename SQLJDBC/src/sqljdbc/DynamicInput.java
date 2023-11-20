

package sqljdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author dell
 */
public class DynamicInput {

    public static void main(String[] args) throws SQLException 
    {
        Connection con = null;
        try //Load The Driver
        {

            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Load secccessfull");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DynamicInput.class.getName()).log(Level.SEVERE, null, ex);
        }

        try {
            //Create Connection

            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Infojava", "root", "root");
            System.out.println("Connectin Created");
        } catch (SQLException e) {

        }

        Statement st;
        st = con.createStatement();
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter Your Query");
        String sql = sc.next();
        boolean b = st.execute(sql);
        if(b==true) //for select Query
        {
            ResultSet rs = st.getResultSet();
            while(rs.next())
            {
                System.out.println(rs.getInt(1));
                System.out.println(rs.getString(2));
                System.out.println(rs.getInt(3));
            }
        }
        else //Not select Queryinsert into Student values(12,'Vinod',99)insert into Student values(12,'Vinod',99)
        {
            int i =st.getUpdateCount();
        }
        con.close();
        
    }
}
