package com.junefw.infra.category;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface CategoryService {

	public void setRegMod(Category dto) throws Exception;
	public void uploadFiles(MultipartFile[] multipartFiles, Category dto, String tableName, int type) throws Exception;
	
	public int selectOneCount(CategoryVo vo) throws Exception;
	public List<Category> selectList(CategoryVo vo) throws Exception; 
	public Category selectOne(CategoryVo vo) throws Exception;
	public int insert(Category dto) throws Exception;
	public int update(Category dto) throws Exception; 
	public int uelete(Category dto) throws Exception; 
	public int delete(CategoryVo vo) throws Exception;
	
}
