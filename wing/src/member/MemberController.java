package member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

@WebServlet({ "/member/loginForm.nhn", "/member/login.nhn" })
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("진입성공");
		String path = request.getServletPath();
		System.out.println("넘어온 경로 " + path);
		RequestDispatcher dispatcher = null;
		JSONObject obj  = new JSONObject();
		switch (path) {
		case "/member/loginForm.nhn":
			dispatcher = request.getRequestDispatcher("/WEB-INF/views/member/login.jsp");
			dispatcher.forward(request, response);
			break;
		case "/member/login.nhn":
			MemberVO member = new MemberVO();
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			
			member.setId(id);
			member.setPassword(pw);
			obj.put("id",member.getId());
			obj.put("pw", member.getPassword());
			request.setAttribute("member", member);
			response.setContentType("application/x-json; charset=UTF-8");
			response.getWriter().print(obj);
			
			return;

		default:
			break;
		}


	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
