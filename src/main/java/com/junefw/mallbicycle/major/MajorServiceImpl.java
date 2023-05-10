package com.junefw.mallbicycle.major;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.junefw.common.base.BaseServiceImpl;
import com.junefw.common.util.UtilDateTime;
import com.junefw.common.util.UtilRegMod;


@Service
public class MajorServiceImpl extends BaseServiceImpl implements MajorService{

	@Autowired
	MajorDao dao;

	@Override
	public void setRegMod(Major dto) throws Exception {
		HttpServletRequest httpServletRequest = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		
		dto.setRegIp(UtilRegMod.getClientIp(httpServletRequest));
		dto.setRegSeq(UtilRegMod.getSessionSeq(httpServletRequest));
		dto.setRegDeviceCd(UtilRegMod.getDevice());
		dto.setRegDateTime(UtilDateTime.nowDate());
		
		dto.setModIp(UtilRegMod.getClientIp(httpServletRequest));
		dto.setModSeq(UtilRegMod.getSessionSeq(httpServletRequest));
		dto.setModDeviceCd(UtilRegMod.getDevice());
		dto.setModDateTime(UtilDateTime.nowDate());
	}
	
	
	@Override
	public void uploadFiles(MultipartFile[] multipartFiles, Major dto, String tableName, int type) throws Exception {
		
//		int j = 0;
//    	for(MultipartFile multipartFile : multipartFiles) {
//    			
//    		if(!multipartFile.isEmpty()) {
//    		
//    			String className = dto.getClass().getSimpleName().toString().toLowerCase();		
//    			String fileName = multipartFile.getOriginalFilename();
//    			String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
//    			String uuid = UUID.randomUUID().toString();
//    			String uuidFileName = uuid + "." + ext;
//    			String pathModule = className;
//    			String nowString = UtilDateTime.nowString();
//    			String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
//    			String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
//    			String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/";
//    			
//    			File uploadPath = new File(path);
//    			
//    			if (!uploadPath.exists()) {
//    				uploadPath.mkdir();
//    			} else {
//    				// by pass
//    			}
//    			  
//    			multipartFile.transferTo(new File(path + uuidFileName));
//    			
//    			dto.setPath(pathForView);
//    			dto.setOriginalName(fileName);
//    			dto.setUuidName(uuidFileName);
//    			dto.setExt(ext);
//    			dto.setSize(multipartFile.getSize());
//    			
//	    		dto.setTableName(tableName);
//	    		dto.setType(type);
//	    		dto.setDefaultNy(j == 0 ? 1 : 0);
//	    		dto.setSort(j + 1);
//	    		dto.setPseq(dto.getIfnaSeq());
//
//				dao.insertUploaded(dto);
//				j++;
//    		}
//    	}
	}

//	goods
	@Override
	public int selectOneCountMajorGoods(MajorVo vo){
		return dao.selectOneCountMajorGoods(vo);
	}
	
	@Override
	public List<Major> selectListMajorGoods(MajorVo vo) throws Exception {
		return dao.selectListMajorGoods(vo);
	}
	
	@Override
	public Major selectOneMajorGoods(MajorVo vo) throws Exception {
		return dao.selectOneMajorGoods(vo);
	}
	
	@Override
	public int insertMajorGoods(Major dto) throws Exception {
		setRegMod(dto);
		return dao.insertMajorGoods(dto);
	}

	@Override
	public int updateMajorGoods(Major dto) throws Exception {
		setRegMod(dto);
		return dao.updateMajorGoods(dto);
	}
	
	@Override
	public int ueleteMajorGoods(Major dto) throws Exception {
		setRegMod(dto);
		return dao.ueleteMajorGoods(dto);
	}
	
	@Override
	public int deleteMajorGoods(MajorVo vo) throws Exception {
		return dao.deleteMajorGoods(vo);
	}
	
	
//	trade
	@Override
	public int selectOneCountMajorTrade(MajorVo vo){
		return dao.selectOneCountMajorTrade(vo);
	}
	
	@Override
	public List<Major> selectListMajorTrade(MajorVo vo) throws Exception {
		return dao.selectListMajorTrade(vo);
	}
	
	@Override
	public Major selectOneMajorTrade(MajorVo vo) throws Exception {
		return dao.selectOneMajorTrade(vo);
	}
	
	@Override
	public int insertMajorTrade(Major dto) throws Exception {
		setRegMod(dto);
		return dao.insertMajorTrade(dto);
	}
	
	@Override
	public int updateMajorTrade(Major dto) throws Exception {
		setRegMod(dto);
		return dao.updateMajorTrade(dto);
	}
	
	@Override
	public int ueleteMajorTrade(Major dto) throws Exception {
		setRegMod(dto);
		return dao.ueleteMajorTrade(dto);
	}
	
	@Override
	public int deleteMajorTrade(MajorVo vo) throws Exception {
		return dao.deleteMajorTrade(vo);
	}

	
//	favorite
	@Override
	public int selectOneCountMajorFavorite(MajorVo vo){
		return dao.selectOneCountMajorFavorite(vo);
	}
	
	@Override
	public List<Major> selectListMajorFavorite(MajorVo vo) throws Exception {
		return dao.selectListMajorFavorite(vo);
	}
	
	@Override
	public Major selectOneMajorFavorite(MajorVo vo) throws Exception {
		return dao.selectOneMajorFavorite(vo);
	}
	
	@Override
	public int insertMajorFavorite(Major dto) throws Exception {
		setRegMod(dto);
		return dao.insertMajorFavorite(dto);
	}
	
	
	@Override
	public int ueleteMajorFavorite(Major dto) throws Exception {
		setRegMod(dto);
		return dao.ueleteMajorFavorite(dto);
	}
	
	@Override
	public int deleteMajorFavorite(MajorVo vo) throws Exception {
		return dao.deleteMajorFavorite(vo);
	}
	
	
//	show
	@Override
	public int selectOneCountMajorShow(MajorVo vo){
		return dao.selectOneCountMajorShow(vo);
	}
	
	@Override
	public List<Major> selectListMajorShow(MajorVo vo) throws Exception {
		return dao.selectListMajorShow(vo);
	}
	
	@Override
	public Major selectOneMajorShow(MajorVo vo) throws Exception {
		return dao.selectOneMajorShow(vo);
	}
	
	
//	hit
	@Override
	public int insertMajorHit(Major dto) throws Exception {
		setRegMod(dto);
		return dao.insertMajorHit(dto);
	}
}
