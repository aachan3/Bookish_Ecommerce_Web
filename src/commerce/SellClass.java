package commerce;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;



public class SellClass {
	public static boolean addsellinfo(String name,String author,String publisher,String pyear,String edition,String eyear,String genre,String description,String quantity,String cost,int user_id){
		boolean k =false;
		int y=0;
		try{//driver register
			
			//LoginClass.add(username, password);
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			//open a connection
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","root");
			//PreparedStatement d = c.prepareStatement("select from user_info(user_id,username,first_name,last_name,address1,address2,phone_number,zip,city,state,password) values(?,?,?,?,?,?,?,?,?,?,?)");
			Random r = new Random();
			int u = r.nextInt(5000)+1000;
			PreparedStatement d = c.prepareStatement("insert into books(user_id,book_name,author,category,url,quantity,cost,publication,pyear,edition,eyear,details) values(?,?,?,?,?,?,?,?,?,?,?,?)");
			d.setString(1, Integer.toString(user_id));
			System.out.println("xxxxxxxxxxxxxxxxxxxxxxx"+name);
			System.out.println(author);
			d.setString(2, name);
			d.setString(3, author);
			d.setString(8, publisher);
			d.setString(5, Integer.toString(u));
			d.setString(9, pyear);
			d.setString(10, edition);
			d.setString(11, eyear);
			d.setString(4, genre);
			d.setString(12, description);
			d.setString(6, quantity);
			d.setString(7, cost);
			//d.setString(5, username);
			y = d.executeUpdate();
			c.close();
			d.close();
			
			}
			catch(Exception e)
			{
				//System.out.println("GHSAFFFFFFFFFFFFFFFFFFFJKS");
				e.printStackTrace();
			}
		if(y==1) 
		k = true;
		return k;
	}
	
	public static List<ArrayList<String>> getAllbooktitles(){
		ResultSet h = null;
		List<ArrayList<String>> l = new ArrayList<ArrayList<String>>();
		
		int i=0;
		try{//driver register
			
			//LoginClass.add(username, password);
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			//open a connection
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","root");
			//PreparedStatement d = c.prepareStatement("select from user_info(user_id,username,first_name,last_name,address1,address2,phone_number,zip,city,state,password) values(?,?,?,?,?,?,?,?,?,?,?)");
			//Random r = new Random();
			//int u = r.nextInt(5000)+1000;
			PreparedStatement d = c.prepareStatement("select book_name, book_id from books;");
			 h = d.executeQuery();
			 while(h.next())
			 {
				 //System.out.println(h.getInt(2));
				ArrayList<String> y = new ArrayList<String>();
				y.add(h.getString(1));
				y.add((Integer.toString(h.getInt(2))));
				l.add(y);
				System.out.println("hello"+l);
				
				System.out.println("hello"+l);
			 }
			 d.close();
			c.close();
			h.close();
			}
			catch(Exception e)
			{
				//System.out.println("GHSAFFFFFFFFFFFFFFFFFFFJKS");
				e.printStackTrace();
			}
		System.out.println("dddd"+ l);
		return l;
	}
	public static ArrayList<String> getAllvaluesofbook(String book_id){
		ResultSet h = null;
		System.out.println("fkjwhbkvebvkebviebiv"+ book_id);
		//List<ArrayList<String>> l = new ArrayList<ArrayList<String>>();
		int i=1;
		ArrayList<String> y = new ArrayList<String>();
		try{//driver register
			
			//LoginClass.add(username, password);
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			//open a connection
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","root");
			//PreparedStatement d = c.prepareStatement("select from user_info(user_id,username,first_name,last_name,address1,address2,phone_number,zip,city,state,password) values(?,?,?,?,?,?,?,?,?,?,?)");
			//Random r = new Random();
			//int u = r.nextInt(5000)+1000;
			PreparedStatement d = c.prepareStatement("select * from books where book_id=?;");
			d.setString(1, book_id);
			 h = d.executeQuery();
			 h.next();
			 //{ 	
					y.add((Integer.toString(h.getInt(2))));
					y.add(h.getString(3));
					y.add(h.getString(4));
					y.add(h.getString(5));
					y.add(Integer.toString(h.getInt(7)));
					y.add(h.getString(8));
					y.add(h.getString(9));
					y.add(h.getString(10));
					y.add(h.getString(11));
					y.add(h.getString(12));
					y.add(h.getString(13));
					//y.add((Integer.toString(h.getInt(2))));
					//l.add(y);
			 //}
			 d.close();
			c.close();
			h.close();
			}
			catch(Exception e)
			{
				//System.out.println("GHSAFFFFFFFFFFFFFFFFFFFJKS");
				e.printStackTrace();
			}
		System.out.println("XXXXXXXXXX"+ y);
		return y;
	}
}
