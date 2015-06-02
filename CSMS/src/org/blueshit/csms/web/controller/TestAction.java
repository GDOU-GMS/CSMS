package org.blueshit.csms.web.controller;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

@Controller
@Scope("prototype")
public class TestAction {

	public String testStruts(){
		return "test";
	}
}
