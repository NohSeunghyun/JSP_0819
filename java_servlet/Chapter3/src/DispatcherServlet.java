

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DispatcherServlet
 */
@WebServlet("/dispatcher")
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DispatcherServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 서블릿에서 요청에대한 응답을 다른페이지에서 처리하도록 이동(=포워딩)하는방법2가지
		 * 1. Dispatcher방식
		 * 실행하면 주소표시줄의 주소가 변경되지 않는다.
		 * 즉, 하나의 요청이다
		 * 따라서 request영역을 공유한다.(DispatcherServlet.java와 dispatcher.jsp에서 request를 공유)
		 */
		RequestDispatcher dispatcher = request.getRequestDispatcher("dispatcher.jsp");
		request.setAttribute("request2", "requestValue");
		dispatcher.forward(request, response);
		// 서블릿과 jsp에서 사용하는 forward방식이 다름. => WebContent/forward폴더 에서 설명
		/*
		 * 2. Redirect방식
		 * RedirectServlet.java에서 설명
		 */
		
	}

}
