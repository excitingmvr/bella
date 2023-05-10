package com.junefw.infra.notice;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDao{
	  
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.junefw.infra.notice.NoticeMpp";
	
	public int selectOneCount(NoticeVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Notice> selectList(NoticeVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	public Notice selectOne(NoticeVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int insert(Notice dto) { return sqlSession.insert(namespace + ".insert", dto); }
	public int update(Notice dto) { return sqlSession.update(namespace + ".update", dto); }
	public int uelete(Notice dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int delete(NoticeVo vo) { return sqlSession.delete(namespace + ".delete", vo); }
	
	public int insertUploaded(Notice dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
}
