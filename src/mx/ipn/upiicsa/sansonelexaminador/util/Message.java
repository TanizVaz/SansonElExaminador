package mx.ipn.upiicsa.sansonelexaminador.util;

/**
 * 
 * @author Guillermo E. Martinez Barriga
 *
 */

public class Message {

	public class Session {
		public static final String ACTIVE_SESSION_WAS_CLOSED = "Hab" + SpecialCharacter.I_ACUTE_LOWERCASE + "a una sesi"
				+ SpecialCharacter.O_ACUTE_LOWERCASE + "n activa, la cual fue cerrada";
		public static final String NO_ACTIVE_SESSION = "No existe una sessi" + SpecialCharacter.O_ACUTE_LOWERCASE
				+ "n activa";
		public static final String USER_ALREADY_LINKED_TO_SESSION = "No se puede autenticar al usuario porque hay una sessi"
				+ SpecialCharacter.O_ACUTE_LOWERCASE + "n activa actualmente.";
		public static final String NO_USER_LINKED_TO_SESSION = "No hay un usuario firmado en la sesi"
				+ SpecialCharacter.O_ACUTE_LOWERCASE + "n";
		public static final String NEW_SESSION_OPENED = "Se abri" + SpecialCharacter.O_ACUTE_LOWERCASE + " una sesi"
				+ SpecialCharacter.O_ACUTE_LOWERCASE + "n nueva";
		public static final String SESSION_ENDED = "Se termin" + SpecialCharacter.O_ACUTE_LOWERCASE + " la sesi"
				+ SpecialCharacter.O_ACUTE_LOWERCASE + "n";
	}

	public class Credentials {
		public static final String USER_PASSWORD_MISSING = "Falta usuario y/o password";
		public static final String TEMPORARY_PASSWORD = "Password temporal";
		public static final String NOT_VALID_USER_PASSWORD = "Usuario/password no validos";
		public static final String PASSWORDS_ARE_NOT_EQUAL = "Las contrase" + SpecialCharacter.N_WITH_TILDE_LOWERCASE
				+ "as no son iguales";
		public static final String PASSWORD_REQUIREMENTS = "La contrase" + SpecialCharacter.N_WITH_TILDE_LOWERCASE
				+ "a debe tener una longitud m" + SpecialCharacter.I_ACUTE_LOWERCASE
				+ "nima de 8 caracteres y contener al menos alguna min" + SpecialCharacter.U_ACUTE_LOWERCASE
				+ "scula, may" + SpecialCharacter.U_ACUTE_LOWERCASE + "scula, n" + SpecialCharacter.U_ACUTE_LOWERCASE
				+ "mero y caract" + SpecialCharacter.E_ACUTE_LOWERCASE
				+ "r especial de los siguientes como es & $ % # _";
		public static final String PASSWORD_RECOVERY = "Si el usuario est" + SpecialCharacter.A_ACUTE_LOWERCASE
				+ " registrado en nuestro sistema se enviar" + SpecialCharacter.A_ACUTE_LOWERCASE + " la contrase"
				+ SpecialCharacter.N_WITH_TILDE_LOWERCASE + "a a su cuenta de correo.";
		public static final String NEW_PASSWORD_EQUALS_TO_PREVIOUS_ONE = "La contrase"
				+ SpecialCharacter.N_WITH_TILDE_LOWERCASE + "a nueva no puede ser igual a la actual";
		public static final String UPDATE_WAS_SUCCESSFUL = "Sus datos fueron actualizados exitosamente. Favor de ingresar sus credenciales para iniciar una sesion.";
		public static final String PASSWORD_WAS_UPDATED = "Su contrase" + SpecialCharacter.N_WITH_TILDE_LOWERCASE + "a fue actualizada satisfactoriamente.";
	}

	public class Form {
		public static final String INCOMPLETE_DATA = "Datos incompletos";
		public static final String FIELD_NULL_OR_EMPTY = "Un dato proporcionado contiene un valor nulo o vacio.";
		public static final String NO_ACTION_PROVIDED = "No se especific" + SpecialCharacter.O_ACUTE_LOWERCASE
				+ " la acci" + SpecialCharacter.O_ACUTE_LOWERCASE + "n ha ejecutar.";
		
	}
	
	public class Transaction {
		
	}
	
	public class Configuration {
		public static final String NO_ACTION_CONFIGURATION_FOR_RESOURCE = "No existe una configuracion de acciones para el recurso solicitado.";
		public static final String NO_SECURITY_CONFIGURATION_FOR_RESOURCE = "No existe una configuracion de seguridad para el recurso.";
	}

}
