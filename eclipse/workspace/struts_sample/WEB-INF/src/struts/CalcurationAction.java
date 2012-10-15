package struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletContext;
import org.apache.struts.action.*;

public final class CalcurationAction extends Action {
	public ActionForward execute(
			ActionMapping 		mapping,
			ActionForm	  		form,
			HttpServletRequest 	req,
			HttpServletResponse res ){
		HttpSession		session = req.getSession();
		ActionMessages	errors  = new ActionMessages();
		
		CalcurationForm calcuForm
			= ( CalcurationForm )form;
		int num1	= calcuForm.getNum1();
		int num2	= calcuForm.getNum2();
		session.setAttribute( "result", num1 + num2 );
		return ( mapping.findForward( "success" ));
	}

}
