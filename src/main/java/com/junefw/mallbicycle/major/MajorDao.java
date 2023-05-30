package com.junefw.mallbicycle.major;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MajorDao{
	  
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
			                           
	private static String namespace = "com.junefw.mallbicycle.major.MajorMpp";
	
//	goods
	public int selectOneCountMajorGoods(MajorVo vo) { return sqlSession.selectOne(namespace + ".selectOneCountMajorGoods", vo); }
	public List<Major> selectListMajorGoods(MajorVo vo){ return sqlSession.selectList(namespace + ".selectListMajorGoods", vo); }
	public Major selectOneMajorGoods(MajorVo vo) { return sqlSession.selectOne(namespace + ".selectOneMajorGoods", vo); }
	public int insertMajorGoods(Major dto) { return sqlSession.insert(namespace + ".insertMajorGoods", dto); }
	public int updateMajorGoods(Major dto) { return sqlSession.update(namespace + ".updateMajorGoods", dto); }
	public int ueleteMajorGoods(Major dto) { return sqlSession.update(namespace + ".ueleteMajorGoods", dto); }
	public int deleteMajorGoods(MajorVo vo) { return sqlSession.delete(namespace + ".deleteMajorGoods", vo); }
	
	public int insertUploadedMajorGoods(Major dto) { return sqlSession.insert("Base" + ".insertUploadedMajorGoods", dto); }
	
//	trade
	public int selectOneCountMajorTrade(MajorVo vo) { return sqlSession.selectOne(namespace + ".selectOneCountMajorTrade", vo); }
	public List<Major> selectListMajorTrade(MajorVo vo){ return sqlSession.selectList(namespace + ".selectListMajorTrade", vo); }
	public Major selectOneMajorTrade(MajorVo vo) { return sqlSession.selectOne(namespace + ".selectOneMajorTrade", vo); }
	public int insertMajorTrade(Major dto) { return sqlSession.insert(namespace + ".insertMajorTrade", dto); }
	public int updateMajorTrade(Major dto) { return sqlSession.update(namespace + ".updateMajorTrade", dto); }
	public int updateMajorTradeSalesNy(Major dto) { return sqlSession.update(namespace + ".updateMajorTradeSalesNy", dto); }
	public int ueleteMajorTrade(Major dto) { return sqlSession.update(namespace + ".ueleteMajorTrade", dto); }
	public int deleteMajorTrade(MajorVo vo) { return sqlSession.delete(namespace + ".deleteMajorTrade", vo); }
	
	public int insertUploadedMajorTrade(Major dto) { return sqlSession.insert("Base" + ".insertUploadedMajorTrade", dto); }

//	favorite
	public int selectOneCountMajorFavorite(MajorVo vo) { return sqlSession.selectOne(namespace + ".selectOneCountMajorFavorite", vo); }
	public List<Major> selectListMajorFavorite(MajorVo vo){ return sqlSession.selectList(namespace + ".selectListMajorFavorite", vo); }
	public Major selectOneMajorFavorite(MajorVo vo) { return sqlSession.selectOne(namespace + ".selectOneMajorFavorite", vo); }
	public int insertMajorFavorite(Major dto) { return sqlSession.insert(namespace + ".insertMajorFavorite", dto); }
	public int ueleteMajorFavorite(Major dto) { return sqlSession.update(namespace + ".ueleteMajorFavorite", dto); }
	public int deleteMajorFavorite(MajorVo vo) { return sqlSession.delete(namespace + ".deleteMajorFavorite", vo); }
	
	public int insertUploadedMajorFavorite(Major dto) { return sqlSession.insert("Base" + ".insertUploadedMajorFavorite", dto); }
	
//	show
	public int selectOneCountMajorShow(MajorVo vo) { return sqlSession.selectOne(namespace + ".selectOneCountMajorShow", vo); }
	public List<Major> selectListMajorShow(MajorVo vo){ return sqlSession.selectList(namespace + ".selectListMajorShow", vo); }
	public Major selectOneMajorShow(MajorVo vo) { return sqlSession.selectOne(namespace + ".selectOneMajorShow", vo); }	

//	hit
	public int insertMajorHit(Major dto) { return sqlSession.insert(namespace + ".insertMajorHit", dto); }
	
}
