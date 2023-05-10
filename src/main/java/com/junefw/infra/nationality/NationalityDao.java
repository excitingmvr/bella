package com.junefw.infra.nationality;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class NationalityDao{
	  
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.junefw.infra.nationality.NationalityMpp";
	
	public int selectOneCount(NationalityVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Nationality> selectList(NationalityVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	public Nationality selectOne(NationalityVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int insert(Nationality dto) { return sqlSession.insert(namespace + ".insert", dto); }
	public int update(Nationality dto) { return sqlSession.update(namespace + ".update", dto); }
	public int uelete(Nationality dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int delete(NationalityVo vo) { return sqlSession.delete(namespace + ".delete", vo); }
	
	public int insertUploaded(Nationality dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
}
