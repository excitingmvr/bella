package com.junefw.infra.nationality;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface NationalityService {

	public void setRegMod(Nationality dto) throws Exception;
	public void uploadFiles(MultipartFile[] multipartFiles, Nationality dto, String tableName, int type) throws Exception;
	
	public int selectOneCount(NationalityVo vo) throws Exception;
	public List<Nationality> selectList(NationalityVo vo) throws Exception; 
	public Nationality selectOne(NationalityVo vo) throws Exception;
	public int insert(Nationality dto) throws Exception;
	public int update(Nationality dto) throws Exception; 
	public int uelete(Nationality dto) throws Exception; 
	public int delete(NationalityVo vo) throws Exception;
	
}
