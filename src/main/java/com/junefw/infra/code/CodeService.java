package com.junefw.infra.code;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface CodeService {

	public void setRegMod(Code dto) throws Exception;
	public void uploadFiles(MultipartFile[] multipartFiles, Code dto, String tableName, int type) throws Exception;
	
	public int selectOneCount(CodeVo vo) throws Exception;
	public List<Code> selectList(CodeVo vo) throws Exception; 
	public Code selectOne(CodeVo vo) throws Exception;
	public int insert(Code dto) throws Exception;
	public int update(Code dto) throws Exception;
	public int uelete(Code dto) throws Exception; 
	public int delete(CodeVo vo) throws Exception;	
	
}
