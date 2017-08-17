package shop.service.impl;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import shop.service.dao.Verification_codeServiceDao;

@Service("vsd")
public class Verification_codeServiceImpl implements Verification_codeServiceDao {
	 public void genImage(HttpServletRequest request,
	            HttpServletResponse response)   {

	        //设置不缓存图片
	        response.setHeader("Pragma", "No-cache");
	        response.setHeader("Cache-Control", "No-cache");
	        response.setDateHeader("Expires", 0);
	        //指定生成的响应图片,一定不能缺少这句话,否则错误.
	        response.setContentType("image/jpeg");

	        // 创建图像
	        int width = 80, height = 40;
	        //创建BufferedImage对象,其作用相当于一图片
	        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
	        // 创建图层，获得画笔
	        Graphics g = image.getGraphics();
	        //设置颜色
	        g.setColor(Color.BLACK);
	        //画出矩形
	        g.fillRect(0, 0, width, height);
	        //画出边框
	        g.setColor(Color.WHITE);
	        g.fillRect(1, 1, width - 2, height - 2);

	        //填充字符
	        String data = "ABCDEFGHJKLMNPQRSTUVWXYZabcdefhjkmnpqrstuvwxyz2345678";
	        Random random = new Random();
	        g.setFont(new Font("宋体", Font.BOLD, 30)); //定义字体样式
	        StringBuffer buff = new StringBuffer();
	        //随机生成4个字符
	        for (int i = 0; i < 4; i++) {
	            int index = random.nextInt(53);
	            String str = data.substring(index, index + 1);
	            g.setColor(new Color(random.nextInt(255), random.nextInt(255), random.nextInt(255)));
	            g.drawString(str, 20 * i, 30);
	            buff.append(str);
	        }

	        //将得到的字符串保存到session中
	        HttpSession session = request.getSession();
	        session.setAttribute("vCode", buff.toString());

	        //画出10条干扰线
	        for (int i = 0; i < 10; i++) {
	            g.setColor(new Color(random.nextInt(255), random.nextInt(255), random.nextInt(255)));
	            g.drawLine(random.nextInt(width), random.nextInt(height), random.nextInt(width), random.nextInt(height));
	        }

	        g.dispose();	//释放g所占用的系统资源
	        try {
				ImageIO.write(image, "jpg", response.getOutputStream());
			} catch (IOException e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			} //输出图片
	    }

	@Override
	public Map<String,Object> CheckImage(HttpServletRequest request) {
		String vCode=(String)request.getSession().getAttribute("vCode");
		String code=request.getParameter("jyzm");
		Map<String,Object> map=new HashMap<String, Object>();
		if(vCode.equalsIgnoreCase(code)){
			map.put("yzm", "true");
		}else{
			map.put("yzm", "false");
		}
		return map;
	}
}
