package pack1;



/**
 * @author Alumno18
 *
 */
public class user {
	private String name;
	private String password;

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

	public String login(){
		// Image here a database access to validate the users
		if (name.equalsIgnoreCase("tester") && password.equalsIgnoreCase("tester")){
			return "success";
		} else {
			return "failed";
		}

	}
}
