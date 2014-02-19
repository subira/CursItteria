package Classes;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import javax.servlet.jsp.tagext.TagSupport;

public class HolaMundo extends TagSupport{
	/**
	 * 
	 */
	private PageContext pc;
	private static final long serialVersionUID = 1L;
	public int doTag() throws JspException{
		try {
			 pc.getOut().print("Hola mundo");
			 } catch(IOException ioe) {
			 System.out.println("Error in ExampleTag: " + ioe);
			 }
			 return(SKIP_BODY);
		
	}

}
