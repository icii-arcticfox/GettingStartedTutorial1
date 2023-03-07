//S***Conclusion
//***Congrats, you've finished the Arctic Fox getting started tutorial! We know the tutorial
//***had a lot of text to explain Arctic Fox principles. However, our goal of Arctic Fox is
//***to make it faster and easier to develop, not longer. For the conclusion we've removed
//***the other explainer text so you can see the conciseness of Arctic Fox. We hope you've
//***enjoyed Arctic Fox! Next, try out one of the next tutorials or play around in the
//***Arctic Fox sandbox!

// Let's go ahead and start the module.
// For simplicity, t_his will be a 1 bit synchronizer that uses two flops
module Synchronizer(
    /*[Clock 100MHz]*/
    input clk,

    /*[Reset]*/
    input reset,

    input inputValue,

    output synchronizedOutput
);


/*[Previous]*/
reg p1_inputValue;
/*[Previous]*/
reg p2_inputValue;

assign synchronizedOutput = p2_inputValue;
endmodule