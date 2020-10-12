package loans;

public class Homeloan {
	private String username;
	private int serialno;
	private String nominee;
	private String pan;
	private String propertylocation;
	private String address;
	private double amount;

	public Homeloan() {
		// TODO Auto-generated constructor stub
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getSerialno() {
		return serialno;
	}

	public void setSerialno(int serialno) {
		this.serialno = serialno;
	}

	public String getNominee() {
		return nominee;
	}

	public void setNominee(String nominee) {
		this.nominee = nominee;
	}

	public String getPan() {
		return pan;
	}

	public void setPan(String pan) {
		this.pan = pan;
	}

	public String getPropertylocation() {
		return propertylocation;
	}

	public void setPropertylocation(String propertylocation) {
		this.propertylocation = propertylocation;
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

	public Homeloan(int serialno, String username, String nominee, String pan, String propertylocation, String address,
			double amount) {
		super();
		this.username = username;
		this.serialno = serialno;
		this.nominee = nominee;
		this.pan = pan;
		this.propertylocation = propertylocation;
		this.address = address;
		this.amount = amount;
	}

}
