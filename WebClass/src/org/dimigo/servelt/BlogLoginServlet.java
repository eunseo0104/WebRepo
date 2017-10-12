package org.dimigo.servelt;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;

/**
 * Servlet implementation class BlogLoginServlet
 */
@WebServlet("/bloglogin")
public class BlogLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BlogLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = request.getRequestDispatcher("jsp/bloglogin.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text.html; charset=utf-8");
		String id = request.getParameter("id");
		boolean result;
		if(id.equals("test@naver.com"))
			result=true;
		else
			result=false;
		if(result){
			//세션에 사용자 생성
			HttpSession session = request.getSession();
			UserVO user = new UserVO();
			user.setId(id);
			user.setName("test");
			user.setNickname("테스터");
			session.setAttribute("user", user);
			
			RequestDispatcher rd = request.getRequestDispatcher("jsp/blog.jsp");
			rd.forward(request, response);
			
			
			
		}
		else{
			request.setAttribute("msg", "error");
			RequestDispatcher rd = request.getRequestDispatcher("jsp/bloglogin.jsp");
			rd.forward(request, response);
			
		}
	}

}
