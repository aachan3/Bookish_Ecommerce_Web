package commerce;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Random;


public class signupclass {

	public static void create(String firstname,String lastname,String username,String password,String email)
	{
		try{//driver register
		//LoginClass.add(username, password);
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		//open a connection
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","root");
		//PreparedStatement d = c.prepareStatement("select from user_info(user_id,username,first_name,last_name,address1,address2,phone_number,zip,city,state,password) values(?,?,?,?,?,?,?,?,?,?,?)");
		//Random r = new Random();
		//int u = r.nextInt(5000)+1000;
		PreparedStatement d = c.prepareStatement("insert into user_info(firstname,lastname,pass,email,username) values(?,?,?,?,?)");
		//d.setString(1, Integer.toString(u));
		
		d.setString(1, firstname);
		d.setString(2, lastname);
		//d.setString(5, Address1);
		//d.setString(6, Address2);
		//d.setString(7, phone);
		//d.setString(8, zip);
		//d.setString(9, city);
		//d.setString(10, state);
		d.setString(3, password);
		d.setString(4, email);
		d.setString(5, username);
		d.executeUpdate();
		c.close();
		}
		catch(Exception e)
		{
			//System.out.println("GHSAFFFFFFFFFFFFFFFFFFFJKS");
			e.printStackTrace();
		}
	}
}
