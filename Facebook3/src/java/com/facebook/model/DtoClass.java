
package com.facebook.model;
import com.facebook.services.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author user
 */
public class DtoClass {
    private Connection con=null;
    
    public boolean login(DaoClass dao) {
        boolean b=false;
        Connection con = GetConnection.getConnection();
        
        String sql = "SELECT * FROM login WHERE username=? AND pass=?";
        try {
            
            System.out.println(con);
            System.out.println(dao.getUsername());
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, dao.getUsername());
            ps.setString(2, dao.getPass());
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
               dao.setDob(rs.getString("dob"));
               dao.setEmail(rs.getString("email"));
               dao.setName(rs.getString("name"));
               dao.setGender(rs.getString("gender"));
               b=true;
            }
            else{
                System.out.println("Not Exist");
            }
        } 
        catch(SQLException ex){
            System.out.println(ex);
        }
       
        return b;
    }
    public boolean userreg(DaoClass dao){
        boolean b=false;
        try {
            
            Connection con = GetConnection.getConnection();
            
            
            String sql = "INSERT INTO login VALUES ( ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, dao.getUsername());
            preparedStatement.setString(2, dao.getPass());
            preparedStatement.setString(3, dao.getName());
            preparedStatement.setString(4, dao.getEmail());
            preparedStatement.setString(5, dao.getDob());
            preparedStatement.setString(6, dao.getGender());
            
            int i = preparedStatement.executeUpdate();
            if (i > 0) {
                b=true;
                
            }return b;
        } catch (SQLException ex) {
            Logger.getLogger(DtoClass.class.getName()).log(Level.SEVERE, null, ex);
        }
        return b;
    }

}
