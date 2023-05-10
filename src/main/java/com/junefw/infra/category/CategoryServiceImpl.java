package com.junefw.infra.category;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
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
public class CategoryServiceImpl extends BaseServiceImpl implements CategoryService{

	@Autowired
	CategoryDao dao;

	@Override
	public void setRegMod(Category dto) throws Exception {
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
	public void uploadFiles(MultipartFile[] multipartFiles, Category dto, String tableName, int type) throws Exception {
		
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
	public int selectOneCount(CategoryVo vo){
		return dao.selectOneCount(vo);
	}
	
	@Override
	public List<Category> selectList(CategoryVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public Category selectOne(CategoryVo vo) throws Exception {
		return dao.selectOne(vo);
	}
	
	@Override
	public int insert(Category dto) throws Exception {
		setRegMod(dto);
		return dao.insert(dto);
	}

	@Override
	public int update(Category dto) throws Exception {
		setRegMod(dto);
		return dao.update(dto);
	}
	
	@Override
	public int uelete(Category dto) throws Exception {
		setRegMod(dto);
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(CategoryVo vo) throws Exception {
		return dao.delete(vo);
	}
	
	@PostConstruct
	public void selectListCachedCategoryArrayList() throws Exception {
		List<Category> categoryListFromDb = (ArrayList<Category>) dao.selectListCachedCategoryArrayList();
//		codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
		Category.cachedCategoryArrayList.clear(); 
		Category.cachedCategoryArrayList.addAll(categoryListFromDb);
		System.out.println("cachedCategoryArrayList: " + Category.cachedCategoryArrayList.size() + " chached !");
	}
	
	
	public static List<Category> selectListCachedCategory(String ifctSeq) throws Exception {
		List<Category> rt = new ArrayList<Category>();
		for(Category categoryRow : Category.cachedCategoryArrayList) {
			if (categoryRow.getIfctParents().equals(ifctSeq)) {
				rt.add(categoryRow);
			} else {
				// by pass
			}
		}
		return rt;
	}	
	
	
	public static String selectOneCachedCategory(int category) throws Exception {
		String rt = "";
		for(Category categoryRow : Category.cachedCategoryArrayList) {
			if (categoryRow.getIfctSeq().equals(Integer.toString(category))) {
				rt = categoryRow.getIfctName();
			} else {
				// by pass
			}
		}
		return rt;
	}
	
	
	public static void clear() throws Exception {
		Category.cachedCategoryArrayList.clear();
	}

	
	public List<Category> selectListCachedCategoryAll() throws Exception {
		List<Category> rt = new ArrayList<Category>();
		rt = Category.cachedCategoryArrayList;
		return rt;
	}
}
