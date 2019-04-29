package kr.co.studystory.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Component;

import kr.co.studystory.domain.DetailStudyNotice;
import kr.co.studystory.domain.Homework;
import kr.co.studystory.domain.SnComment;
import kr.co.studystory.domain.StudyNotice;
import kr.co.studystory.vo.NewCommentVO;

////스터디 노티스 dao 정미
@Component
public class StudyNoticeDAO {
	
	private static StudyNoticeDAO sn_dao;
	private SqlSessionFactory ssf=null;
	
	private StudyNoticeDAO() {
	}//StudyNoticeDAO
	
	public static StudyNoticeDAO getInstance() {
		if(sn_dao==null) {
			sn_dao=new StudyNoticeDAO();
		}//end if
		return sn_dao;
	}//getInstance
	
	public synchronized SqlSessionFactory getSessionFactory() {
		if(ssf==null) {
		Reader reader=null;
		
		try {
			reader=Resources.getResourceAsReader("kr/co/studystory/dao/mybatis_config.xml");
			SqlSessionFactoryBuilder ssfb= new SqlSessionFactoryBuilder();
			ssf=ssfb.build(reader);
			if(reader !=null) {reader.close();}
		} catch (IOException ie) {
			ie.printStackTrace();
		}//end catch
		
			
		}//end if
		return ssf;
	}//getSessionFactory
	
	//스터디 공지사항 페이지(참여자)
	public List<StudyNotice> selectSnList(String studyNum){
		List<StudyNotice> list=null;
		SqlSession ss=getSessionFactory().openSession();
		list=ss.selectList("studyNoticeList",studyNum);
		ss.close();
		return list;
	}//selectSnList
	
	//////스터디 공지 상세페이지
	public DetailStudyNotice selectDetailSn(String snNum) {
		DetailStudyNotice dsn=null;
		SqlSession ss=getSessionFactory().openSession();
		dsn=ss.selectOne("studyDetailNoticeList", snNum);
		ss.close();
		return dsn;
		
	}//selectDetailSn
	
	//homework 조회
	public List<Homework> selectHomework(String sn_num){
		List<Homework> list=null;
		SqlSession ss= getSessionFactory().openSession();
		list=ss.selectList("HomeworkList",sn_num);
		ss.close();
		return list;
	}//getHomework
	
	//공지 댓글 
	public List<SnComment> selectComment(String sn_num){
		List<SnComment> list= null;
		SqlSession ss= getSessionFactory().openSession();
		list= ss.selectList("SnCommentList",sn_num);
		ss.close();
		return list;
	}//selectComment
	
	public boolean updateHomework(String s) {
		boolean flag= false;
		
		
		return flag;
	}//updateHomework
	
	public void insertComment(NewCommentVO nc_vo) {
		int cnt=0;
		
		SqlSession ss= getSessionFactory().openSession();
		cnt=ss.insert("insertSnComment", nc_vo);
		if(cnt==1) {
			ss.commit();
		}//end if
		ss.close();
		
	}//insertComment
	
	
	public static void main(String[] args) {//테스트
		StudyNoticeDAO sn_dao= new StudyNoticeDAO();
		//sn_dao.selectSnList("s_000041");//카티션 곱 
		//sn_dao.selectDetailSn("sn_000042");// 
		//sn_dao.selectHomework("sn_000041"); //과제
		//sn_dao.selectComment("sn_000084");// 댓글
		
	}
	
}//class
