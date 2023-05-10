package com.junefw.infra.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {
	  
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.junefw.infra.codegroup.CodeGroupMpp";

	public int selectOneCount(CodeGroupVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<CodeGroup> selectList(CodeGroupVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	public CodeGroup selectOne(CodeGroupVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int insert(CodeGroup dto) { return sqlSession.insert(namespace + ".insert", dto); }
	public int update(CodeGroup dto) { return sqlSession.update(namespace + ".update", dto); }
	public int uelete(CodeGroup dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int delete(CodeGroupVo vo) { return sqlSession.delete(namespace + ".delete", vo); }
	
	public int insertUploaded(CodeGroup dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
	
	public List<CodeGroup> selectListWithoutPaging(){ return sqlSession.selectList(namespace + ".selectListWithoutPaging", ""); }
	
}
