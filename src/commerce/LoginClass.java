package commerce;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Random;

public class LoginClass {

	public static boolean validate(String user,String password)
	{
		boolean status = false;
		try{
			//register a driver
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			//open a connection
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","root");
			PreparedStatement ps = con.prepareStatement("select * from user_info where username=? and pass=?");
			ps.setString(1, user);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			status = rs.next();
			con.close();
		}
		catch (Exception e){
			
			System.out.println(e);
			
		}
		return status;
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
	public static String getuserid(String user_name)
	{
		//System.out.println(user_name);
		String m = " ";
		try{
			//register a driver
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			//open a connection
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","root");
			//Random r = new Random();
			//int u = r.nextInt(5000)+1000;
			PreparedStatement p = cn.prepareStatement("select user_id from user_info where username=?");
			p.setString(1, user_name);
			//p.setString(2, username);
			//p.setString(3, Password);
			ResultSet s = p.executeQuery();
			while(s.next()){
			 m = s.getString(1);
			 //System.out.println("the username is"+m);
			}
			cn.close();
			s.close();
			p.close();
	}
		catch(Exception h){
			System.out.println("In login Class:::"+ h);
		}
return m;	
}
}