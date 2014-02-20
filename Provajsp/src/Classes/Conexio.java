package Classes;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.xml.namespace.QName;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.Annotated;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.Annotation;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.SimpleType;
import com.sun.xml.internal.txw2.Document;
import com.sun.xml.internal.txw2.TypedXmlWriter;

public class Conexio {
	List llistaNoms;
	boolean trobat = false;
	public List Conexio(){
		llistaNoms = conectionValidacio();
		return llistaNoms;
		
	}
	public boolean conectionValidacio(){
	 try {
		Connection conexion = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/bbdd", "root", "");
		
		Statement st = (Statement) conexion.createStatement();
		ResultSet rs = st.executeQuery("select * from socis");
		while (rs.next()) {
			if(rs.getString("NOM").equals(nom)){
				System.out.println("Validacio correcte");
				trobat = true;
			}
		}
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return trobat;
	 
	}
}
