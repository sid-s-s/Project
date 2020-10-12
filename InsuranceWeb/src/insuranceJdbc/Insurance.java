package insuranceJdbc;

import java.util.Date;

import javax.persistence.Transient;
import javax.validation.constraints.*;

import org.hibernate.validator.constraints.*;
import org.springframework.format.annotation.DateTimeFormat;

public class Insurance {
	
	@Min(value=2,message="value must be greater than or equal to 2")
	private int serialno;
	
	@NotEmpty(message="please enter first name")
	private String firstname;
	
	@NotEmpty(message="please enter last name")
	private String lastname;
	
	@NotEmpty(message="please enter username")
	private String username;
	
	@NotEmpty(message="please enter password")
	private String password;
	
	//@NotEmpty(message="please enter mobile number")
	private int mobileno;
	
	@Email
	private String email;
	
	@Transient
	private Date dob;
	
	public Insurance() {
		// TODO Auto-generated constructor stub
	}
	

	public Insurance(int serialno, String firstname, String lastname, String username, String password, int mobileno,
			String email) {
		super();
		this.serialno = serialno;
		this.firstname = firstname;
		this.lastname = lastname;
		this.username = username;
		this.password = password;
		this.mobileno = mobileno;
		this.email = email;
		//this.dob = dob;
		
	}

	public int getSerialno() {
		return serialno;
	}

	public void setSerialno(int serialno) {
		this.serialno = serialno;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
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

	public int getMobileno() {
		return mobileno;
	}

	public void setMobileno(int mobileno) {
		this.mobileno = mobileno;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(@DateTimeFormat(pattern="dd-MMM-yyyy") Date dob) {
		this.dob = dob;
	}

	@Override
	public String toString() {
		return "Insurance [serialno=" + serialno + ", firstname=" + firstname + ", lastname=" + lastname + ", username="
				+ username + ", password=" + password + ", mobileno=" + mobileno + ", email=" + email + ", dob=" + dob
				+ "]";
	}
	
	

}
