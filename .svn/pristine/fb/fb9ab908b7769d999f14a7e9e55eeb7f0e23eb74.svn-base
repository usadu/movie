package com.etc.controller;


import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.CosNaming.NamingContextExtPackage.StringNameHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.etc.entity.Users;
import com.etc.service.UsersServerImpl;

@Controller
@RequestMapping("/usersController")
/*@SessionAttributes(value= {"user"})*/
public class UsersController {
	@Autowired
	
	UsersServerImpl us;
	//登录
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam(value="userName",defaultValue="")String userName,@RequestParam(value="userPwd",defaultValue="")String userPwd,@RequestParam(value="validationCode",defaultValue="")String validationCode,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		ModelAndView mv= new ModelAndView();
		String code=(String) request.getSession().getAttribute("validation_code");
		if(validationCode.equalsIgnoreCase(code)) {
			Users user = us.getLogin(userName, userPwd);
			if(null != user) {
				mv.addObject("user",user);
				request.getSession().setAttribute("user", user);
				request.setAttribute("msg1", "登录成功");
				mv.setViewName("forward:/index.jsp"); //登录成功后,走另一个控制器跳转到首页
				return mv;
			}else {
				request.setAttribute("msg", "账户密码错误,请重新登录");
				request.getRequestDispatcher("/index.jsp").forward(request, response);
			return null;
			}
			
		}else{ 
			
			request.setAttribute("msg3", "验证码输入有误,请重新登录");
			request.getRequestDispatcher("/index.jsp").forward(request, response);
			return null;
			}
			
			
		/*Users user = us.getLogin(userName, userPwd);
		if(null != user) {
			mv.addObject("user",user);
			request.getSession().setAttribute("user", user);
			request.setAttribute("msg1", "登录成功");
			mv.setViewName("forward:/index.jsp"); //登录成功后,走另一个控制器跳转到首页
			return mv;
		}else {
			request.setAttribute("msg", "登录失败,请重新登录");
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		return null;
		}*/ 
		
	}
	
	//注册
	@RequestMapping("/register")
	public ModelAndView register(Users user,HttpServletRequest request,HttpServletResponse response,SessionStatus sessionStatus) throws ServletException, IOException {
		int n= us.addUser(user);
		ModelAndView mv= new ModelAndView();
		/*sessionStatus.setComplete();*/ //清除session存储的值,注册完后竟然在欢迎XX登录 出现 (上次登录的用户信息);
		if (n != 0) {
		request.setAttribute("msg2", "注册成功");
		/*request.getRequestDispatcher("/index.jsp").forward(request, response);*/
		mv.setViewName("forward:/index.jsp");
			
		}
		return mv;
	}
	//校验用户名是否重复
	@RequestMapping("/queryByUserName")
	@ResponseBody
	public void queryByUserName(String userName,HttpServletResponse response) throws IOException {
		Users user1= us.getQueryByName(userName);
		if(null == user1) {
			response.getWriter().print("用户名可用"); //相应回去的值
		}else {
			response.getWriter().print("不可用,用户名已存在");	
		}
	/*	if(null == user1) {
			return "用户名可用";
		}else {
			return "用户名重复,不可用";
		}*/
		
		}
		
	
	//退出
	@RequestMapping("/exit")
	public String exit(HttpServletRequest request) {
		System.out.println("进入exit");
		/*sessionStatus.setComplete();*/
		request.getSession().removeAttribute("user");
		return "forward:/index.jsp";
	}
	
	//个人信息修改
	@RequestMapping("/update")
	public String update(Users user,@RequestParam("myfiles")MultipartFile[] myfiles,SessionStatus sessionStatus,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		
		String imgPath="";
		
		String path="D:\\安装包\\电影\\用户头像\\";//上传路径
		//判断文件是否为空或者长度为0
		if(myfiles!=null && myfiles.length >0) {
			for (int i = 0; i < myfiles.length; i++) {
				MultipartFile file=myfiles[i];
				//避免文件名重复,添加一个时间戳
				SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String time=dateFormat.format(new Date());
				//文件名
				String fname=file.getOriginalFilename();
				if(i==0) {
					//图片路径
					imgPath=time+"_"+fname;
				}
			
				//创建文件
				File f=new File(path+"_"+fname);
				//移动到指定的位置
				file.transferTo(f);
				imgPath="http://192.168.13.62:8080/fileicon/"+"_"+fname;
			}
			int n= us.updateUser(new Users(user.getUserId(),imgPath,user.getUserName(),user.getUserPwd(),user.getUserNickname(),user.getUserSex(),user.getUserStatus()));
			
			System.out.println(n);
			if(n != 0) {
			//	mv.addObject("user", user);
				//把list.jsp的取值换成从request取,
				/*request.setAttribute("user", user);*/
				//清除session中的user,
				//添加一个查询的方法
				//request.getSession().removeAttribute("user");	
				Users user1= us.getQueryByName(user.getUserName());
				request.getSession().setAttribute("user", user1);
				System.out.println(user1);
				request.getRequestDispatcher("/list.jsp").forward(request, response);
				/*mv.setViewName("forward:/usersController/getUserbyName");*/
			}
			return null;
			
		}
		return "list.jsp";
	}

	
	//修改vip时间并清除session，重新存入
	@RequestMapping("/payVIP")
	public String payVIP(int userId,String VIPdate) {
		//System.out.println("进入exit");
		/*sessionStatus.setComplete();*/
		System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaa");
		us.updaVipTime(userId, VIPdate);
		/*System.out.println(userName+userPwd);
		//清空session
		request.getSession().removeAttribute("user");
		Users user=us.getLogin(userName, userPwd);
		request.getSession().setAttribute("user", user);
		System.out.println(user);*/
		//return "forward:/index.jsp";
		return "success";
	}	


	
	//登录验证码
	
	// 图形验证码的字符集，系统将随机从这个字符串中选择一些字符作为验证码
    private static String codeChars = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    @RequestMapping("/drawValiddateCode")
    //绘制验证码
	private void drawValiddateCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
		 // 获得验证码集合的长度
        int charsLength = codeChars.length();
        // 下面3条记录是关闭客户端浏览器的缓冲区
        // 这3条语句都可以关闭浏览器的缓冲区，但是由于浏览器的版本不同，对这3条语句的支持也不同
        // 因此，为了保险起见，同时使用这3条语句来关闭浏览器的缓冲区
        response.setHeader("ragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);

        // 设置图形验证码的长和宽
        int width = 90, height = 30;
        //创建一个内存映射对象
        BufferedImage image = new BufferedImage(width, height,
                BufferedImage.TYPE_INT_RGB);
        //得到画笔
        Graphics g = image.getGraphics();
        Random random = new Random();
        g.setColor(getRandomColor(180, 250));//设置上下文颜色
        g.fillRect(0, 0, width, height);//填充验证码背景
        g.setFont(new Font("Times New Roman", Font.ITALIC, height));
        g.setColor(getRandomColor(120, 180));//设置上下文颜色
        
        // 用户保存最后随机生成的验证码
        StringBuffer validationCode = new StringBuffer();
        // 验证码的随机字体
        String[] fontNames = { "Times New Roman", "Book antiqua", "Arial" };
        
        //绘制干扰点
        for (int i = 0; i < 100; i++) {
            int x= random.nextInt(width)-2;//nextInt(width);此方法返回0-width之间的随机整数。因为，椭圆或圆的width=2，所以x轴需要减去2.
            int y= random.nextInt(height)-2;
            g.drawOval(x, y, 2, 2);//绘制一个椭圆或圆，刚好能够放入x,y,width,height参数指定的矩形中。x,y为椭圆或圆的坐标，width,height为椭圆或圆的宽高。
        }
        
      //绘制干扰线
        for (int i = 0; i < 50; i++) {
            int x1= random.nextInt(width)-2;//nextInt(width);此方法返回0-width之间的随机整数。因为，椭圆或圆的width=2，所以x轴需要减去2.
            int y1= random.nextInt(height)-2;
            int x2= random.nextInt(width)-2;
            int y2= random.nextInt(height)-2;
            g.drawLine(x1, y1, x2, y2);
        }

        // 随机生成4个验证码
        for (int i = 0; i < 4; i++) {
            // 随机设置当前验证码的字符的字体
            g.setFont(new Font(fontNames[random.nextInt(3)], Font.ITALIC,
                    height));
            // 随机获得当前验证码的字符
            char codeChar = codeChars.charAt(random.nextInt(charsLength));
            validationCode.append(codeChar);
            // 随机设置当前验证码字符的颜色
            g.setColor(getRandomColor(10, 100));
            // 在图形上输出验证码字符，x和y都是随机生成的
            g.drawString(String.valueOf(codeChar), 16 * i + random.nextInt(7),
                    height - random.nextInt(6));
        }

        // 获得HttpSession对象
        HttpSession session = request.getSession();
        // 设置session对象5分钟失效
        //session.setMaxInactiveInterval(5 * 60);
        // 将验证码保存在session对象中,key为validation_code
        session.setAttribute("validation_code", validationCode.toString());
         //关闭Graphics对象
        g.dispose();

        OutputStream outS = response.getOutputStream();
        ImageIO.write(image, "JPEG", outS);
        outS.flush();
        outS.close();
		
	}
	
	//生成随机颜色
    private Color getRandomColor(int minColor, int maxColor) {
        Random random = new Random();
          if(minColor > 255){
              minColor = 255;
          }
          if(maxColor > 255){
              maxColor = 255;
          }
          //获得r的随机颜色值
          int red = minColor+random.nextInt(maxColor-minColor);
          int green = minColor + random.nextInt(maxColor-minColor);
          int blue = minColor + random.nextInt(maxColor-minColor);
          return new Color(red,green,blue);
  }
	


}


