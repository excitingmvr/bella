package com.junefw.infra.codegroup;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface CodeGroupService {

	public void setRegMod(CodeGroup dto) throws Exception;
	public void uploadFiles(MultipartFile[] multipartFiles, CodeGroup dto, String tableName, int type) throws Exception;
	
	public int selectOneCount(CodeGroupVo vo) throws Exception;
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception; 
	public CodeGroup selectOne(CodeGroupVo vo) throws Exception;
	public int insert(CodeGroup dto) throws Exception;
	public int update(CodeGroup dto) throws Exception;
	public int uelete(CodeGroup dto) throws Exception; 
	public int delete(CodeGroupVo vo) throws Exception;
	
	public List<CodeGroup> selectListWithoutPaging() throws Exception;
}
