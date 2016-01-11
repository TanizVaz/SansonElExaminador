package mx.ipn.upiicsa.sansonelexaminador.security;

import java.util.HashMap;
import java.util.Map;

/**
 * 
 * @author Guillermo E. Martinez Barriga
 *
 */

public class ResourceList {
	
	private static final Map<String, Resource> content = new HashMap<String, Resource>();
	
	/**
	 * 
	 * @param resource
	 */
	public void add(Resource resource) 
	{
		content.put(resource.getUrl(), resource);
	}
	/**
	 * 
	 * @param url
	 * @return
	 */
	public Resource get(String url) 
	{
		return content.get(url);
	}
}
