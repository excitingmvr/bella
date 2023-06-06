package com.junefw.mallbicycle.majorcomment;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface MajorCommentService {

	public void setRegMod(MajorComment dto) throws Exception;
	public void uploadFiles(MultipartFile[] multipartFiles, MajorComment dto, String tableName, int type) throws Exception;
	
//	goods
	public int selectOneCountMajorComment(MajorCommentVo vo) throws Exception;
	public List<MajorComment> selectListMajorComment(MajorCommentVo vo) throws Exception; 
	public MajorComment selectOneMajorComment(MajorCommentVo vo) throws Exception;
	public int insertMajorComment(MajorComment dto) throws Exception;
	public int updateMajorComment(MajorComment dto) throws Exception; 
	public int ueleteMajorComment(MajorComment dto) throws Exception; 
	public int deleteMajorComment(MajorCommentVo vo) throws Exception;
	

	
}
