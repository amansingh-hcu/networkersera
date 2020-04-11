package edu.networkersera.jdbc.mapper;
 
import java.sql.ResultSet;
import java.sql.SQLException;
 
import org.springframework.jdbc.core.RowMapper;

import edu.networkersera.model.User;
 
 
public class UserRowMapper implements RowMapper {
 
    public User mapRow(ResultSet rs, int rowNum) throws SQLException {
    	
    	User user = new User();
    	user.userId = rs.getInt("userId");
    	user.userName = rs.getString("userName");
    	user.userEmail = rs.getString("userEmail");
    	user.userPassword = rs.getString("userPassword");
    	user.userRoleId = rs.getInt("userRoleId");
 
        return user;
    }
}