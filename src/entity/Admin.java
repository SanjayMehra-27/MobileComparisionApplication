package entity;

public class Admin {

	private String email;
	private String password;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Admin [" + (email != null ? "email=" + email + ", " : "")
				+ (password != null ? "password=" + password : "") + "]";
	}

}
