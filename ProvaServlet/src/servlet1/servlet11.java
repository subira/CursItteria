package servlet1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sound.sampled.spi.MixerProvider;

import Clases.Gen;

/**
 * Servlet implementation class servlet1
 */
@WebServlet("/servlet1")
public class servlet11 extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public servlet11() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter salida = response.getWriter();
	    salida.println(Gen.generar());
	    String valorCookie;
	    boolean trobat = false;
	    int i =0;
	    Cookie [] misCookies;
	    Cookie miCookie;
	    
	    misCookies = request.getCookies();
	    while(!trobat && i < misCookies.length){
	    	miCookie = misCookies[i];
	    	trobat = miCookie.getName().equals("");
	    	if(trobat){
	    		valorCookie = miCookie.getValue();
	    		i++;
	    		
	    	}
	    	
	    }
	    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
	    PrintWriter salida = response.getWriter();
	    salida.println("<html>\n" +
	                "<head><title>Hola Mundo!</title></head>\n" +
	                "<body>\n" +
	                "<h1>Hola Mundo!</h1>\n" +
	                "<h2>Hola Mundo2!</h2>\n" +
	                "</body></html>");
	
	}

}
