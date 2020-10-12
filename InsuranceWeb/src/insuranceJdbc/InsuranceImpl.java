package insuranceJdbc;

import java.util.List;



public interface InsuranceImpl {
	public  List<Insurance> view();
	public void insert(Insurance i);
	public void delete(int serialno);
	public void update(Insurance i);
	public Insurance selectById(int serialno);

}
