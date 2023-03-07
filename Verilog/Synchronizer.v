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
//***Step 2) 
//***Type //X***/*[HelloWorld]*/ on the line below
/*[HelloWorld]*/
//***Once you typed HelloWorld and finished the //X***/*[ ]*/ syntax, you should see that it's appearance
//***changed to resemble that of the automations previously! If it did not, just press enter at the 
//***end of the line - sometimes the codespace VS Code does not change the formattins as quickly. 

//***You might be wondering, what now?! I put an automation in the code, why hasn't anything happened?
//***Arctic Fox has not yet run! Next, we'll run Arctic Fox. 



//S***Running Arctic Fox
//***It's time to run Arctic Fox! You can run Arctic Fox through the GUI, as well as a shortcut. For 
//***now, we'll use the GUI. Click the Arctic Fox icon on the left bar. If you have not yet activated
//***Arctic Fox, please enter your email and password. If you have not created an account, please see
//***the text under the "Activate Arctic Fox" section. 

//***The Arctic Fox pane will present a few buttons, selections, etc. For now, we want to focus on the
//***Run and Clean buttons. Run will process the Verilog files and generate Verilog code. Clean will
//***remove all generated code from your Verilog files. 

//***Step 3)
//***Open the Arctic Fox pane and press the Run button. 
//***Arctic Fox will start running in the open terminal, or Arctic Fox will open a new terminal. In 
//***a codespace, Arctic Fox takes just a bit to build for the first time. 

//***Once finished you should see that code has been generated for the HelloWorld automation! The 
//***automation will simply add the comment //Hello World to the file below the automation. If you are
//***not seeing t_his behavior, please contact Icii.



//S***Generated Code
//***You might wonder what generate code looks like, and can you tell it appart from the code you write?
//***One of our goals was to make generated code integrate seemlessly into a code base without feeling 
//***awkward. Now, each generated line of code starts with a specail set of characters, /*<>*/, however, 
//***these characters are hidden by Arctic Fox. 

//***What you will see is generated code lines being highlighted blue. If you look at the //Hello World
//***comment generated by the HelloWorld automation, the whole line will have a light blue backgorund. 



//S***Insert Automation Shortcut
//***Manually typing the automation syntax takes time and does not feel intuitive. To make it easier to 
//***add automations to code, we made a key board shortcut. Pressing alt + a (do not actually press +)
//***will add the //X***/*[]*/ characters at the position of the current cursor. Additionally, you will only
//***see the brackets, not the /* or */, and the cursor will be placed in the middle of the brackets. 
//***When you begin typing, the text will be bolded because the current text will be the automation name.
//***Let's give t_his a try! Again, with a HelloWorld automation.

//_***Step 4)
//_***- Press alt + a on the line below
//_***- Type HelloWorld between the brackets
//_***- Run Arctic Fox as decribed previously

//***Once completed, you should have created a HelloWorld automation as before. After Arctic Fox is run
//***you will have generated a comment //Hello World as before. 



//_***Continue to Step5_NonClockAndPreviousAutomation

endmodule