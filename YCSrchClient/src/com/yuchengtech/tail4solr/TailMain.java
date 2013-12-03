package com.yuchengtech.tail4solr;

import java.io.FileNotFoundException;
import com.yuchengtech.tail4solr.client.tail.Tail;

public class TailMain {

	public static void main(String[] args) {
		try {
			Tail tail = new Tail();
			tail.start();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}

}
