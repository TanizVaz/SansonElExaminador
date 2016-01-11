package mx.ipn.upiicsa.sansonelexaminador.util;

import java.io.IOException;
import java.io.Writer;
import java.util.Base64;
import java.util.Date;
import java.util.Random;

/**
 * 
 * @author Guillermo E. Martinez Barriga
 *
 */

public class Utility 
{
	/**
	 * 
	 * @param max
	 * @return
	 */
	public static int getRandom(int max)
	{
		return (int) (Math.random()*max);
	}
	/**
	 * 
	 * @param writer
	 */
	public static void closeWriter(Writer writer)
	{
		if(writer != null)
		{
			try
			{
				writer.close();
			}
			catch(IOException ex){}
		}
	}
	/**
	 * 
	 * @param writer
	 */
	public static void flushWriter(Writer writer)
	{
		if(writer != null)
		{
			try
			{
				writer.flush();
			}
			catch(IOException ex){}
		}
	}
	/**
	 * 
	 * @return
	 */
	public static String getActivationKey() {
		Random random = new Random(new Date().getTime());
		long randomValue = random.nextLong();
		Base64.Encoder encoder = Base64.getEncoder();
		
		return encoder.encodeToString(("" + randomValue).getBytes());
	}
	/**
	 * 
	 * @param str
	 * @return
	 */
	public static boolean hasAnStringThatIsNullOrEmpty(String str) {
		return (str == null || str.trim().isEmpty());
	}
	/**
	 * 
	 * @param list
	 * @return
	 */
	public static boolean hasAnStringThatIsNullOrEmpty(String... list) {
		if(list.length == 0){
			return true;
		}
		for(String str:list) {
			
			if(hasAnStringThatIsNullOrEmpty(str)) {
				return true;
			}
		}
		return false;
	}
	/**
	 * 
	 * @param str
	 * @param array
	 * @return
	 */
	public static boolean stringIsInArray(String str, String[] array) {
		for(String s:array) {
			if(s.equals(str)) 
				return true;
		}
		return false;
	}

	/* ********************************************************************************* *
	 *                                                                                   *
	 * ********************************************************************************* */
	
	public static void main(String[] args) {
		
		String str = "A";
		System.out.println(hasAnStringThatIsNullOrEmpty(str,".", ""));
		
	}
}
