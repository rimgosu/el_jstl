package com.controller;

import java.util.HashMap;

public class HashMapTest {

	public static void main(String[] args) {
		/*
		 * HashMap
		 * - 값을 저장할 때 key, value 형태로 저장
		 * = 딕셔너리
		 *   key : 중복 X, Value : 중복 O
		 * 
		 * 사용 방법 :
		 * HashMap<key DataType, Value DataType> h = new HashMap<key DataType, Value DataType>
		 * 
		 */
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("이름", "박병관");
		
		String name = map.get("이름");
		System.out.println(name);
		
		
		

	}

}
