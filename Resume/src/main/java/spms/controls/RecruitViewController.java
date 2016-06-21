package spms.controls;

import java.util.Map;

import spms.annotation.Component;
import spms.controls.Controller;
import spms.dao.RecruitDao;

@Component("/recruit/View.do")
public class RecruitViewController implements Controller {
  RecruitDao recruitDao;
  
  public RecruitViewController setMemberDao(RecruitDao recruitDao) {
    this.recruitDao = recruitDao;
    return this;
  }

  @Override
  public String execute(Map<String, Object> model) throws Exception {
    model.put("recruit", recruitDao.selectList());
    return "/recruit/RecruitView.jsp";
  }
}
