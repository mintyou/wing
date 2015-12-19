package global;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;


@WebServlet({"/global/header.nhn", "/global/footer.nhn"})
public class GlobalController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("진입성공");
		String path = request.getServletPath();
		System.out.println("넘어온 경로 " + path);
		RequestDispatcher dispatcher = null;
		JSONObject obj  = new JSONObject();
		switch (path) {
		case "/global/header.nhn":

			dispatcher = request.getRequestDispatcher("/WEB-INF/views/global/header.jsp");
			dispatcher.forward(request, response);
			break;
			
		case "/global/footer.nhn":
			dispatcher = request.getRequestDispatcher("/WEB-INF/views/global/footer.jsp");
			dispatcher.forward(request, response);
			
			break;

		default: 
			break;
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
