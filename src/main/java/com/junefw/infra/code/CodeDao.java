package com.junefw.infra.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {
	  
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.junefw.infra.code.CodeMpp";

	public int selectOneCount(CodeVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Code> selectList(CodeVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	public Code selectOne(CodeVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int insert(Code dto) { return sqlSession.insert(namespace + ".insert", dto); }
	public int update(Code dto) { return sqlSession.update(namespace + ".update", dto); }
	public int uelete(Code dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int delete(CodeVo vo) { return sqlSession.delete(namespace + ".delete", vo); }
	
	public int insertUploaded(Code dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
	
//	for cache
	public List<Code> selectListCachedCodeArrayList(){ return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null); }
}
