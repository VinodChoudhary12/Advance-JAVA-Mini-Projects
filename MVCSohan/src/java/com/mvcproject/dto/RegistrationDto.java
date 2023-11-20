package com.mvcproject.dto;

import com.mvcprojectdb.services.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import com.mvcproject.dao.DaoClass;

public class RegistrationDto {

    public ResultSet login(DaoClass dao) {
        Connection con = GetConnection.getConnectin();
        ResultSet rs = null;
        if (con != null) {
            String sql = "select * from Registration where email= ? and password = ?";
            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, dao.getEmail());
                ps.setString(2, dao.getPassword());
                rs = ps.executeQuery();
            } catch (SQLException e) {
            }
        }
        return rs;
    }

    public boolean registration(DaoClass dao) {
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            String sql = "insert into Registration (name,father,email,mobile,password) values (?,?,?,?,?)";
            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, dao.getName());
                ps.setString(2, dao.getFather());
                ps.setString(3, dao.getEmail());
                ps.setString(4, dao.getMobile());
                ps.setString(5, dao.getPassword());
                if (ps.executeUpdate() > 0) {
                    return true;
                }
            } catch (SQLException e) {
            }
        }
        return false;
    }

    public boolean changePassword(DaoClass dao) {
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            String sql = "update Registration set password = ? where email = ? and password = ?";
            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, dao.getPassword());
                ps.setString(2, dao.getEmail());
                ps.setString(3, dao.getPassword());
                if (ps.executeUpdate() > 0) {
                    return true;
                }
            } catch (SQLException e) {
            }
        }
        return false;
    }

    public boolean changeName(DaoClass dao) {
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            String sql = "update Registration set name = ? where email = ?";
            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, dao.getName());
                ps.setString(2, dao.getEmail());
                if (ps.executeUpdate() > 0) {
                    return true;
                }
            } catch (SQLException e) {
            }
        }
        return false;
    }

    public boolean changeFather(DaoClass dao) {
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            String sql = "update Registration set father = ? where email = ?";
            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, dao.getFather());
                ps.setString(2, dao.getEmail());
                if (ps.executeUpdate() > 0) {
                    return true;
                }
            } catch (SQLException e) {
            }
        }
        return false;
    }

    public boolean changeMobile(DaoClass dao) {
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            String sql = "update Registration set mobile = ? where email = ?";
            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, dao.getMobile());
                ps.setString(2, dao.getEmail());
                if (ps.executeUpdate() > 0) {
                    return true;
                }
            } catch (SQLException e) {
            }
        }
        return false;
    }

    public boolean changeEmail(DaoClass dao) {
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            String sql = "update Registration set email = ? where email = ?";
            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, dao.getEmail());
                ps.setString(2, dao.getEmail());
                if (ps.executeUpdate() > 0) {
                    return true;
                }
            } catch (SQLException e) {
            }
        }
        return false;
    }
}
