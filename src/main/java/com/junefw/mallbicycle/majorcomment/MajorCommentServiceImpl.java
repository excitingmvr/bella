package com.junefw.mallbicycle.majorcomment;

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
public class MajorCommentServiceImpl extends BaseServiceImpl implements MajorCommentService{

	@Autowired
	MajorCommentDao dao;

	@Override
	public void setRegMod(MajorComment dto) throws Exception {
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
	public void uploadFiles(MultipartFile[] multipartFiles, MajorComment dto, String tableName, int type) throws Exception {
		
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

	@Override
	public int selectOneCountMajorComment(MajorCommentVo vo){
		return dao.selectOneCountMajorComment(vo);
	}
	
	@Override
	public List<MajorComment> selectListMajorComment(MajorCommentVo vo) throws Exception {
		return dao.selectListMajorComment(vo);
	}
	
	@Override
	public MajorComment selectOneMajorComment(MajorCommentVo vo) throws Exception {
		return dao.selectOneMajorComment(vo);
	}
	
	@Override
	public int insertMajorComment(MajorComment dto) throws Exception {
		setRegMod(dto);
		return dao.insertMajorComment(dto);
	}

	@Override
	public int updateMajorComment(MajorComment dto) throws Exception {
		setRegMod(dto);
		return dao.updateMajorComment(dto);
	}
	
	@Override
	public int ueleteMajorComment(MajorComment dto) throws Exception {
		setRegMod(dto);
		return dao.ueleteMajorComment(dto);
	}
	
	@Override
	public int deleteMajorComment(MajorCommentVo vo) throws Exception {
		return dao.deleteMajorComment(vo);
	}

}
