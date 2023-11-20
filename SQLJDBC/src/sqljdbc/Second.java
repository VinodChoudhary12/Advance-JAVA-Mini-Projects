
package sqljdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Second {

    public static void main(String[] args) throws Exception {
        PreparedStatement st;
        Connection con;
        String cmd =  "insert into Student values(12,'Vinod',99)";
          String path1 = "jdbc:mysql://localhost:3306/Infojava";
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection(path1, "root", "root");
        st = con.prepareStatement(cmd);

        int i = st.executeUpdate();
        if (i > 0) {
            System.out.println("Succes");
        } else {
            System.out.println("Fail");
        }

        con.close();
    }
}
