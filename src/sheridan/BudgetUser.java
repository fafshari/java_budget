package sheridan;

public class BudgetUser {

	String mName;
	String mEmail;
	double mtotalCash;
	
	public BudgetUser(String name, String email, double totalCash) {
		mName = name;
		mEmail = email;
		mtotalCash = totalCash;
	}

	
	public String getmName() {
		return mName;
	}
	public String getmEmail() {
		return mEmail;
	}
	public double getTotalCash() {
		return mtotalCash;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}
	public void setTotalCash(double totalCash) {
		this.mtotalCash = totalCash;
	}
	
	
}
