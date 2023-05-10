package com.junefw.location.location;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class LocationDao{
	  
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static String namespace = "com.junefw.location.location.LocationMpp";
	
	public int selectOneCount(LocationVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Location> selectList(LocationVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	public Location selectOne(LocationVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int insert(Location dto) { return sqlSession.insert(namespace + ".insert", dto); }
	public int update(Location dto) { return sqlSession.update(namespace + ".update", dto); }
	public int uelete(Location dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int delete(LocationVo vo) { return sqlSession.delete(namespace + ".delete", vo); }
	
	public int insertUploaded(Location dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
}
