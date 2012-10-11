package struts;

import org.apache.struts.action.*;

public final class AuthenticationForm extends ActionForm{
	private String id;
	private String pass;
	
	public void   setId( String id) {this.id = id;}
	public String getId() {return id;}
	public void   setPass( String pass ) {this.pass = pass;}
	public String getPass() { return pass; }
	}