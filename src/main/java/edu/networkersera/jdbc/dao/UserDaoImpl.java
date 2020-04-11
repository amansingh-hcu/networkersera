
package edu.networkersera.jdbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Collection;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import edu.networkersera.jdbc.mapper.UserRowMapper;
import edu.networkersera.model.User;
 
 
public class UserDaoImpl implements UserDao {
 
	@Autowired
	DataSource datasource;
	
	@Autowired
	JdbcTemplate jdbcTemplate;
 
    public JdbcTemplate getTemplate() {
        return jdbcTemplate;
    }
 
    public void setTemplate(JdbcTemplate template) {
        this.jdbcTemplate = template;
    }
 
    public User findById(int employeeId) {
    	User user = (User) getTemplate().queryForObject("SELECT * FROM user WHERE userId=?", new Object[] { 1 }, new UserRowMapper());        
        return user;
    }
    
    @Override
    public User findByName(String userName, String userPassword) {

    	User user = null;
    	try {
    		user = (User) getTemplate().queryForObject("SELECT * FROM user WHERE userName=? and userPassword=?", new Object[] { userName, userPassword }, new UserRowMapper());
		} catch (Exception e) {
			e.printStackTrace();
			return user;
		}
        return user;
    }
 
    public Collection<User> findAll() {
        List<User> userlist = getTemplate().query("SELECT * FROM user", new UserRowMapper());
        return userlist;
    }

	@Override
	public int register(User user, int userRoleId) {
		
		String sql = "insert into user (userName, userEmail, userPassword) values (?,?,?)";
	    //jdbcTemplate.update(sql, new Object[] { user.userId, user.userName, user.userEmail, user.userPassword });
	    
	    KeyHolder holder = new GeneratedKeyHolder();
	    try {
	    	jdbcTemplate.update(new PreparedStatementCreator() {
				@Override
				public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
					PreparedStatement ps = connection.prepareStatement(sql, new String[]{"userId"});
					ps.setString(1, user.userName);
					ps.setString(2, user.userEmail);
					ps.setString(3, user.userPassword);
					ps.setInt(4, userRoleId);
					return ps;
				}
			}, holder);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
		return holder.getKey().intValue();
	}
}
