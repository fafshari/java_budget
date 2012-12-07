package sheridan;

public class Transaction {

	private float mAmount;
	private boolean mIsCredit;
	private String mDescription;

	public Transaction(float amount, boolean isCredit, String description) {
		mAmount = amount;
		mIsCredit = isCredit;
		mDescription = description;
	}

	public float getmAmount() {
		return mAmount;
	}

	public boolean ismIsCredit() {
		return mIsCredit;
	}

	public String getmDescription() {
		return mDescription;
	}

	public void setmAmount(float mAmount) {
		this.mAmount = mAmount;
	}

	public void setmIsCredit(boolean mIsCredit) {
		this.mIsCredit = mIsCredit;
	}

	public void setmDescription(String mDescription) {
		this.mDescription = mDescription;
	}
	
}
