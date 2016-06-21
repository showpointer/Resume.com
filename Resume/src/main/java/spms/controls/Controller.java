package spms.controls;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface Controller {
  String execute(Map<String, Object> model) throws Exception;
  //String execute(HttpServletRequest request,Map<String, Object> model) throws Exception;
}
