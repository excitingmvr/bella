package com.junefw.infra.qna;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class QnaDao{
	  
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.junefw.infra.qna.QnaMpp";
	
	public int selectOneCount(QnaVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Qna> selectList(QnaVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	public Qna selectOne(QnaVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int insert(Qna dto) { return sqlSession.insert(namespace + ".insert", dto); }
	public int update(Qna dto) { return sqlSession.update(namespace + ".update", dto); }
	public int uelete(Qna dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int delete(QnaVo vo) { return sqlSession.delete(namespace + ".delete", vo); }
	
	public int insertUploaded(Qna dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
}
