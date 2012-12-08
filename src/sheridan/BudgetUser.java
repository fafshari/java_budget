package sheridan;

public class BudgetUser {

	String mName;
	String mEmail;
	float mtotalCash;
	float mTotalCredit;
	float mTotalDebit;

	public BudgetUser(String name, String email, float totalCash, float totalCredit, float totalDebit) {
		mName = name;
		mEmail = email;
		mtotalCash = totalCash;
		mTotalCredit = totalCredit;
		mTotalDebit = totalDebit;
	}

	public BudgetUser() {
		mName = "";
		mEmail = "";
		mtotalCash = 0;
		
	}

	public String getName() {
		return mName;
	}

	public String getEmail() {
		return mEmail;
	}

	public double getTotalCash() {
		return mtotalCash;
	}

	public void setName(String mName) {
		this.mName = mName;
	}

	public void setEmail(String mEmail) {
		this.mEmail = mEmail;
	}

	public void setTotalCash(float totalCash) {
		this.mtotalCash = totalCash;
	}

	public float getmTotalCredit() {
		return mTotalCredit;
	}

	public float getmTotalDebit() {
		return mTotalDebit;
	}

	public void setmTotalCredit(float mTotalCredit) {
		this.mTotalCredit = mTotalCredit;
	}

	public void setmTotalDebit(float mTotalDebit) {
		this.mTotalDebit = mTotalDebit;
	}

}
