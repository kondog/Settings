package struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletContext;
import org.apache.struts.action.*;

public final class AuthenticationAction extends Action{
	public ActionForward execute(
			ActionMapping mapping,
			ActionForm    form,
			HttpServletRequest req,
			HttpServletResponse res){
		HttpSession    session 	= req.getSession();
		ActionMessages errors 	= new ActionMessages();
		
		AuthenticationForm authenticationForm
			= ( AuthenticationForm )form;
		String id	= authenticationForm.getId();
		String pass	= authenticationForm.getPass();
		
		if( !( id.equals("java") && pass.equals( "road" ) ) ){
			errors.add( ActionMessages.GLOBAL_MESSAGE,
					new ActionMessage( "errors.login" ) );
			saveErrors( req, errors );
			return ( mapping.findForward( "fail" ) );
		} else {
			session.setAttribute( "id", id );
			return ( mapping.findForward( "success" ) );
		}		
	}	
}
