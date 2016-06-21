package spms.controls;

import java.util.Map;

import spms.annotation.Component;
import spms.controls.Controller;
import spms.dao.ApplicationDao;
import spms.vo.Application;

@Component("/application/list.do")
public class ApplicationListController implements Controller {
  ApplicationDao applicationDao;
  
  public ApplicationListController setMemberDao(ApplicationDao applicationDao) {
    this.applicationDao = applicationDao;
    return this;
  }

  @Override
  public String execute(Map<String, Object> model) throws Exception {
		model.put("application", applicationDao.selectList());
		return "/application/ApplicationList.jsp";
	}
}

