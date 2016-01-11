package mx.ipn.upiicsa.sansonelexaminador.valueobject;

/**
 * 
 * @author Guillermo E. Martinez Barriga
 *
 */

public class UserValueObject implements ValueObject{

	private String id;
	private String firstName;
	private String lastName;
	private String role;
	
	private String status;
	private String activationKey;
	
	private boolean isTemporaryPassword = false;
	private int passwordMaxAge;
	private java.util.Date passwordLastUpdate = null;
	// private List<String> roles = null;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return firstName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public String getFullName() {
		return firstName + " " + lastName;
	}
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getActivationKey() {
		return activationKey;
	}
	public void setActivationKey(String activationKey) {
		this.activationKey = activationKey;
		
	}

	
	public boolean isTemporaryPassword() {
		return isTemporaryPassword;
	}
	public void setTemporaryPassword(boolean isTemporaryPassword) {
		this.isTemporaryPassword = isTemporaryPassword;
	}
	
	public int getPasswordMaxAge() {
		return passwordMaxAge;
	}
	public void setPasswordMaxAge(int passwordMaxAge) {
		this.passwordMaxAge = passwordMaxAge;
	}
	
	public java.util.Date getPasswordLastUpdate() {
		return passwordLastUpdate;
	}
	public void setPasswordLastUpdate(java.util.Date passwordLastUpdate) {
		this.passwordLastUpdate = passwordLastUpdate;
	}
	
	/**
	 * 
	 * @param currentUser
	 * @param role
	 * @return
	 */
	public boolean isUserInRole(String role) {

		if (this.role.equals(role)) {
			return true;
		}

		return false;
	}
	/**
	 * 
	 */
	public String toString() {
		return "[" + id + "," + firstName + lastName + ", " + role + ", " + status + "," +
				activationKey + isTemporaryPassword + ", " + passwordMaxAge + ", " + passwordLastUpdate + "]";
		
	}
}