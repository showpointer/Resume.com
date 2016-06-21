package spms.controls;

import java.io.File;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.RecruitDao;
import spms.vo.Recruit;

@Component("/recruit/add.do")
public class RecruitAddController implements Controller, DataBinding {
  RecruitDao recruitDao;
  
  public RecruitAddController setRecruitDao(RecruitDao recruitDao) {
    this.recruitDao = recruitDao;
    return this;
  }
  
  public Object[] getDataBinders() {
    return new Object[]{
        "recruit", spms.vo.Recruit.class
    };
  }
  
  @Override
  public String execute(Map<String, Object> model) throws Exception {
    Recruit recruit = (Recruit)model.get("recruit");

    if (recruit.getCompany() == null) {
      return "/recruit/RecruitForm.jsp";
      
    } else {
 
      recruitDao.insert(recruit);
      return "redirect:list.do";
    }
  }
}
