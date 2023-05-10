package com.junefw.mallbicycle.major;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface MajorService {

	public void setRegMod(Major dto) throws Exception;
	public void uploadFiles(MultipartFile[] multipartFiles, Major dto, String tableName, int type) throws Exception;
	
//	goods
	public int selectOneCountMajorGoods(MajorVo vo) throws Exception;
	public List<Major> selectListMajorGoods(MajorVo vo) throws Exception; 
	public Major selectOneMajorGoods(MajorVo vo) throws Exception;
	public int insertMajorGoods(Major dto) throws Exception;
	public int updateMajorGoods(Major dto) throws Exception; 
	public int ueleteMajorGoods(Major dto) throws Exception; 
	public int deleteMajorGoods(MajorVo vo) throws Exception;
	
//	trade
	public int selectOneCountMajorTrade(MajorVo vo) throws Exception;
	public List<Major> selectListMajorTrade(MajorVo vo) throws Exception; 
	public Major selectOneMajorTrade(MajorVo vo) throws Exception;
	public int insertMajorTrade(Major dto) throws Exception;
	public int updateMajorTrade(Major dto) throws Exception; 
	public int ueleteMajorTrade(Major dto) throws Exception; 
	public int deleteMajorTrade(MajorVo vo) throws Exception;
	
//	favorite
	public int selectOneCountMajorFavorite(MajorVo vo) throws Exception;
	public List<Major> selectListMajorFavorite(MajorVo vo) throws Exception; 
	public Major selectOneMajorFavorite(MajorVo vo) throws Exception;
	public int insertMajorFavorite(Major dto) throws Exception;
	public int ueleteMajorFavorite(Major dto) throws Exception; 
	public int deleteMajorFavorite(MajorVo vo) throws Exception;

//	show
	public int selectOneCountMajorShow(MajorVo vo) throws Exception;
	public List<Major> selectListMajorShow(MajorVo vo) throws Exception; 
	public Major selectOneMajorShow(MajorVo vo) throws Exception;	
	
//	hit
	public int insertMajorHit(Major dto) throws Exception;	
	
}
