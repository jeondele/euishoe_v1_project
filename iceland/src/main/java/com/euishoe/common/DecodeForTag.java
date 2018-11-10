package com.euishoe.common;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

public class DecodeForTag {
	public static String testDecode(String input) throws UnsupportedEncodingException {
		return URLDecoder.decode(input, "UTF-8");
	}
}
