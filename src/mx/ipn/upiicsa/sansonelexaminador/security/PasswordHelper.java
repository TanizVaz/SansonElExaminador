package mx.ipn.upiicsa.sansonelexaminador.security;

import java.util.Date;
import java.util.Random;

/**
 * 
 * @author Guillermo E. Martinez Barriga
 *
 */

public class PasswordHelper {
	
	private static final char[] ESPECIAL_CHARACTERS = { '#', '_', '$', '&', '%' };
	private static final int MIN_LENGHT = 8;

	public static class Strength {

		public static final int VERY_WEAK = 0;
		public static final int WEAK = 1;
		public static final int POOR = 2;
		public static final int REGULAR = 3;
		public static final int STRONG = 4;
		public static final int VERY_STRONG = 5;
	}
	/**
	 * 
	 * @return
	 */
	public static String getVeryStrongTemporaryPassword() {
		String password = null;
		do {
			password = getTemporaryPassword();
		} while (howStrongIsThisPassword(password) != Strength.VERY_STRONG);

		System.out.println("AuthorizationUtility.getStrongTemporaryPassword() - [" + password + "]");
		return password;
	}
	/**
	 * 
	 * @param password
	 * @return
	 */
	private static String getTemporaryPassword() {
		Random random = new Random(new Date().getTime());
		
		StringBuffer sb = new StringBuffer();

		char character;

		while (sb.length() != MIN_LENGHT) {

			switch (random.nextInt(7)) {

			case 0:
			case 1: // Asignar Minuscula

				character = (char) ('a' + random.nextInt('z' - 'a'));
				sb.append(character);
				break;
			case 2:
			case 3: // Asignar Mayuscula

				character = (char) ('A' + random.nextInt('Z' - 'A'));
				sb.append(character);
				break;
			case 4:
			case 5: // Asignar Numero

				character = (char) ('0' + random.nextInt('9' - '0'));
				sb.append(character);
				break;
			case 6: // Asignar Caracter Especial

				character = ESPECIAL_CHARACTERS[random.nextInt(ESPECIAL_CHARACTERS.length)];
				sb.append(character);
				break;
			}
		}
		System.out.println("AuthorizationUtility.getTemporaryPassword() - [" + sb.toString() + "]");

		return sb.toString();
	}
	/**
	 * 
	 * @param password
	 * @return
	 */

	public static int howStrongIsThisPassword(String password) {
		int index = 0;
		boolean lowercaseAlreadyTakenIntoAccount = false;
		boolean uppercaseAlreadyTakenIntoAccount = false;
		boolean numberAlreadyTakenIntoAccount = false;
		boolean especialCharacterAlreadyTakenIntoAccount = false;

		if (password.length() >= MIN_LENGHT) {
			index++;
			// System.out.println("AuthorizationUtility.howStrongIsThisPassword()
			// - lenght [" + password.length() + "] OK index [" + index
			// +"]");
		}

		for (int i = 0; i < password.length(); i++) {

			if (!lowercaseAlreadyTakenIntoAccount && (password.charAt(i) >= 'a' && password.charAt(i) <= 'z')) {
				index++;
				lowercaseAlreadyTakenIntoAccount = true;
				// System.out.println("AuthorizationUtility.howStrongIsThisPassword()
				// - lowercase [" + password.charAt(i) + "] OK index [" +
				// index +"]");
				continue;
			}

			if (!uppercaseAlreadyTakenIntoAccount && (password.charAt(i) >= 'A' && password.charAt(i) <= 'Z')) {
				index++;
				uppercaseAlreadyTakenIntoAccount = true;
				// System.out.println("AuthorizationUtility.howStrongIsThisPassword()
				// - uppercase [" + password.charAt(i) + "] OK index [" +
				// index +"]");
				continue;
			}

			if (!numberAlreadyTakenIntoAccount && (password.charAt(i) >= '0' && password.charAt(i) <= '9')) {
				index++;
				numberAlreadyTakenIntoAccount = true;
				// System.out.println("AuthorizationUtility.howStrongIsThisPassword()
				// - number [" + password.charAt(i) + "] OK index [" + index
				// +"]");
				continue;
			}

			if (!especialCharacterAlreadyTakenIntoAccount) {

				for (int j = 0; j < ESPECIAL_CHARACTERS.length; j++) {
					if (password.charAt(i) == ESPECIAL_CHARACTERS[j]) {
						index++;
						especialCharacterAlreadyTakenIntoAccount = true;
						// System.out.println("AuthorizationUtility.howStrongIsThisPassword()
						// - especial [" + password.charAt(i) + "] OK index
						// [" + index +"]");
					}
				}
			}
		}

		// System.out.println("AuthorizationUtility.howStrongIsThisPassword()
		// - [" + password +"][" + index + "]");
		return index;
	}

}

