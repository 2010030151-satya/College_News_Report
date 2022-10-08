package MaintainNews;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class InsertNews
 */

@MultipartConfig(maxFileSize = 16177215) 

public class InsertNews extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertNews() {
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
		String sid = request.getParameter("id");
		int id=Integer.parseInt(sid);  
		String headline = request.getParameter("name");
		String content = request.getParameter("phone");
		String url = request.getParameter("photo"); 
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root","tester123"); 
			String s = "insert into news values(?,?,?,?);"; 
			PreparedStatement p = con.prepareStatement(s); 
			p.setInt(1,id);
			p.setString(2, headline);
			p.setString(3, content);
			p.setString(4,url); 
			
			
			if(p.executeUpdate()>0) {
				response.sendRedirect("news_channel.jsp");  
			}
			else
				response.sendRedirect("enter_news.html.jsp");  
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
	
		} 
	}

}
