package org.blueshit.csms.configuration;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class Configuration {

	private static int pageSize;



	private static InputStream in;
	static{
		Properties props = new Properties();
		Configuration.class.getClassLoader();
		in = ClassLoader.getSystemResourceAsStream("default.properties");
		try {
			props.load(in);
			pageSize = Integer.parseInt(props.getProperty("pageSize"));
		} catch (IOException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally{
			if(in!=null){
				try {
					in.close();
				} catch (IOException e) {
					e.printStackTrace();
					throw new RuntimeException(e);
				}
			}
		}
	}
	public static int getPageSize() {
		return pageSize;
	}

	public static void setPageSize(int pageSize) {
		Configuration.pageSize = pageSize;
	}
	
}
