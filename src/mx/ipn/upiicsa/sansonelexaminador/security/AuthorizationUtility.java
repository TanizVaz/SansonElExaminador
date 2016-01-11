package mx.ipn.upiicsa.sansonelexaminador.security;

import mx.ipn.upiicsa.sansonelexaminador.util.Message;
import mx.ipn.upiicsa.sansonelexaminador.util.Utility;
import mx.ipn.upiicsa.sansonelexaminador.valueobject.UserValueObject;


/**
 * 
 * @author Guillermo E. Martinez Barriga
 *
 */
public class AuthorizationUtility {
	
	private static final ResourceList resourceList = new ResourceList();
	
	static {
		
		Resource resource = null;
		
		// Recurso: SECURITY_CONTROLLER
				
		resource = new Resource(Resource.SecurityController.URL);
		
		resource.addPermissionByRole(Role.ALL, Resource.SecurityController.Action.AUTHENTICATE);
		resource.addPermissionByRole(Role.ADMIN, Resource.Action.ALL);
		resource.addPermissionByRole(Role.SOCIO, Resource.Action.ALL);
		
		resourceList.add(resource);
		
		// Recurso: INDEX_PAGE
		
		resource = new Resource(Resource.IndexPage.URL);

		resource.addPermissionByRole(Role.ALL, Resource.Action.ALL);

		
		resourceList.add(resource);
		
		// Recurso: LOGIN_PAGE
		
		resource = new Resource(Resource.LoginPage.URL);
		
		resource.addPermissionByRole(Role.ALL, Resource.Action.ALL);
		
		resourceList.add(resource);
		
		// Recurso: LOGOUT
		
		resource = new Resource(Resource.LogoutController.URL);
		
		resource.addPermissionByRole(Role.ALL, Resource.Action.ALL);
		
		resourceList.add(resource);
		
		// Recurso: ERROR_PAGE
		
		resource = new Resource(Resource.ErrorPage.URL);
		
		resource.addPermissionByRole(Role.ALL, Resource.Action.ALL);
		
		resourceList.add(resource);
		
		// Recurso: HEADER_FRAME
		
		resource = new Resource(Resource.HeaderFrame.URL);
		
		resource.addPermissionByRole(Role.ALL, Resource.Action.ALL);
		
		resourceList.add(resource);
		
		// Recurso: MESSAGES_FRAME
		
		resource = new Resource(Resource.MessagesFrame.URL);
		
		resource.addPermissionByRole(Role.ALL, Resource.Action.ALL);;
		
		resourceList.add(resource);
		
		// Recurso: MENU_FRAME

		resource = new Resource(Resource.MenuFrame.URL);
		
		resource.addPermissionByRole(Role.ALL, Resource.Action.ALL);
		
		resourceList.add(resource);
		
		// Recurso: SHOW_GALLETA_PAGE
		
		resource = new Resource(Resource.ShowGalletaPage.URL);
		
		resource.addPermissionByRole(Role.ALL, Resource.Action.ALL);
		
		resourceList.add(resource);
		
		// Recurso: GALLETA_CONTROLLER
		
		resource = new Resource(Resource.GalletaController.URL);
		
		resource.addPermissionByRole(Role.ALL, Resource.Action.ALL);
		
		resourceList.add(resource);
		
		// Recurso: BOLA_DE_CRISTAL_PAGE
		
		resource = new Resource(Resource.BolaDeCristalPage.URL);
		
		resource.addPermissionByRole(Role.ALL, Resource.Action.ALL);
		
		resourceList.add(resource);
		
		// Recurso: BOLA_DE_CRISTAL_CONTROLLER
		
		resource = new Resource(Resource.BolaDeCristalController.URL);
		
		resource.addPermissionByRole(Role.ALL, Resource.Action.ALL);
		
		resourceList.add(resource);
		
		// Recurso: CONSULTA_TU_HOROSCOPO_PAGE
		
		resource = new Resource(Resource.ConsultaTuHoroscopoPage.URL);
		
		resource.addPermissionByRole(Role.ALL, Resource.Action.ALL);
		
		resourceList.add(resource);
		
		// Recurso: SHOW_HOROSCOPO_PAGE
		
		resource = new Resource(Resource.ShowHoroscopoPage.URL);
		
		resource.addPermissionByRole(Role.ALL, Resource.Action.ALL);
		
		resourceList.add(resource);
		
		// Recurso: HOROSCOPO_CONTROLLER
		
		resource = new Resource(Resource.HoroscopoController.URL);
		
		resource.addPermissionByRole(Role.ALL, Resource.Action.ALL);
		
		resourceList.add(resource);

		// Recurso: SECURITY_CONTROLLER

		resource = new Resource(Resource.SecurityController.URL);
		
		resource.addPermissionByRole(Role.ALL, Resource.Action.ALL);
		
		resourceList.add(resource);
		
		// Recurso: UPDATE_PASSWORD_PAGE
		
		resource = new Resource(Resource.UpdatePasswordPage.URL);
		
		resource.addPermissionByRole(Role.ALL, Resource.Action.ALL);
		
		resourceList.add(resource);
	}
	/**
	 * 
	 * @param currentUser
	 * @param resource
	 * @return
	 */
	
	public static boolean userHasPermissionsForResource(UserValueObject currentUser, String resourceUrl) 
	{
		return userHasPermissionsForResource(currentUser, resourceUrl, Resource.Action.ALL);
	}
	/**
	 * 
	 * @param currentUser
	 * @param resourceUrl
	 * @param action
	 * @return
	 */
	public static boolean userHasPermissionsForResource(UserValueObject currentUser, String resourceUrl, String action) {

		System.out.println("AuthorizationUtility.userHasPermissionsFor() - [" + currentUser + "," + resourceUrl + "]");
		
		Resource resource = resourceList.get(resourceUrl);
		
		System.out.println("AuthorizationUtility.userHasPermissionsFor() - resource - " + resource);
		
		String[] actionsGranted = null;
		
		if(resource != null) 
		{
			actionsGranted = resource.getActionsGrantedToRole(currentUser.getRole());
			
			
			if(actionsGranted.length == 0)
			{
				throw new NullPointerException(Message.Configuration.NO_ACTION_CONFIGURATION_FOR_RESOURCE);
			}
			else if(Utility.stringIsInArray(action, actionsGranted))
			{
				return true;
			}
			else {
				return false;
			}
		}
		else
		{
			throw new NullPointerException(Message.Configuration.NO_SECURITY_CONFIGURATION_FOR_RESOURCE);
		}
	}
	
	public static void main(String[] args)
	{
		UserValueObject user = new UserValueObject();
		
		user.setId("guillermart@gmail.com");
		user.setRole(Role.SOCIO);

		
		if(userHasPermissionsForResource(user, Resource.IndexPage.URL)) 
		{
			System.out.println(user.getId() + " has permissions over \"" + Resource.IndexPage.URL + "\"");
		}
		else
		{
			System.out.println(user.getId() + " has no permissions over \"" + Resource.IndexPage.URL + "\"");
		}
	}
}
