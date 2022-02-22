package config;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisConfig {
	private static SqlSessionFactory sqlsesstion_f;
	static {
		try {
			String resource = "./config/config.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			sqlsesstion_f = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("초기화 문제 발생, MybatisConfig.java");
		}
	}
	public static SqlSessionFactory getSqlsesstion_f() {
		return sqlsesstion_f;
	}

	

}