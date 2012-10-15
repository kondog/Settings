package struts;
import org.apache.struts.action.*;

public class CalcurationForm extends ActionForm{
	private int num1;
	private int num2;
	
	public void setNum1( int num ){this.num1 = num;}
	public void setNum2( int num ){this.num2 = num;}
	public int getNum1()	    {return this.num1;}
	public int getNum2()		{return this.num2;}

}
