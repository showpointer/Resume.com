package spms.controls;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controls.Controller;
import spms.dao.ApplicationDao;

@Component("/application/delete.do")
public class ApplicationDeleteController implements Controller, DataBinding {
  ApplicationDao applicationDao;
  
  public ApplicationDeleteController setApplicationDao(ApplicationDao applicationDao) {
    this.applicationDao = applicationDao;
    return this;
  }
  
  public Object[] getDataBinders() {
    return new Object[]{
        "ano", Integer.class
    };
  }
  
  @Override
  public String execute(Map<String, Object> model) throws Exception {
    Integer ano = (Integer)model.get("ano");
    applicationDao.delete(ano);
    
    return "redirect:list.do";
  }
}
