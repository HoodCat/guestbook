package com.cafe24.guestbook.dao.test;

import com.cafe24.guestbook.dao.GuestBookDao;
import com.cafe24.guestbook.vo.GuestBookVo;

public class GuestBookDaoTest {
	public static void main(String[] args) {
		insertTest();
		getListTest();
		deleteTest();
	}
	
	private static void getListTest() {
		GuestBookDao dao = new GuestBookDao();
		for(GuestBookVo vo: dao.getList()) {
			System.out.println(vo);
		}
	}
	
	private static void insertTest() {
		GuestBookVo vo = new GuestBookVo(null, "테스트", "비밀번호", "아무말 대잔치", null);
		GuestBookDao dao = new GuestBookDao();
		dao.insert(vo);
	}
	
	private static void deleteTest() {
		GuestBookVo vo =new GuestBookVo(5L, null, "비밀번호", null, null);
		GuestBookDao dao = new GuestBookDao();
		dao.delete(vo);
	}
}
