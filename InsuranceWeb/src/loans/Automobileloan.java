package loans;

public class Automobileloan {
	private int serialno;
	private String username;	
	private String nominee;
	private String pan;
	private int vehicle;
	private String vehicletype; 
	private String address;
	private double amount;
	
	public Automobileloan() {
		// TODO Auto-generated constructor stub
	}

	public Automobileloan(int serialno, String username, String nominee, String pan, int vehicle, String vehicletype,
			String address, double amount) {
		super();
		this.serialno = serialno;
		this.username = username;
		this.nominee = nominee;
		this.pan = pan;
		this.vehicle = vehicle;
		this.vehicletype = vehicletype;
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

	public int getVehicle() {
		return vehicle;
	}

	public void setVehicle(int vehicle) {
		this.vehicle = vehicle;
	}

	public String getVehicletype() {
		return vehicletype;
	}

	public void setVehicletype(String vehicletype) {
		this.vehicletype = vehicletype;
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
