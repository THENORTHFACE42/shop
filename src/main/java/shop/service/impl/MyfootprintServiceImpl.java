package shop.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import shop.dao.MyfootprintMapper;
import shop.model.Myfootprint;
import shop.service.dao.MyfootprintServiceDao;
@Service("msd")
public class MyfootprintServiceImpl implements MyfootprintServiceDao {
	@Resource(name="myfootprintMapper")
	private MyfootprintMapper mm;
	public List<Myfootprint> selectMyfootprintList(int userid) {
		List<Myfootprint> list=mm.selectAllByUserid(userid);
		return list;
	}
	public void deleteAllfoot(int id,HttpServletRequest req) {
		mm.deleteAllfootprintByUserid(id);
		List<Myfootprint> MyfootprintList=mm.selectAllByUserid(id);
		req.getSession().setAttribute("MyfootprintList", MyfootprintList);
	}

}
