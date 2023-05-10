package com.junefw.infra.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao{
	  
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.junefw.infra.member.MemberMpp";
	
//	infrMember
	public int selectOneCount(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Member> selectList(MemberVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	public Member selectOne(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int insert(Member dto) { return sqlSession.insert(namespace + ".insert", dto); }
	public int update(Member dto) { return sqlSession.update(namespace + ".update", dto); }
	public int uelete(Member dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int delete(MemberVo vo) { return sqlSession.delete(namespace + ".delete", vo); }

//	uploaded
	public int insertUploaded(Member dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
	public int ueleteUploaded(Member dto) { return sqlSession.insert("Base" + ".ueleteUploaded", dto); }
	public int deleteUploaded(Member dto) { return sqlSession.insert("Base" + ".deleteUploaded", dto); }
	
	public List<Member> selectListUploaded(MemberVo vo){ return sqlSession.selectList(namespace + ".selectListUploaded", vo); }
	public int selectOneIdCheck(Member dto) { return sqlSession.selectOne(namespace + ".selectOneIdCheck", dto); }
	
//	infrMemberEmail
	public int insertEmail(Member dto) { return sqlSession.insert(namespace + ".insertEmail", dto); }
	
//	infrMemberPhone
	public List<Member> selectListPhone(MemberVo vo){ return sqlSession.selectList(namespace + ".selectListPhone", vo); }
	public int insertPhone(Member dto) { return sqlSession.insert(namespace + ".insertPhone", dto); }

//	infrMemberAddress
	public int insertAddress(Member dto) { return sqlSession.insert(namespace + ".insertAddress", dto); }
	
//	login
	public Member selectOneId(Member dto) { return sqlSession.selectOne(namespace + ".selectOneId", dto); }
	public Member selectOneLogin(Member dto) { return sqlSession.selectOne(namespace + ".selectOneLogin", dto); }
	public int insertLogLogin(Member dto) { return sqlSession.insert(namespace + ".insertLogLogin", dto); }
	public int updateIfmmPwdModDate(Member dto) { return sqlSession.update(namespace + ".updateIfmmPwdModDate", dto); }
	
// social login
	public int insertSocialLoginMember(Member dto) { return sqlSession.insert(namespace + ".insertSocialLoginMember", dto); }
	
//	find id pwd
	public Member selectOneFindIdPwd(Member dto) { return sqlSession.selectOne(namespace + ".selectOneFindIdPwd", dto); }
	
//	change password
	public int updateChangePwd(Member dto) { return sqlSession.update(namespace + ".updateChangePwd", dto); }
	

	
}
