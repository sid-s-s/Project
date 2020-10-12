package loans;

public class Educationalloan {

	private int serialno;
	private String username;
	private String studentname;
	private String collegename;
	private String coladdress;
	private String course;
	private int duration;
	private String pan;
	private String address;
	private double amount;

	public Educationalloan() {
		// TODO Auto-generated constructor stub
	}

	public Educationalloan(int serialno, String username, String studentname, String collegename, String coladdress,
			String course, int duration, String pan, String address, double amount) {
		super();
		this.serialno = serialno;
		this.username = username;
		this.studentname = studentname;
		this.collegename = collegename;
		this.coladdress = coladdress;
		this.course = course;
		this.duration = duration;
		this.pan = pan;
		this.address = address;
		this.amount = amount;
	}

	public int getSerialno() {
		return serialno;
	}

	public void setSerialno(int serialno) {
		this.serialno = serialno;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getStudentname() {
		return studentname;
	}

	public void setStudentname(String studentname) {
		this.studentname = studentname;
	}

	public String getCollegename() {
		return collegename;
	}

	public void setCollegename(String collegename) {
		this.collegename = collegename;
	}

	public String getColaddress() {
		return coladdress;
	}

	public void setColaddress(String coladdress) {
		this.coladdress = coladdress;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public String getPan() {
		return pan;
	}

	public void setPan(String pan) {
		this.pan = pan;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}
	
}
