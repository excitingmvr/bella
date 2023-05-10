package com.junefw.test.test;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class TestDao{
	  
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.junefw.test.test.TestMpp";
	
	public int selectOneCount(TestVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Test> selectList(TestVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	public Test selectOne(TestVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int insert(Test dto) { return sqlSession.insert(namespace + ".insert", dto); }
	public int update(Test dto) { return sqlSession.update(namespace + ".update", dto); }
	public int uelete(Test dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int delete(TestVo vo) { return sqlSession.delete(namespace + ".delete", vo); }
	
	public int insertUploaded(Test dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
	
}
