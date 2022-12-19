package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Drink;

public class DrinkDAO {
	private String jdbcURL = "jdbc:mysql://localhost:3306/demo?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "123456";

	private static final String INSERT_DRINKS_SQL = "INSERT INTO drinks" + "  (dname, dcount,dprice) VALUES "
			+ " (?, ?, ?);";

	private static final String SELECT_DRINK_BY_ID = "select id,name,password,email,state from users where id =?";
	private static final String SELECT_ALL_DRINKS = "select * from users";
	private static final String DELETE_DRINKS_SQL = "delete from users where id = ?;";
	private static final String UPDATE_DRINKS_SQL = "update users set name = ?,password= ?, email =?, state =? where id = ?;";
//	private static final String SELECT_USER_BY_PASSWORD = "select * from users where password = ?;";
//	private static final String SELECT_USER_BY_EMAIL = "select * from users where email = ?;";

	public DrinkDAO() {
		super();
	}

	public Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

	public List<Drink> selectAllDrinks() {
		List<Drink> drinks = new ArrayList<>();
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_DRINKS);) {
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				int did = rs.getInt("did");
				String dname = rs.getString("dname");
				int dcount = rs.getInt("dcount");
				int dprice = rs.getInt("dprice");

				drinks.add(new Drink(did, dname, dcount, dprice));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return drinks;
	}

	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

}
