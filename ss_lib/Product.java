package ss_lib;



public class Product {

	private String productName;
	private String category;
	private String cond;
	private float price;
	private String description;
	private String image;


	public Product(String productName, String category, String cond, float price, String description,String image) {
		this.productName = productName;
		this.category = category;
		this.cond = cond;
		this.price = price;
		this.description = description;
		this.image = image;

	}


	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getCond() {
		return cond;
	}

	public void setCond(String cond) {
		this.cond = cond;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
			return image;
	}

	public void setImage(String image) {
			this.image = image;
	}

}// End of class
