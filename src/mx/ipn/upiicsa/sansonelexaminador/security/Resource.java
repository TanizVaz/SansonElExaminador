package mx.ipn.upiicsa.sansonelexaminador.security;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import mx.ipn.upiicsa.sansonelexaminador.util.Message;
import mx.ipn.upiicsa.sansonelexaminador.util.Utility;

/**
 * 
 * @author Guillermo E. Martinez Barriga
 *
 */
public class Resource {
		
	public class IndexPage
	{
		public static final String URL ="/index.jsp";
	}

	public static class LoginPage
	{
		public static final String URL ="/login.jsp";
	}

	public static class LogoutController
	{
		public static final String URL ="/logout";
	}
	
	public static class ErrorPage
	{
		public static final String URL ="/error.jsp";
	}
	
	public static class HeaderFrame
	{
		public static final String URL ="/header.frame.jsp";
	}

	public static class MessagesFrame
	{
		public static final String URL ="/messages.frame.jsp";
	}

	public static class MenuFrame 
	{
		public static final String URL ="/menu.frame.jsp";
	}
	
	public static class ShowGalletaPage
	{
		public static final String URL ="/showGalleta.jsp";
	}

	public static class GalletaController
	{
		public static final String URL ="/galleta.jsp";
	}
	
	public static class BolaDeCristalPage
	{
		public static final String URL ="/bolaDeCristal.jsp";
	}

	public static class BolaDeCristalController
	{
		public static final String URL ="/bolaDeCristal";
	}
	
	public static class ConsultaTuHoroscopoPage
	{
		public static final String URL ="/consultaTuHoroscopo.jsp";
	}

	public static class ShowHoroscopoPage
	{
		public static final String URL ="/showHoroscopo.jsp";
	}
	
	public static class HoroscopoController
	{
		public static final String URL ="/horoscopo";
	}

	public static class UpdatePasswordPage
	{
		public static final String URL ="/updatePassword.jsp";
	}
	
	public static class SecurityController
	{
		
		public static final String URL ="/security";
		
		public static class Action {
			public static final String AUTHENTICATE = "authenticate";
			public static final String CHANGE_PASSWORD = "changePassword";
		}
		
	}
	

	/**
	 * 
	 * @author Guillermo E. Martinez Barriga
	 *
	 */
	public static class Action {
		public static final String ALL = "*";
	}

	/**
	 * 
	 */
	private String url = null; 
	private Map<String, Set<String>> listOfActionsGrantedByRole = null;
	
	/**
	 * 
	 * @param name
	 * @param url
	 */
	public Resource(String url) {
		this.url = url;
		
		listOfActionsGrantedByRole = new HashMap<String, Set<String>>();
	}
	/**
	 * 
	 * @return
	 */
	public String getUrl()
	{
		return url;
	}
	/**
	 * 
	 * @param role
	 * @param action
	 */
	public void addPermissionByRole(String role, String actionGrantedToRole) {
		
		if(Utility.hasAnStringThatIsNullOrEmpty(role, actionGrantedToRole)) {
			throw new NullPointerException(Message.Form.FIELD_NULL_OR_EMPTY);
		}
		
		if(!listOfActionsGrantedByRole.containsKey(role)) {
			
			listOfActionsGrantedByRole.put(role,  new HashSet<String>());
		}
		
		listOfActionsGrantedByRole.get(role).add(actionGrantedToRole);  
	}
	/**
	 * 
	 * @param role
	 * @param actions
	 */
	public void addPermissionByRole(String role, String... actionsGrantedToRole) {
		
		if(Utility.hasAnStringThatIsNullOrEmpty(role) ||  Utility.hasAnStringThatIsNullOrEmpty(actionsGrantedToRole)) {
			throw new NullPointerException(Message.Form.FIELD_NULL_OR_EMPTY);
		}
		
		if(!listOfActionsGrantedByRole.containsKey(role)) {
			
			listOfActionsGrantedByRole.put(role,  new HashSet<String>());
		}

		for(String action:actionsGrantedToRole) {

			listOfActionsGrantedByRole.get(role).add(action);
		}
	}
	/**
	 * 
	 * @param role
	 * @param action
	 * @return
	 */
	public boolean roleHasPermissionGrantedOverAnAction(String role, String action) {
		
		Set<String> actionsGrantedToRole = listOfActionsGrantedByRole.get(role);
		
		return actionsGrantedToRole.contains(action);
	}
	/**
	 * 
	 * @param role
	 * @return
	 */
	public String[] getActionsGrantedToRole(String role) {

		Set<String> actionsGrantedToRole  = new HashSet<String>();
		
		// Get Actions for ALL Roles
		if(listOfActionsGrantedByRole.get(Role.ALL) != null)
		{
			actionsGrantedToRole.addAll(listOfActionsGrantedByRole.get(Role.ALL));
		}
		// Get Actions for Requested Role
		if(listOfActionsGrantedByRole.get(role) != null)
		{
			actionsGrantedToRole.addAll(listOfActionsGrantedByRole.get(role));
		}
		

		// actionsGrantedToRole = listOfActionsGrantedByRole.get(role);
		
		System.out.println("XResource.getActionsGrantedToRole() - role - " +  role + " - actionsGrantedToRole - " + actionsGrantedToRole);

		if(actionsGrantedToRole != null) {
			
			return actionsGrantedToRole.toArray(new String[0]); 
		}
		
		return new String[0];
	}	
	/**
	 * 
	 */
	public String toString() {
		
		
		StringBuffer sb = new StringBuffer();
		sb.append("Resource [ url: \"" + url + "\", ActionsGrantedToRole: ");
		
		
		Set<String> rolesSet = listOfActionsGrantedByRole.keySet();
		String[] roles = rolesSet.toArray(new String[0]);

		String[] actionsGranted = null;
		
		sb.append("{ ");
		
		for(int i=0; i < roles.length;i++) {
			
			sb.append("role: \"" + roles[i] + "\", {\"");
			
			actionsGranted = listOfActionsGrantedByRole.get(roles[i]).toArray(new String[0]);
			
			
			for(int j=0; j < actionsGranted.length;j++)
			{
				
				sb.append(actionsGranted[j]);
				sb.append("\"");
				
				if((j+1) < actionsGranted.length)
				{
					sb.append(", \"");
				}
			}
			sb.append("}");
			if((i+1) < roles.length)
			{
				sb.append(", ");
			}
			
		}

		sb.append("} ]");

			
		return sb.toString();
	}
	
	public static void main(String[] args) {
		Resource resource = new Resource("/user");
		
		resource.addPermissionByRole("ADMIN", "authenticate", "changePassword", "authenticate", "*");
		resource.addPermissionByRole("*","autenticar","*");
		

		System.out.println(resource);
		
		resource.getActionsGrantedToRole("ADMIN");
	}

}
