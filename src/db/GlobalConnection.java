package db;

import java.sql.*;

import javax.swing.JOptionPane;

public class GlobalConnection {
	
	static Connection con=null;
	
	public static Connection getcon()
	{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/examination","root","java");
	
		}catch(Exception ee){
			
			JOptionPane.showMessageDialog(null,"Global Connection1 Error");
		}
		return con;
	}
	
	public static String getpass() throws InterruptedException
	{
		String a,b,c,d,pass,e;
		
		a=""+(char)('A'+Math.random()*('Z'-'A'+1));
		
		c=""+(char)('A'+Math.random()*('Z'-'A'+1));
		
		b=""+(char)('A'+Math.random()*('Z'-'A'+1));
		
		d=""+(char)('A'+Math.random()*('Z'-'A'+1));
		
		e=""+(char)('A'+Math.random()*('Z'-'A'+1));
		pass=a+c+b+d+e;
		return pass;
	}

}
