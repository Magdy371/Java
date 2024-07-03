import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
public class Main {
	public static void main (String[] args) throws SQLException
	{
		String sql = "your sql statement";
		String url= "jdbc:postgresql://localhost:5432/your_db_name";
		String username = "postgres";
		String password = "your_password";
		Connection con = DriverManager.getConnection(url,username,password);
		Statement stm = con.createStatement();
		ResultSet rs = stm.executeQuery(sql);
		rs.next();
		String name = rs.getString(1);
		System.out.println(name);
	}
}
