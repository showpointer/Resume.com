package spms.controls;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controls.Controller;
import spms.dao.ApplicationDao;
import spms.vo.Application;

@Component("/application/update.do")
public class ApplicationUpdateController implements Controller, DataBinding {
  ApplicationDao applicationDao;
  
  public ApplicationUpdateController setApplicationDao(ApplicationDao applicationDao) {
    this.applicationDao = applicationDao;
    return this;
  }
  
  public Object[] getDataBinders() {
    return new Object[]{
        "ano", Integer.class,
        "application", spms.vo.Application.class
    };
  }
  
  @Override
  public String execute(Map<String, Object> model) throws Exception {
    Application application = (Application)model.get("application");
    
    if (application.getTitle() == null) { 
      Integer ano = (Integer)model.get("ano");
      Application detailInfo = applicationDao.selectOne(ano);
      model.put("application", detailInfo);
      return "/application/ApplicationUpdateForm.jsp";

    } else { 
      applicationDao.update(application);
      return "redirect:list.do";
    }
  }
}
