

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Reg
 */
@WebServlet("/Reg")
public class Reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Reg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("i have entered into this servlet");
		String q="VLSA@";
		System.out.println(q);
	
		    long h=Math.round(Math.random() * 89999) + 10000;
String id=q+h;

		
Connection con=null;
		
		String a=request.getParameter("z1");
		String b=request.getParameter("z2");
		String c=request.getParameter("z3");
		String d=request.getParameter("z4");
		String e=request.getParameter("z5");
		String f=request.getParameter("z6");
		String g=request.getParameter("z7");
		String gh=request.getParameter("z9");
		String xz=request.getParameter("z12");
		System.out.println(a);
		System.out.println(b);
		System.out.println(c);
		System.out.println(d);
		System.out.println(e);
		System.out.println(f);
		System.out.println(g);
		System.out.println("designation is----->"+gh);
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/bugs","root","");
			Statement st;
		
			
			st = con.createStatement();
			
			
			 String sql= "INSERT INTO users (id,pass,name,age,desi,dob,email,country,state,mobile) VALUES ('"+id+"','"+xz+"','"+a+"','"+b+"','"+gh+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"')";
				int rs = st.executeUpdate(sql);
				System.out.println("query executed");
				 PrintWriter out = response.getWriter();
				request.getSession(true).setAttribute("myobj", a);
				out.println("<script type=\"text/javascript\">"); 			
				out.println("alert(\"You are registred successfully to our portal...Your Employee id is \")"+gh);

				out.println("</script>"); 
				RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
				rd.include(request, response);
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		
	}

}
