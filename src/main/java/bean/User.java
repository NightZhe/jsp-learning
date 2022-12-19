package bean;

public class User {

	protected int id;
	protected String name;
	protected String password;
	protected String email;
	protected int state;

	public User() {
		super();
	}

	public User(int id, String name, String password, String email, int state) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.email = email;
		this.state = state;
	}

	public User(String name, String password, String email, int state) {
		super();
		this.name = name;
		this.password = password;
		this.email = email;
		this.state = state;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

}
