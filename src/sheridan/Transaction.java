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

}
