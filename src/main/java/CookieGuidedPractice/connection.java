package CookieGuidedPractice;
import java.sql.*;
public class connection {
	public Connection getConnection() {
		try {
			myConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/curso_pildoras", "root", "jlomar12");
		}catch(Exception e) {
			System.out.println(e);
			e.printStackTrace();
		}
		return myConnection;
	}
	private Connection myConnection = null;

}
