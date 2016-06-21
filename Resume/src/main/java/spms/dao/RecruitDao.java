package spms.dao;

// RecruitDao 인터페이스 정의 
import java.util.List;

import spms.vo.Recruit;

public interface RecruitDao {
  List<Recruit> selectList() throws Exception;
  int insert(Recruit Recruit) throws Exception;
  int delete(int no) throws Exception;
  Recruit selectOne(int no) throws Exception;
  int update(Recruit member) throws Exception;
}
