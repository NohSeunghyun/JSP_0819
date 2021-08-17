

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RedirectServlet
 */
@WebServlet("/redirect")
public class RedirectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RedirectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 서블릿에서 요청에대한 응답을 다른페이지에서 처리하도록 이동(=포워딩)하는방법2가지
		 * 2. Redirect방식
		 * 실행하면 주소표시줄의 주소가 변경된다.
		 * 즉, 새로운의 요청이다
		 * 따라서 request영역을 공유하지 못한다.(RedirectServlet.java의 request값이 dispatcher.jsp에서 받아서 사용하지못함.)
		 */
		request.setAttribute("request2", "requestValue");
		response.sendRedirect("dispatcher.jsp");
		// jsp에서 Redirect방식을 사용한 forward는 WebContent/redirect폴더에서 설명 (=공유하지않고 새로운 요청으로 처리하는 방법)
	}

}
