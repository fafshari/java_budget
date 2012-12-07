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

	public float getAmount() {
		return mAmount;
	}

	public boolean isIsCredit() {
		return mIsCredit;
	}

	public String getDescription() {
		return mDescription;
	}

	public void setAmount(float mAmount) {
		this.mAmount = mAmount;
	}

	public void setIsCredit(boolean mIsCredit) {
		this.mIsCredit = mIsCredit;
	}

	public void setDescription(String mDescription) {
		this.mDescription = mDescription;
	}
	
}
