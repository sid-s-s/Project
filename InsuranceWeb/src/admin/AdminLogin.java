package admin;

import org.hibernate.validator.constraints.NotEmpty;

public class AdminLogin {
	@NotEmpty(message="please enter user name")
	private String username;

	@NotEmpty(message="please enter password")
	private String password;
	
	public AdminLogin() {
		// TODO Auto-generated constructor stub
	}

	public AdminLogin(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Login [username=" + username + ", password=" + password + "]";
	}
	
}
