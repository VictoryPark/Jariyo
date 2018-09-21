package com.jariyo.common.db;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyAppSqlConfig {
	private static final SqlSession sqlMapper;
	
	static {
		try {			//환경설정.xml에 있는 정보를 읽어오는 실행문
			String resource = "config/mybatis/sqlMapConfig.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			SqlSessionFactory sqlFactory = new SqlSessionFactoryBuilder().build(reader);
			//sqlMapper = sqlFactory.openSession();		//사용자가 직접 커밋해야함 -매개변수 default 값은 false 이다.
			sqlMapper = sqlFactory.openSession(true); //자동 커밋되는 코드
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(
					"Error initializing MyAppSqlConfig class. Cause: " + e);
		}
	} //static 블록 - 객체가 사용되기 전에 딱 한번 수행되는 블록

	public static SqlSession getSqlSessionInstance() {
		return sqlMapper;
	}//getSqlSessionInstance 메소드
	
} //end class