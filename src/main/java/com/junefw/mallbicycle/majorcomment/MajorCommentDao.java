package com.junefw.mallbicycle.majorcomment;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MajorCommentDao{
	  
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
			                           
	private static String namespace = "com.junefw.mallbicycle.majorcomment.MajorCommentMpp";
	
//	goods
	public int selectOneCountMajorComment(MajorCommentVo vo) { return sqlSession.selectOne(namespace + ".selectOneCountMajorComment", vo); }
	public List<MajorComment> selectListMajorComment(MajorCommentVo vo){ return sqlSession.selectList(namespace + ".selectListMajorComment", vo); }
	public MajorComment selectOneMajorComment(MajorCommentVo vo) { return sqlSession.selectOne(namespace + ".selectOneMajorComment", vo); }
	public int insertMajorComment(MajorComment dto) { return sqlSession.insert(namespace + ".insertMajorComment", dto); }
	public int updateMajorComment(MajorComment dto) { return sqlSession.update(namespace + ".updateMajorComment", dto); }
	public int ueleteMajorComment(MajorComment dto) { return sqlSession.update(namespace + ".ueleteMajorComment", dto); }
	public int deleteMajorComment(MajorCommentVo vo) { return sqlSession.delete(namespace + ".deleteMajorComment", vo); }
	
}
