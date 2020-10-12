package userLogin;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import insuranceJdbc.Insurance;

@Repository
public class LoginValidate {

	private DataSource datasource;
	private JdbcTemplate jdbctemp;

	@Autowired
	public void setDatasource(DataSource datasource) {
		this.datasource = datasource;
		this.jdbctemp = new JdbcTemplate(datasource);
	}


	@SuppressWarnings("deprecation")
	public boolean authenticateUser(Login login) {
		System.out.println("chking");
		boolean userExists = true;
		String sql=("select username,password from userregistration where username= '"
				+ login.getUsername() + "' and password='" + login.getPassword() + "'");
		// login.getUsername(),login.getPassword());
		List<String> rowcount = jdbctemp.query(sql,new BeanPropertyRowMapper(Insurance.class));
		if (rowcount.size() == 0) {
			userExists = false;
		} // TODO Auto-generated method stub
		System.out.println("checked");
		return userExists;
	}
	
	public List<Insurance> home(Login login)
	{
		
		String sql=("select serialno,firstname,lastname,username,password,mobileno,email from userregistration where username= '"
				+ login.getUsername() + "' and password='" + login.getPassword() + "'");
		List<Insurance> ins = jdbctemp.query(sql,new BeanPropertyRowMapper(Insurance.class));
		return ins;
	}
	
}
