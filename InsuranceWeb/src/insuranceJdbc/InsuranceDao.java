package insuranceJdbc;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


@Repository
public class InsuranceDao implements InsuranceImpl{

	private DataSource datasource;
	private JdbcTemplate jdbctemp;
	
	@Autowired
	public void setDatasource(DataSource datasource) {
		this.datasource = datasource;
		this.jdbctemp = new JdbcTemplate(datasource);
	}
	
	
	@Override
	public List<Insurance> view() {
		String selectqry = "select serialno,firstname,lastname,username,password,mobileno,email from Userregistration";
		List<Insurance> ins = jdbctemp.query(selectqry,new BeanPropertyRowMapper(Insurance.class));
		return ins;
	}

	@Override
	public void insert(Insurance i) {
		String ins = "insert into userregistration(serialno,firstname,lastname,username,password,mobileno,email) values(?,?,?,?,?,?,?)";
		jdbctemp.update(ins,i.getSerialno(),i.getFirstname(),i.getLastname(),i.getUsername(),i.getPassword(),i.getMobileno(),i.getEmail()); 
		System.out.println("one row inserted");
	}

	@Override
	public void delete(int serialno) {
		String del = "delete from userregistration where serialno=(?)";
		jdbctemp.update(del,serialno);
		
	}


	@Override
	public Insurance selectById(int serialno) {
		 Insurance i = null;
	        try
	        {
	            i = (Insurance) jdbctemp.queryForObject("select serialno,firstname,lastname,username,password,mobileno,email where serialno=?", new Object[]{serialno},new BeanPropertyRowMapper(Insurance.class));
	        }
	        catch(EmptyResultDataAccessException e)
	        {
	            i = null;
	        }
	        return i;
	}


	@Override
	public void update(Insurance i) {
		// TODO Auto-generated method stub
		String update = "update userregistration set serialno=?, firstname=?, lastname=?, username=?,password=?, mobileno=?,email=? where serialno=?";
		int upd = jdbctemp.update(update, i.getSerialno(),i.getFirstname(),i.getLastname(),i.getUsername(),i.getPassword(),i.getMobileno(),i.getEmail());
		System.out.println("insurance updated");
	}


	

}
