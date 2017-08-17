package shop.service.dao;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Verification_codeServiceDao {
	 public void genImage(HttpServletRequest request,
	            HttpServletResponse response) ;
	 public Map<String, Object> CheckImage(HttpServletRequest request ) ;
}
