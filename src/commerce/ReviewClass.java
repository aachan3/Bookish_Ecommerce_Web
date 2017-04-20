package commerce;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;


public class ReviewClass {

	public static List<ArrayList<String>> review(String book_id)
	{
		List<ArrayList<String>> a = new ArrayList<ArrayList<String>>();
		try{
			//register a driver
			
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			//open a connection
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","root");
			PreparedStatement ps = con.prepareStatement("select * from review where book_id=?");
			ps.setString(1, book_id);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				List<String> b = new ArrayList<String>();
				b.add(Integer.toString(rs.getInt(2)));
				b.add(rs.getString(3));
				b.add(Integer.toString(rs.getInt(4)));
				a.add((ArrayList<String>) b);
			}
			
			con.close();
			rs.close();
			ps.close();
		}
		catch (Exception e){
			
			System.out.println(e);
			
		}
		//System.out.println("In review class"+a);
		return a;
	}
	public static int add(String username)
	{
		int m = 0;
		try{
			//register a driver
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			//open a connection
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","root");
			//Random r = new Random();
			//int u = r.nextInt(5000)+1000;
			PreparedStatement p = cn.prepareStatement("select user_id from user_info where username=?");
			p.setString(1, username);
			//p.setString(2, username);
			//p.setString(3, Password);
			ResultSet s = p.executeQuery();
			s.next();
			m =  s.getInt(1);
			cn.close();
			s.close();
			p.close();
	}
		catch(Exception h){
			System.out.println(h);
		}
return m;	
}
	
	public static String[] getusername(String user_id)
	{
		//System.out.println("dece"+ user_id);
		String[] m = new String[3];
		try{
			//register a driver
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			//open a connection
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","root");
			//Random r = new Random();
			//int u = r.nextInt(5000)+1000;
			PreparedStatement p = cn.prepareStatement("select username, firstname, lastname from user_info where user_id=?");
			p.setString(1, user_id);
			//p.setString(2, username);
			//p.setString(3, Password);
			ResultSet s = p.executeQuery();
			s.next();
			m[0] =  s.getString(1);
			m[1] = s.getString(2);
			m[2] = s.getString(3);
			cn.close();
			s.close();
			p.close();
	}
		catch(Exception h){
			System.out.println(h);
		}
return m;	
}
	

	public static boolean addreviewinfo(String book_id, String user_id, String description, String rating)
	{
		int y=0;
		//System.out.println("dece"+ user_id);
		//boolean m = false;
		try{
			//register a driver
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			//open a connection
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","root");
			//Random r = new Random();
			//int u = r.nextInt(5000)+1000;
			PreparedStatement p = cn.prepareStatement("insert into review(book_id,user_id,reviews,rating) values(?,?,?,?)");
			p.setString(1, book_id);
			p.setString(2, user_id);
			p.setString(3, description);
			p.setString(4, rating);
			y = p.executeUpdate();
			cn.close();
		//s.close();
			p.close();
	}
		catch(Exception h){
			System.out.println(h);
		}
if( y == 1)
return true;
else
	return false;
}
}