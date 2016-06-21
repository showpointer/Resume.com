package spms.controls;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controls.Controller;
import spms.dao.RecruitDao;
import spms.vo.Recruit;

@Component("/recruit/PopUp.do")
public class RecruitPopUpController implements Controller, DataBinding {
  RecruitDao recruitDao;
  
  public RecruitPopUpController setRecruitDao(RecruitDao recruitDao) {
    this.recruitDao = recruitDao;
    return this;
  }
  
  public Object[] getDataBinders() {
    return new Object[]{
        "rno", Integer.class,
        "recruit", spms.vo.Recruit.class
    };
  }
  
  @Override
  public String execute(Map<String, Object> model) throws Exception {
    Recruit recruit = (Recruit)model.get("recruit");
    
    if (recruit.getCompany() == null) { 
      Integer rno = (Integer)model.get("rno");
      Recruit detailInfo = recruitDao.selectOne(rno);
      model.put("recruit", detailInfo);
      return "/recruit/RecruitPopUp.jsp";

    } else { 
      recruitDao.update(recruit);
      return "redirect:list.do";
    }
  }
}
