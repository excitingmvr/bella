package com.junefw.infra.qna;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface QnaService {

	public void setRegMod(Qna dto) throws Exception;
	public void uploadFiles(MultipartFile[] multipartFiles, Qna dto, String tableName, int type) throws Exception;
	
	public int selectOneCount(QnaVo vo) throws Exception;
	public List<Qna> selectList(QnaVo vo) throws Exception; 
	public Qna selectOne(QnaVo vo) throws Exception;
	public int insert(Qna dto) throws Exception;
	public int update(Qna dto) throws Exception; 
	public int uelete(Qna dto) throws Exception; 
	public int delete(QnaVo vo) throws Exception;
	
}
