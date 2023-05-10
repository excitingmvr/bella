package com.junefw.location.location;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface LocationService {

	public void setRegMod(Location dto) throws Exception;
	public void uploadFiles(MultipartFile[] multipartFiles, Location dto, String tableName, int type) throws Exception;
	
	public int selectOneCount(LocationVo vo) throws Exception;
	public List<Location> selectList(LocationVo vo) throws Exception; 
	public Location selectOne(LocationVo vo) throws Exception;
	public int insert(Location dto) throws Exception;
	public int update(Location dto) throws Exception; 
	public int uelete(Location dto) throws Exception; 
	public int delete(LocationVo vo) throws Exception;
	
}
