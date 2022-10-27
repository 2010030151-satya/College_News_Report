package insertServ;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertPeople
 */
@WebServlet("/BookController")
public class InsertPeople extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertPeople() {
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

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pass = request.getParameter("password"); 
		/*
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root","tester123"); 
			String s = "insert into people values(?,?,?);"; 
			PreparedStatement p = con.prepareStatement(s); 
			p.setString(1, name);
			p.setString(2, email);
			p.setString(3, pass);
			
			
			
			if(p.executeUpdate()>0) {
				response.sendRedirect("login.html");  
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
	
		} 
		*/ 
		people p = new people(); 
		p.setEmail(email); 
		p.setName(name); 
		p.setPassword(pass); 
		peopledao dao = new peopledao(); 
		dao.addUpdateBook(p);
		response.sendRedirect("login.html");  
		
	}

}
