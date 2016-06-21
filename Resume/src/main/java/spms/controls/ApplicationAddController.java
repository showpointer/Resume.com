package spms.controls;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.ApplicationDao;
import spms.vo.Application;

// Annotation 적용
@Component("/application/add.do")
public class ApplicationAddController implements Controller, DataBinding {
  ApplicationDao applicationDao;
  
  public ApplicationAddController setApplicationDao(ApplicationDao applicationDao) {
    this.applicationDao = applicationDao;
    return this;
  }
  
  public Object[] getDataBinders() {
    return new Object[]{
        "application", spms.vo.Application.class
    };
  }
  
  @Override
  public String execute(Map<String, Object> model) throws Exception {
    Application application = (Application)model.get("application");
    if (application.getEmail() == null) { // 입력폼을 요청할 때
      return "/application/ApplicationForm.jsp";
    } else { // 회원 등록을 요청할 때
      applicationDao.insert(application);
      return "redirect:list.do";
    }
  }
}
