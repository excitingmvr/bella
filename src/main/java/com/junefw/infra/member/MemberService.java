package com.junefw.infra.member;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface MemberService {

	public void setRegMod(Member dto) throws Exception;
	public void uploadFiles(MultipartFile[] multipartFiles, Member dto, String tableName, int type, int maxNumber) throws Exception;
	public void deleteFiles(String[] deleteSeq, String[] deletePathFile, Member dto, String tableName) throws Exception;
	public void ueleteFiles(String[] deleteSeq, String[] deletePathFile, Member dto, String tableName) throws Exception;
	
	
//	infrMember
	int selectOneCount(MemberVo vo) throws Exception;
	List<Member> selectList(MemberVo vo) throws Exception; 
	Member selectOne(MemberVo vo) throws Exception;
	int insert(Member dto) throws Exception;
	int update(Member dto) throws Exception; 
	int uelete(Member dto) throws Exception; 
	int delete(MemberVo vo) throws Exception;
	
	List<Member> selectListUploaded(MemberVo vo) throws Exception; 
	int selectOneIdCheck(Member dto) throws Exception;
	
	
//	infrMemberPhone
	List<Member> selectListPhone(MemberVo vo) throws Exception; 
	
	
//	login
	Member selectOneId(Member dto) throws Exception;
	Member selectOneLogin(Member dto) throws Exception;
	
// social login
	public int insertSocialLoginMember(Member dto) throws Exception;
	
//	find id pwd
	Member selectOneFindIdPwd(Member dto) throws Exception;
	
//	change pwd
	int updateChangePwd(Member dto) throws Exception; 
	
}
