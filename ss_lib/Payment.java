package ss_lib;

public class Payment {

	private float totalPrice;
	private String means;

	public Payment(float totalPrice, String means) {

		this.totalPrice = totalPrice;
		this.means = means;
	}

	public float getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(float totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getMeans() {
		return means;
	}

	public void setMeans(String means) {
		this.means = means;
	}

}// End of class
