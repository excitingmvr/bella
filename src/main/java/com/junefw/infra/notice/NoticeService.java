package com.junefw.infra.notice;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface NoticeService {

	public void setRegMod(Notice dto) throws Exception;
	public void uploadFiles(MultipartFile[] multipartFiles, Notice dto, String tableName, int type) throws Exception;
	
	public int selectOneCount(NoticeVo vo) throws Exception;
	public List<Notice> selectList(NoticeVo vo) throws Exception; 
	public Notice selectOne(NoticeVo vo) throws Exception;
	public int insert(Notice dto) throws Exception;
	public int update(Notice dto) throws Exception; 
	public int uelete(Notice dto) throws Exception; 
	public int delete(NoticeVo vo) throws Exception;
	
}
