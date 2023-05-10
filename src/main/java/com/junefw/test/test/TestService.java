package com.junefw.test.test;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface TestService {

	public void setRegMod(Test dto) throws Exception;
	public void uploadFiles(MultipartFile[] multipartFiles, Test dto, String tableName) throws Exception;
	
	public int selectOneCount(TestVo vo) throws Exception;
	public List<Test> selectList(TestVo vo) throws Exception; 
	public Test selectOne(TestVo vo) throws Exception;
	public int insert(Test dto) throws Exception;
	public int update(Test dto) throws Exception; 
	public int uelete(Test dto) throws Exception; 
	public int delete(TestVo vo) throws Exception;
	
}
