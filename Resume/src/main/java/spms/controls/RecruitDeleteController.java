package spms.controls;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controls.Controller;
import spms.dao.RecruitDao;

@Component("/recruit/delete.do")
public class RecruitDeleteController implements Controller, DataBinding {
  RecruitDao recruitDao;
  
  public RecruitDeleteController setRecruitDao(RecruitDao recruitDao) {
    this.recruitDao = recruitDao;
    return this;
  }
  
  public Object[] getDataBinders() {
    return new Object[]{
        "rno", Integer.class
    };
  }
  
  @Override
  public String execute(Map<String, Object> model) throws Exception {
    Integer rno = (Integer)model.get("rno");
    recruitDao.delete(rno);
    
    return "redirect:list.do";
  }
}
