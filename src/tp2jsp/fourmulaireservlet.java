package tp2jsp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class fourmulaireservlet
 */
@WebServlet("/fourmulaireservlet")
public class fourmulaireservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public fourmulaireservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String operande1 = request.getParameter("operande1");
        String operande2 = request.getParameter("operande2");
        operande1 = "".equals(operande1.trim()) ? "0" : operande1;    
        operande2 = "".equals(operande2.trim()) ? "0" : operande2; 
        Calcul calcul = new Calcul(
                Integer.parseInt(request.getParameter("operande1")),
                request.getParameter("operateur"),
                Integer.parseInt(request.getParameter("operande2")));
 
request.setAttribute("calcul", calcul);
this.getServletContext().getRequestDispatcher("/WEB-INF/reponse.jsp").forward(request, response);}
 
}
	 
	


