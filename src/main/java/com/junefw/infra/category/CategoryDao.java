package com.junefw.infra.category;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CategoryDao{
	  
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.junefw.infra.category.CategoryMpp";
	
	public int selectOneCount(CategoryVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Category> selectList(CategoryVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	public Category selectOne(CategoryVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int insert(Category dto) { return sqlSession.insert(namespace + ".insert", dto); }
	public int update(Category dto) { return sqlSession.update(namespace + ".update", dto); }
	public int uelete(Category dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int delete(CategoryVo vo) { return sqlSession.delete(namespace + ".delete", vo); }
	
	public int insertUploaded(Category dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
	
//	for cache
	public List<Category> selectListCachedCategoryArrayList(){ return sqlSession.selectList(namespace + ".selectListCachedCategoryArrayList", null); }
}
