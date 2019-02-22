package com.snowhobby.util;

import java.util.UUID;

public class MyRandomId {
	public static String randomUUID() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
	
}
