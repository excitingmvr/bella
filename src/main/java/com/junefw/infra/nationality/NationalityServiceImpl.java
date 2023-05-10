package com.junefw.infra.nationality;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.junefw.common.base.BaseServiceImpl;
import com.junefw.common.constants.Constants;
import com.junefw.common.util.UtilDateTime;
import com.junefw.common.util.UtilRegMod;


@Service
public class NationalityServiceImpl extends BaseServiceImpl implements NationalityService{

	@Autowired
	NationalityDao dao;

	@Override
	public void setRegMod(Nationality dto) throws Exception {
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
	public void uploadFiles(MultipartFile[] multipartFiles, Nationality dto, String tableName, int type) throws Exception {
		
		int j = 0;
    	for(MultipartFile multipartFile : multipartFiles) {
    			
    		if(!multipartFile.isEmpty()) {
    		
    			String className = dto.getClass().getSimpleName().toString().toLowerCase();		
    			String fileName = multipartFile.getOriginalFilename();
    			String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
    			String uuid = UUID.randomUUID().toString();
    			String uuidFileName = uuid + "." + ext;
    			String pathModule = className;
    			String nowString = UtilDateTime.nowString();
    			String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
    			String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
    			String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/";
    			
    			File uploadPath = new File(path);
    			
    			if (!uploadPath.exists()) {
    				uploadPath.mkdir();
    			} else {
    				// by pass
    			}
    			  
    			multipartFile.transferTo(new File(path + uuidFileName));
    			
    			dto.setPath(pathForView);
    			dto.setOriginalName(fileName);
    			dto.setUuidName(uuidFileName);
    			dto.setExt(ext);
    			dto.setSize(multipartFile.getSize());
    			
	    		dto.setTableName(tableName);
	    		dto.setType(type);
	    		dto.setDefaultNy(j == 0 ? 1 : 0);
	    		dto.setSort(j + 1);
	    		dto.setPseq(dto.getIfnaSeq());

				dao.insertUploaded(dto);
				j++;
    		}
    	}
		
	}


	@Override
	public int selectOneCount(NationalityVo vo){
		return dao.selectOneCount(vo);
	}
	
	@Override
	public List<Nationality> selectList(NationalityVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public Nationality selectOne(NationalityVo vo) throws Exception {
		return dao.selectOne(vo);
	}
	
	@Override
	public int insert(Nationality dto) throws Exception {
		setRegMod(dto);
		return dao.insert(dto);
	}

	@Override
	public int update(Nationality dto) throws Exception {
		setRegMod(dto);
		return dao.update(dto);
	}
	
	@Override
	public int uelete(Nationality dto) throws Exception {
		setRegMod(dto);
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(NationalityVo vo) throws Exception {
		return dao.delete(vo);
	}

}
