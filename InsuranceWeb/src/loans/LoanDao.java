package loans;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import insuranceJdbc.Insurance;



@Repository
public class LoanDao {
	private DataSource datasource;
	private JdbcTemplate jdbctemp;
	
	@Autowired
	public void setDatasource(DataSource datasource) {
		this.datasource = datasource;
		this.jdbctemp = new JdbcTemplate(datasource);
	}
	
	
	public void home(Homeloan i) {
		String ins = "insert into homeloan(serialno,username,nominee,pan,propertylocation,address,amount) values(?,?,?,?,?,?,?)";
		jdbctemp.update(ins,i.getSerialno(),i.getUsername(),i.getNominee(),i.getPan(),i.getPropertylocation(),i.getAddress(),i.getAmount()); 
		System.out.println("one row inserted");
	}
	
	public void personal(Personalloan i) {
		String ins = "insert into personalloan(serialno,username,nominee,pan,address,amount) values(?,?,?,?,?,?)";
		jdbctemp.update(ins,i.getSerialno(),i.getUsername(),i.getNominee(),i.getPan(),i.getAddress(),i.getAmount()); 
		System.out.println("one row inserted");
	}
	
	public void education(Educationalloan i) {
		String ins = "insert into educationalloan(serialno,username,studentname,collegename,coladdress,course,duration,pan,address,amount) values(?,?,?,?,?,?,?,?,?,?)";
		jdbctemp.update(ins,i.getSerialno(),i.getUsername(),i.getStudentname(),i.getCollegename(),i.getColaddress(),i.getCourse(),i.getDuration(),i.getPan(),i.getAddress(),i.getAmount()); 
		System.out.println("one row inserted");
	}
	public void auto(Automobileloan i) {
		String ins = "insert into automobileloan(serialno,username,nominee,pan,vehicle,vehicletype,address,amount) values(?,?,?,?,?,?,?,?)";
		jdbctemp.update(ins,i.getSerialno(),i.getUsername(),i.getNominee(),i.getPan(),i.getVehicle(),i.getVehicletype(),i.getAddress(),i.getAmount()); 
		System.out.println("one row inserted");
	}

	public void showloan(Homeloan i){
		String sql=("select serialno,username,nominee,pan,propertylocation,address,amount from homeloan where serialno= (select serialno from userregistration where serialno="+i.getSerialno()+")" );
		jdbctemp.query(sql,new BeanPropertyRowMapper(Homeloan.class));
	}

}







