//==========================================================
// FSM BASED SWITCH DEBOUNCE + EDGE DETECTOR
//==========================================================
// Features:
// 1. 2-FF Synchronizer
// 2. FSM-based debouncing
// 3. Stable debounced output
// 4. One-clock pulse generation
// 5. Synthesizable FPGA-ready design
//
// Assumption:
// Clock Frequency = 100 MHz
// Debounce Time  = 10 ms
//==========================================================

module button_controller(

    input  wire clk,        // 100 MHz system clock
    input  wire rst,        // Active HIGH reset
    input  wire button,     // Raw push button input

    output reg  debounced,  // Stable clean button level
    output reg  pulse       // One-clock pulse on valid press
);

    //======================================================
    // STEP 1 : SYNCHRONIZER
    //======================================================
    // Mechanical button is asynchronous to FPGA clock.
    // To avoid metastability:
    // button -> sync0 -> sync1
    //======================================================

    reg sync0;
    reg sync1;

    always @(posedge clk) begin
        sync0 <= button;
        sync1 <= sync0;
    end


    //======================================================
    // STEP 2 : FSM STATE DECLARATION
    //======================================================

    parameter IDLE         = 2'b00;
    parameter WAIT_PRESS   = 2'b01;
    parameter PRESSED      = 2'b10;
    parameter WAIT_RELEASE = 2'b11;

    reg [1:0] state;


    //======================================================
    // STEP 3 : DEBOUNCE COUNTER
    //======================================================
    // 100 MHz clock:
    // 1 cycle = 10 ns
    //
    // For 10 ms debounce:
    // 10 ms / 10 ns = 1,000,000 cycles
    //======================================================

    reg [19:0] counter;

    parameter DELAY = 20'd999999;


    //======================================================
    // STEP 4 : FSM LOGIC
    //======================================================

    always @(posedge clk or posedge rst) begin

        //--------------------------------------------------
        // RESET CONDITION
        //--------------------------------------------------

        if(rst) begin

            state      <= IDLE;
            counter    <= 0;

            debounced  <= 0;
            pulse      <= 0;

        end

        //--------------------------------------------------
        // NORMAL OPERATION
        //--------------------------------------------------

        else begin

            //------------------------------------------------
            // Default pulse = 0
            // Pulse becomes 1 for ONLY one clock cycle
            //------------------------------------------------

            pulse <= 0;

            //------------------------------------------------
            // FSM
            //------------------------------------------------

            case(state)

                //==========================================
                // STATE 1 : IDLE
                //==========================================
                // Waiting for button press
                //==========================================

                IDLE:
                begin

                    counter <= 0;

                    // Possible button press detected
                    if(sync1 == 1'b1)
                        state <= WAIT_PRESS;

                    else
                        state <= IDLE;

                end


                //==========================================
                // STATE 2 : WAIT_PRESS
                //==========================================
                // Check whether press is stable
                //==========================================

                WAIT_PRESS:
                begin

                    // Button still pressed
                    if(sync1 == 1'b1) begin

                        counter <= counter + 1;

                        //--------------------------------------------------
                        // Stable long enough ?
                        //--------------------------------------------------

                        if(counter >= DELAY) begin

                            //------------------------------------------------
                            // Valid button press confirmed
                            //------------------------------------------------

                            debounced <= 1'b1;

                            //------------------------------------------------
                            // Generate ONE-CLOCK pulse
                            //------------------------------------------------

                            pulse <= 1'b1;

                            //------------------------------------------------
                            // Reset counter
                            //------------------------------------------------

                            counter <= 0;

                            //------------------------------------------------
                            // Move to PRESSED state
                            //------------------------------------------------

                            state <= PRESSED;

                        end

                        else begin
                            state <= WAIT_PRESS;
                        end

                    end

                    //------------------------------------------------------
                    // Bounce happened -> false trigger
                    //------------------------------------------------------

                    else begin

                        counter <= 0;
                        state <= IDLE;

                    end

                end


                //==========================================
                // STATE 3 : PRESSED
                //==========================================
                // Button is considered validly pressed
                //==========================================

                PRESSED:
                begin

                    counter <= 0;

                    //------------------------------------------------------
                    // Wait for release
                    //------------------------------------------------------

                    if(sync1 == 1'b0)
                        state <= WAIT_RELEASE;

                    else
                        state <= PRESSED;

                end


                //==========================================
                // STATE 4 : WAIT_RELEASE
                //==========================================
                // Validate stable release
                //==========================================

                WAIT_RELEASE:
                begin

                    //------------------------------------------------------
                    // Button still released
                    //------------------------------------------------------

                    if(sync1 == 1'b0) begin

                        counter <= counter + 1;

                        //--------------------------------------------------
                        // Stable release confirmed
                        //--------------------------------------------------

                        if(counter >= DELAY) begin

                            debounced <= 1'b0;

                            counter <= 0;

                            state <= IDLE;

                        end

                        else begin
                            state <= WAIT_RELEASE;
                        end

                    end

                    //------------------------------------------------------
                    // Bounce during release
                    //------------------------------------------------------

                    else begin

                        counter <= 0;

                        state <= PRESSED;

                    end

                end


                //==========================================
                // DEFAULT CASE
                //==========================================

                default:
                begin

                    state <= IDLE;

                end

            endcase

        end

    end

endmodule
