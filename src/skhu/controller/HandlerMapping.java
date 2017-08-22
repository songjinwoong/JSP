package skhu.controller;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

public class HandlerMapping {
	private Map<String, Controller> mappings = null;
	
	public HandlerMapping() {
		this("C:/Users/M401-LECTURE/eclipse-workspace/mission_web/bean.properties");
	}
	public HandlerMapping(String configName) {
		mappings = new HashMap<String, Controller>();
		
		Properties prop = new Properties();
		
		try {
			InputStream inStream = new FileInputStream(configName);
			prop.load(inStream);
			
			Set<Object> keys = prop.keySet();
			for(Object key : keys) {				
				String className = prop.getProperty(key.toString());
				//Object형식이니 String으로 바꿔줘야한다!
				
				Class<?> clz = Class.forName(className);
				//<?> 모든 것을 받겠다.
				
				mappings.put(key.toString(), (Controller)clz.newInstance());
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		//2017.08.21 author by joon
		//mappings TODO, controller and web.xml
	}
}









