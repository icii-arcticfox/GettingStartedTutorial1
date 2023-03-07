namespace GettingStartedTutorial1;

public class HelloWorld : VerilogAutomation
{
    protected override Dependencies Dependencies => Dependencies.None;

	protected override void ApplyAutomation()
	{

		CodeAfterAutomation += @$"
// Hello World!
		";
	}
}