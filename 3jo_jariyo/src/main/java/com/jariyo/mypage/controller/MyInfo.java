package com.jariyo.mypage.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jariyo.common.db.MyAppSqlConfig;
import com.jariyo.common.file.JariyoFileRenamePolicy;
import com.jariyo.repository.domain.Member;
import com.jariyo.repository.mapper.LoginMapper;
import com.jariyo.repository.mapper.MyPageMapper;
import com.oreilly.servlet.MultipartRequest;

@WebServlet("/myinfo.j")
public class MyInfo extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		MyPageMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(MyPageMapper.class);
		LoginMapper lMapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(LoginMapper.class);
		
		// tomcat-work에 내 프로젝트에 이미지가 올라가는 경로를 주면 바로 이클립스를 업데이트하지 않아도 올라간다.
		String uploadPath = "/app/tomcat-work/wtpwebapps/3jo_jariyo/img/mypage";
		
//		SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd/HH");
//		String datePath = sdf.format(new Date());
//		
//		String realFilePath = uploadPath + datePath;
		
		File file = new File(uploadPath);
		
		if (file.exists() == false) file.mkdirs();
		
		MultipartRequest mRequest = new MultipartRequest(
			request,
			uploadPath,
			1024*1024*100,
			"utf-8",
			new JariyoFileRenamePolicy()
		);
		String id = mRequest.getParameter("id");
		String name = mRequest.getParameter("name");
		String email = mRequest.getParameter("email");
		String password = mRequest.getParameter("password");
		String phoneNo = mRequest.getParameter("phoneNo");
		String postNo = mRequest.getParameter("postNo");
		String roadAddr = mRequest.getParameter("roadAddr");
		String detailAddr = mRequest.getParameter("detailAddr");
		double positionX = Double.parseDouble(mRequest.getParameter("positionX"));
		double positionY = Double.parseDouble(mRequest.getParameter("positionY"));
		String birthDate = mRequest.getParameter("birthYear");
		birthDate += mRequest.getParameter("birthMonth"); 
		birthDate += mRequest.getParameter("birthDay");
		String teamName = mRequest.getParameter("teamName");
		
		Member member = new Member();		
		
		File f = mRequest.getFile("profileImg");
		if (f != null) {
//			String profileOriginName = mRequest.getOriginalFileName("profileImg");
			String profileSystemName = mRequest.getFilesystemName("profileImg");
//			String profileRealPath = realFilePath +"/"+profileOriginName;
//			String profileSysPath = realFilePath +"/"+profileSystemName;
			member.setProfileImgName(profileSystemName);
			member.setProfileImgPath(f.getParent());
		} // if
		
		member.setId(id);
		member.setName(name);
		member.setEmail(email);
		member.setPassword(password);
		member.setPhoneNo(phoneNo);
		member.setPostNo(postNo);
		member.setRoadAddr(roadAddr);
		member.setDetailAddr(detailAddr);
		member.setPositionX(positionX);
		member.setPositionY(positionY);
		member.setBirthDate(birthDate);
		member.setTeamName(teamName);
				
		mapper.updateMyInfo(member);
		Member login = lMapper.selectMemberInfo(member);
		
		HttpSession session = request.getSession();
		session.setAttribute("user", login);
		
		
		response.sendRedirect(request.getContextPath() + "/myinfo-form.j");
		
	}

}
