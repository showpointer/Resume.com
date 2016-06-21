package spms.controls;

import java.util.Map;

import spms.annotation.Component;
import spms.controls.Controller;
import spms.dao.RecruitDao;

@Component("/recruit/list.do")
public class RecruitListController implements Controller {
  RecruitDao recruitDao;
  
  public RecruitListController setMemberDao(RecruitDao recruitDao) {
    this.recruitDao = recruitDao;
    return this;
  }

  @Override
  public String execute(Map<String, Object> model) throws Exception {
    model.put("recruit", recruitDao.selectList());
    return "/recruit/RecruitList.jsp";
  }
}
