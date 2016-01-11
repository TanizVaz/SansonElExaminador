package mx.ipn.upiicsa.sansonelexaminador.security;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import mx.ipn.upiicsa.sansonelexaminador.valueobject.UserValueObject;

/**
 * 
 * @author Guillermo E. Martinez Barriga
 *
 */

public class YAuthorizationUtility {
	
	private static final Map<String, List<String>> permissionsByRole = new HashMap<String, List<String>>();

	static {
	
	    // Mejor MAP or SET   permissions.put(Resource.AUTENTICAR, "*"); permissions.put(Resource.USER, "AUTHENTICATE")
	    
	    
//		Map basicPermissionForAnyRole = new Map<String,String>();
//		Map optionsAllowedForThisRole = null;

		List<String> basicPermissionForAnyRole = new ArrayList<String>();
		List<String> optionsAllowedForThisRole = null;
		
		// Permisos para todos los perfiles


		/*
		// Permisos para perfil ADMINISTRATIVO
		optionsAllowedForThisRole = new ArrayList<String>();

		optionsAllowedForThisRole.add(basicPermissionForAnyRole);
		// optionsAllowedForThisRole.add(Resource.CONSULTAR_ALUMNOS);
		optionsAllowedForThisRole.add(Resource.REGISTRAR_ALUMNO);
		optionsAllowedForThisRole.add(Resource.REGISTRAR_PAGE);

		permissionsByRole.put(Role.ADMINISTRATIVO, optionsAllowedForThisRole);

		// Permisos para perfil PROFESOR
		optionsAllowedForThisRole = new ArrayList<String>();

		optionsAllowedForThisRole.add(basicPermissionForAnyRole);
		optionsAllowedForThisRole.add(Resource.CONSULTAR_ALUMNOS);

		permissionsByRole.put(Role.PROFESOR, optionsAllowedForThisRole);

		// Permisos para perfil ESTUDIANTE_HONORARIO
		optionsAllowedForThisRole = new ArrayList<String>();

		optionsAllowedForThisRole.add(basicPermissionForAnyRole);
		optionsAllowedForThisRole.add(Resource.CONSULTAR_CURSOS_GRATUITOS);

		permissionsByRole.put(Role.ESTUDIANTE_HONORARIO, optionsAllowedForThisRole);
		*/

	}
	/*
	public class PermissionsByRole {
		private String role = null;
		
		private PermissionsByRole(String role) {
			this.role = role;
		}
		
		private void addResourcePermissions(String resource, ) {
			
		}
		
	}
	*/


	
	
	/**
	 * 
	 */


	
	/**
	 * 
	 * @param currentUser
	 * @param resource
	 * @return
	 */
	public static boolean userHasPermissionsFor(UserValueObject currentUser, String resource) {

		System.out.println("AuthorizationUtility.userHasPermissionsFor() - [" + currentUser + "," + resource + "]");

		List<String> optionsAllowedForThisRole = null;

		if (currentUser.getRole().equals(Role.ADMIN)) {
			System.out.println(
					"AuthorizationUtility.userHasPermissionsFor() - Es ADMIN por lo que tiene permisos para todo");

			return true;
		}

		optionsAllowedForThisRole = permissionsByRole.get(currentUser.getRole());
		// System.out.println("AuthorizationUtility.userHasPermissionsFor() -
		// optionsAllowedForThisRole ["+ optionsAllowedForThisRole+ "]");

		if (optionsAllowedForThisRole.contains(resource)) {
			System.out.println(
					"AuthorizationUtility.userHasPermissionsFor() - Usuario SI tiene permisos para este recurso.");
			return true;
		}
		System.out
				.println("AuthorizationUtility.userHasPermissionsFor() - Usuario NO tiene permisos para este recurso.");

		return false;
	}	
	/**
	 * 
	 * @param currentUser
	 * @param role
	 * @return
	 */
	public static boolean isUserInRole(UserValueObject currentUser, String role) {

		if (currentUser.getRole().equals(role)) {
			return true;
		}

		return false;
	}
	
	/**
	 * 
	 * @author Guillermo E. Martinez Barriga
	 *
	 */


	

}


