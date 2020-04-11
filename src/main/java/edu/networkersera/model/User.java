package edu.networkersera.model;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class User implements Serializable {
	
	private static final long serialVersionUID = 6569412591851416241L;
	
	public int userId;
	public String userName;
	public String userEmail;
	public String userPassword;
	public int userRoleId;
	
	
	
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", userEmail=" + userEmail + ", userPassword="
				+ userPassword + ", userRoleId=" + userRoleId + "]";
	}

	
}
