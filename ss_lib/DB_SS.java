package ss_lib;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Date;
import java.util.Collections;

public class DB_SS{
	Connection con;
	private String errorMessages = "";
	User user;
	GetProduct product;
	List<GetProduct> Product = new ArrayList<GetProduct>();
	/*
	 * Define userQuery query.
     */
	private final String userQuery = "select email, password from user where email =?  and password =?";

	public String getErrorMessages() {
		return errorMessages;
    }

	public void open(){
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		}catch(Exception e) {
			errorMessages = "MySQL Driver error: <br>" + e.getMessage();
        }
		try{
			con=DriverManager.getConnection("jdbc:mysql://195.251.249.131:3306/ismgroup70","ismgroup70","6eefnf");
		}catch (SQLException ex){
			errorMessages = "Could not establish connection with the Database Server: " + ex.getMessage();
			con = null;
	    }
	}

	public void close(){
		try {
			con.close();
		}catch(SQLException exx){
			errorMessages = "Could not close connection with the Database Server: " + exx.getMessage();
		}
	}

	public User authenticateUser(String email, String password){
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM user where email= ? and password= ?;";
		try {
			stmt = con.prepareStatement(sql);
			stmt.setString(1,email);
			stmt.setString(2,password);
			rs = stmt.executeQuery(); //execute(SQL Statement) sql

			if (rs.next()== false) {
				throw new IllegalArgumentException("Δεν υπάρχει αντιστοίχιση μεταξύ του email και του password ή δεν έχετε ακόμη λογαριασμό.");
			}else{
				user = new User(email, password, rs.getString("firstName"), rs.getString("lastName"), rs.getString("phoneNumber"));
          		rs.close();
			}
			stmt.close();
		} catch(SQLException ee) {
			   errorMessages = "Error while executing authentication query: " + ee.getMessage();
		}return user;
	}

	public void registerUser(User user) throws Exception {
		PreparedStatement statement = null;
		ResultSet result = null;
		try {
			String sql = "INSERT INTO user"
			+ "(firstName, lastName, password, email, phoneNumber) VALUES"
			+ "(?,?,?,?,?)";
			statement = con.prepareStatement(sql);
			statement.setString(1,user.getName());
			statement.setString(2,user.getSurname());
			statement.setString(3,user.getPassword());
			statement.setString(4,user.getEmail());
			statement.setString(5,user.getPhone());
			statement.executeUpdate();
			}catch(SQLException exe){
				errorMessages = "Error while getting all students from database!" + exe.getMessage();
			}
			statement.close();
	}

	public void insertProduct(Product product) throws Exception {
		PreparedStatement statement = null;
		ResultSet result = null;
		try {
			String sql = "INSERT INTO product"
			+ "(productName,category,cond,price,description,image) VALUES"
			+ "(?,?,?,?,?,?)";
			statement = con.prepareStatement(sql);
			statement.setString(1,product.getProductName());
			statement.setString(2,product.getCategory());
			statement.setString(3,product.getCond());
			statement.setFloat(4,product.getPrice());
			statement.setString(5,product.getDescription());
			statement.setString(6,product.getImage());
			statement.executeUpdate();
			}catch(SQLException exe){
				errorMessages = "Error while getting all students from database!" + exe.getMessage();
			}
			statement.close();
	}

	   public List<GetProduct> getProduct() {
		   if (con == null) {
			   errorMessages = "You must establish a connection first!";
		   }
		   PreparedStatement stmt = null;
		   ResultSet rs = null;
		   String sql = "SELECT * FROM product";
		   try {
		   stmt = con.prepareStatement(sql);
		   rs = stmt.executeQuery();
		   while(rs.next()){
		   product = new GetProduct(rs.getInt("productID"),rs.getString("productName"),rs.getString("category"),rs.getString("cond"),rs.getFloat("price"),rs.getString("description"),rs.getString("image"));
		   Product.add(product);

		  }
		  Collections.reverse(Product);
		   } catch (Exception e4) {
			   errorMessages = "Error while executing authentication query: <br>"
		   	   + e4.getMessage();
	  	  }
		  return Product;
   }

   	public void payment(Payment payment) throws Exception {
   		PreparedStatement statement = null;
   		ResultSet result = null;
   		try {
   			String sql = "INSERT INTO payment"
   			+ "(totalPrice, means) VALUES"
   			+ "(?,?)";
   			statement = con.prepareStatement(sql);
   			statement.setFloat(1,payment.getTotalPrice());
   			statement.setString(2,payment.getMeans());
   			statement.executeUpdate();
   			}catch(SQLException exe){
   				errorMessages = "Error while getting all students from database!" + exe.getMessage();
   			}
   			statement.close();
	}


}