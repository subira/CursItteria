package Beans;

public class Bean {
	String nom,pasw;
	public Bean(String nom,String pasw){
		this.nom = nom;
		this.pasw = pasw;
		
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPasw() {
		return pasw;
	}
	public void setPasw(String pasw) {
		this.pasw = pasw;
	}

}
