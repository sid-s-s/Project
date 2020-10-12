package adminRegister;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import insuranceJdbc.Insurance;

@Repository
public class AdminDao implements AdminImpl{

	private DataSource datasource;
	private JdbcTemplate jdbctemp;
	
	@Autowired
	public void setDatasource(DataSource datasource) {
		this.datasource = datasource;
		this.jdbctemp = new JdbcTemplate(datasource);
	}
	
	
	
	@Override
	public void insert(Admin i) {
		String ins = "insert into Admin(serialno,firstname,lastname,username,password,mobileno,email) values(?,?,?,?,?,?,?)";
		jdbctemp.update(ins,i.getSerialno(),i.getFirstname(),i.getLastname(),i.getUsername(),i.getPassword(),i.getMobileno(),i.getEmail()); 
		System.out.println("one row inserted");
	}

	
	

}
