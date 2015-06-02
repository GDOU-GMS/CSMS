package org.blueshit.test;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;

import org.blueshit.csms.entity.Color;
import org.junit.Test;

public class MyTest {

/*	@Test
	public void test() throws Exception, SecurityException{
		setFinalStatic(Color.class.getDeclaredField("绿色"), "红色");
		for(Color c : Color.values()){
			System.out.println(c);
		}
	}
	
	void setFinalStatic(Field field,Object newValue) throws NoSuchFieldException, SecurityException, IllegalArgumentException, IllegalAccessException{
		field.setAccessible(true);
		Field modifiersField = Field.class.getDeclaredField("modifiers");
		System.out.println(modifiersField);
		modifiersField.setAccessible(true);
		modifiersField.setInt(field, field.getModifiers()&~Modifier.FINAL);
		field.set(null, newValue);
		
	}*/
}
