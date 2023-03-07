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

//S***Add Clock Automation
//***Most module will need a clock identified with a Clock automation. It's often the case that 
//***you can use a Clock automation in one place, and it can be infered in the rest of the design.
//***The clock automation will tell Arctic Fox the name of the clock for t_his module. Additionally,
//***a clock automation can specify the frequency of the clock, which other modules may use to 
//***determine the appropriate logic / settings to use. 

//***Step 5a) Add a Clock automation on the line below, right above input clk
//***- Press alt + a
//***- Type "Clock 100MHz" between the automation brackets
    /*[Clock 100MHz]*/
    input clk,

//S***Add Reset None Automation
//***Reset signals are very similar to clock signals in that they are distributed to most, if not,
//***all modules in a design. Sometimes, however, a reset signal is not used at all. The Reset
//***automation can identify the reset signal for a module, or specify None, meaning a reset is
//***not used. Logic that is generated will use, or not use, a reset signal as appropriate. 
//***Step 5b) Add a Reset None automation on the line below
//***- Press alt + a
//***- Type "Reset None" between the automation brackets

//S***Create a Reset Signal
//***Previously, we used the Reset automation and passes in None to declare there was no reset. 
//***Now, we will attach the Reset automation to a reset input and see how it changes the 
//***generated code. 
//***Step 7a) Change Reset None to a Reset signal
//***- Remove the word None from the Reset automation below
//***- Type "input reset," on the line after the Reset automation
//***- Run Arctic Fox
//***- Look at the generated code below in Steps 7b) and 7c), note the included reset signal
    /*[Reset]*/
    input reset,

    input inputValue,

    output synchronizedOutput
);


//S***Add Previous Automation
//***One of the automations that is very simple, but we use all the time, is the Previous automation. 
//***This automation makes the attached signal track the value of a given signal, just one clock
//***cycle later. Let's add a Previous automation, and we'll be verbose about what signal to track. 
//***Later, we will infer the signal to track, making it even simpler to use automations. 

//***In addition to the previous automation, we will add a reg that the Previous automation is
//***attached to. 

//***If you are uncertain what to do, skip ahead to Step 6 of the tutorial to see the solution
//***to Step 5. 

//***Step 5c) Add a Previous automation on the line below and a p1_inputValue reg after that 
//***- Press alt + a
//***- In the automation brackets, type "Previous --signal inputValue"
//***- On the line after the automation, type reg p1_inputValue;
//***- Run Arctic Fox, you should see code generated after p1_inputValue
//***Step 7b) Notice the reset signal used below

//S***Inferring Items
//***Previously, and seen below, we have explicitly stated the --signal for Previous to use. However,
//***t_his can feel overbearing. One of our goals is to make Arctic Fox simple and easy to use. Now,
//***we will infer the signal. We want to track the previous value of inputValue. By naming the reg
//***p1_inputValue, Arctic Fox will infer that p1_inputValue should track inputValue. Below, keep
//***the Previous automation, but remove --signal inputValue. 
//_***Step 8a) Remove --signal inputValue
//_***- Delete the text "--sinal inputValue" from the Previous automation below
//_***- Run Arctic Fox
//_***- Notice that result is the same, and the automation was less verbose  
//_***doc: https://tinyurl.com/af-previous
/*[Previous --signal inputValue]*/
reg p1_inputValue;



//S***2nd Synchronizer Flop
//***A synchonrizer needs to double flop a signal, currently we have only applied one flop with the
//***above Previous automation. Now, add a second Previous automation that tracks p1_inputValue and
//***is attached to a reg named p2_inputValue. 
//***Step 6a) Add a second Previous automation
//***- Press alt + a
//***- In the automation brackets, type "Previous --singal p1_inputValue"
//***- On the line after the automation, type reg p2_inputValue;
//***- Run Arctic Fox to generate the code for p2_inputValue
//***Step 7c) Notice the reset signal used below

//S***Inferring Items Again
//***This time, we want p2_inputValue to track p1_inputValue one clock cycle later. Arctic Fox will 
//***recognize the prefix p2_, will subtract 1 from it, and know that you want it to track the 
//***matching signal starting with the prefix p1_.
//_***Step 8b) Again, remove --signal p1_inputValue
//_***- Delete the text "--sinal p1_inputValue" from the Previous automation below
//_***- Run Arctic Fox
//_***- Notice that result is the same, and the automation was less verbose  
/*[Previous --signal p1_inputValue]*/
reg p2_inputValue;



//_***Continue to Step9_RunAndCleanShortcuts


//S***Completing the Synchronizer
//***To create a functioning synchronizer, we need to set the output singal, synchronizedOutput. 
//***On the line below, assign synchronizedOutput to p2_inputValue. 
//***Step 6b) Assign synchronizedOutput
//***- On the line below, type "assign synchronizedOutput = p2_inputValue;"  
assign synchronizedOutput = p2_inputValue;






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

//***Step 4)
//***- Press alt + a on the line below
//***- Type HelloWorld between the brackets
//***- Run Arctic Fox as decribed previously
/*[HelloWorld]*/

//***Once completed, you should have created a HelloWorld automation as before. After Arctic Fox is run
//***you will have generated a comment //Hello World as before. 


endmodule