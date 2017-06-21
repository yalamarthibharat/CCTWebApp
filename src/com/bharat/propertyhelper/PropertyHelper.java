package com.bharat.propertyhelper;

import com.typesafe.config.Config;
import com.typesafe.config.ConfigFactory;

/**
 * Created by Bharat Yalamarthi on 6/17/2017.
 */
public class PropertyHelper {
	private static final Config CONFIG = ConfigFactory.load();

	public static String getValueFromConfig(String propertyKey) {
		return CONFIG.getString(propertyKey);
	}
}
