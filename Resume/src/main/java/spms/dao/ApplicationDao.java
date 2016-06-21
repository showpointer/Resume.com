package spms.dao;

// ApplicaionDao 인터페이스 정의 
import java.util.List;

import spms.vo.Application;

public interface ApplicationDao {
  List<Application> selectList() throws Exception;
  int insert(Application application) throws Exception;
  int delete(int no) throws Exception;
  Application selectOne(int no) throws Exception;
  int update(Application member) throws Exception;
}
