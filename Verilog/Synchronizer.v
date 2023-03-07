//S***Welcome to Arctic Fox!
//***Since t_his is the first tutorial, we first present some useful information about the 
//***look and setup of the tutorials. Please read the information below, and then proceed
//***to Step 2. 



//S***Activating Arctic Fox
//***If you have not yet activated Arctic Fox, you must do so before Arctic Fox can run. Also,
//***if you haven't activated Arctic Fox, all of the Special Formatting won't be here!! 

//***Click the Arctic Fox logo on the left vertical bar. This will open the Arctic Fox pane on
//***the left side of the screen. Enter your email and password and click the Activate button. 

//***If you have not created an Arctic Fox account, visit the "here" link in the Arctic Fox
//***pane and create and account. Because Arctic Fox is in alpha, after an account is created,
//***Icii must approve the account. Please give Icii 24 hours to approve any new accounts.  



//S***Special Formatting
//***Arctic Fox embeds special formatting into Verilog code. This formatting is designed to
//***make it more clear what is code, and what isn't. For example, the italic grey text you
//***are reading is simply a comment whose line starts with //*** . Don't worry, any text
//***with special formatting is a comment and will not impact your code.

//***Additionally, in our tutorials, sections with start with a section header, as seen above.
//***Section headers are underlined. Continuing on.



//S***Steps
//***Another piece of information for the tutorials, each Step of a tutorial may have substeps, 
//***such as a, b, c, etc. The steps will be highlighted green, as you can see in the step below.
//***To move to the next step in a tutorial, click the Arctic Fox icon on the vertical bar on the
//***left. In the Tutorials area, click the drop down, and select the step you want to advance to.
//***Once selected, the text below the drop down will describe the step. Click the Switch button 
//***to move to that step in the tutorial.

//***When you move to a new step in the tutorial, your progress for the current step will be 
//***saved before moving to the new step. In the new step, you will be able to see the correct
//***result for all previous steps. Please note, no generated code will be present at first. To
//***see the results of any code generation, you will first need to run Arcitc Fox. 

//***Completed steps will NOT be highlighted! Only steps for the current step will be
//***highlighted green. 

//***Step 1) Proceed to Step 2
//***- Click the Arctic Fox icon on the vertical bar on the left. 
//***- In the Arctic Fox pane, click the Tutorials drop down. Click Step2_InsertAutomation.
//***- Click the Switch button. This will take you to Step 2. 



// Let's go ahead and start the module. 
// For simplicity, t_his will be a 1 bit synchronizer that uses two flops
module Synchronizer(
    input clk,

    input inputValue,

    output synchronizedOutput
);



//S***Automation Appearance
//***First, let's learn how to add an automation to Verilog.

//***Automations will have the following appearance:
// /*[AutomationName --item1Name item1Value --item2Name item2Value]*/ // Commented out to ignore

//***All automations have an AutomationName, but not all automations have items. Additionally,
//***for conciseness, sometimes the --itemNames are not needed. For example, an automation could
//***instead have the following appearance:
// /*[AutomationName item1Value item2Value]*/ //comment out to ignore

//***There's plenty more shorthands, but for now, let's not get carried away and say too much all
//***at the start.



//S***Automation Syntax
//***You might have guessed that an automations appearance is also using Arctic Fox's special
//***formatting. In fact, automations live within comments. The brackets arround an automation
//***actually use the following syntax,:
// //X***/*[AutomationName]*/ //Commented out to ignore, sepcial formatting used to show /* and */
//***As you can see, the automation is contained within brackets in a /* */ comment



//S***Insering an Automation Manually
//***Since an automation is just a comment, you could manually type the comment syntax. We don't 
//***normally use t_his method, there's a shortcut, but for educational reasons, let's first do it
//***manually. 
//_***Step 2) 
//_***Type //X***/*[HelloWorld]*/ on the line below

//***Once you typed HelloWorld and finished the //X***/*[ ]*/ syntax, you should see that it's appearance
//***changed to resemble that of the automations previously! If it did not, just press enter at the 
//***end of the line - sometimes the codespace VS Code does not change the formattins as quickly. 

//***You might be wondering, what now?! I put an automation in the code, why hasn't anything happened?
//***Arctic Fox has not yet run! Next, we'll run Arctic Fox. 

//_***Continue to Step3_RunArcticFox

endmodule