package sheridan;

import java.util.Date;

public class Transaction {

	private float mAmount;
	private boolean mIsCredit;
	private String mDescription;
	private Date mDate;

	public Transaction(){
		mAmount = 0;
		mIsCredit = false;
		mDescription = "";
		mDate = new Date();
	}
	public Transaction(float amount, boolean isCredit, String description, Date date) {
		mAmount = amount;
		mIsCredit = isCredit;
		mDescription = description;
		mDate = new Date();
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
