package LoginServ;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginPeople
 */
public class LoginPeople extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginPeople() {
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
		// TODO Auto-generated method stub
		doGet(request, response);
		
		PrintWriter out = response.getWriter();
        ResultSet rs;
        ResultSet adminrs;
        String userid = request.getParameter("email");
        String password = request.getParameter("password");
            try{
	            String sql = "SELECT * FROM people WHERE email = ? AND password = ?";
	            String adminsql = "select * from admin where email = ? and password = ?"; 
	            Class.forName("com.mysql.jdbc.Driver"); 
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news", "root", "tester123");
	            
	            
	            PreparedStatement preparedStatement = con.prepareStatement(sql);
	            preparedStatement.setString(1, userid);
	            preparedStatement.setString(2, password);
	            	

	            PreparedStatement preparedStatementa = con.prepareStatement(adminsql);
	            preparedStatementa.setString(1, userid);
	            preparedStatementa.setString(2, password);
	            
	             rs =preparedStatement.executeQuery();
	             adminrs = preparedStatementa.executeQuery(); 
	             if(adminrs.next()) {
	            	 
	            	 if(adminrs.next()) {
	            		 response.sendRedirect("enter_news.html");
	            	 }
	            	 else 
	            	 response.sendRedirect("login.html");
	             }
	             else {
	            	 
	            	 if(rs.next()) {
	            		 response.sendRedirect("news_channel.jsp");
	            	 }
	            	 else 
	            	 response.sendRedirect("login.html");
	             }
	             }
	             
	            catch(Exception e) {
	            System.out.println("The exception is" + e);
	        }
            }
        }
    

