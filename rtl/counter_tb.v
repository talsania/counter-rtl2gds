`timescale 1ns / 1ps

module counter_tb;

    reg         clk;
    reg         rst_n;
    reg         en;
    reg         up_down;
    reg         load;
    reg  [15:0] d;
    wire [15:0] q;
    wire        tc;
    wire        borrow;

    counter DUT (
        .clk     (clk),
        .rst_n   (rst_n),
        .en      (en),
        .up_down (up_down),
        .load    (load),
        .d       (d),
        .q       (q),
        .tc      (tc),
        .borrow  (borrow)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    integer pass_cnt = 0;
    integer fail_cnt = 0;

    task check;
        input [15:0] expected_q;
        input        expected_tc;
        input        expected_borrow;
        input [127:0] test_name;
        begin
            @(negedge clk);
            if (q !== expected_q || tc !== expected_tc || borrow !== expected_borrow) begin
                $display("FAIL [%0s] @ %0t | q=0x%04h tc=%b borrow=%b | expected q=0x%04h tc=%b borrow=%b",
                         test_name, $time, q, tc, borrow,
                         expected_q, expected_tc, expected_borrow);
                fail_cnt = fail_cnt + 1;
            end else begin
                $display("PASS [%0s] @ %0t | q=0x%04h tc=%b borrow=%b",
                         test_name, $time, q, tc, borrow);
                pass_cnt = pass_cnt + 1;
            end
        end
    endtask

    initial begin
        $dumpfile("counter.vcd");
        $dumpvars(0, counter_tb);

        rst_n   = 1;
        en      = 0;
        up_down = 1;
        load    = 0;
        d       = 16'h0000;

        @(posedge clk); #1;
        rst_n = 0;
        @(posedge clk); #1;
        rst_n = 1;
        check(16'h0000, 1'b0, 1'b0, "RESET");

        en = 1; up_down = 1;
        @(posedge clk); check(16'h0001, 1'b0, 1'b0, "UP_1");
        @(posedge clk); check(16'h0002, 1'b0, 1'b0, "UP_2");
        @(posedge clk); check(16'h0003, 1'b0, 1'b0, "UP_3");

        en = 0;
        @(posedge clk); check(16'h0003, 1'b0, 1'b0, "HOLD");
        @(posedge clk); check(16'h0003, 1'b0, 1'b0, "HOLD2");

        en = 0; load = 1; d = 16'hABCD;
        @(posedge clk); check(16'hABCD, 1'b0, 1'b0, "LOAD_ABCD");
        load = 0;

        en = 1; up_down = 0;
        @(posedge clk); check(16'hABCC, 1'b0, 1'b0, "DOWN_1");
        @(posedge clk); check(16'hABCB, 1'b0, 1'b0, "DOWN_2");

        en = 1; load = 1; d = 16'h1234;
        @(posedge clk); check(16'h1234, 1'b0, 1'b0, "LOAD_PRIORITY");
        load = 0;

        en = 0; load = 1; d = 16'hFFFE; up_down = 1;
        @(posedge clk); #1; load = 0;
        en = 1;
        @(posedge clk); check(16'hFFFF, 1'b1, 1'b0, "TC_FLAG");

        @(posedge clk); check(16'h0000, 1'b0, 1'b0, "ROLLOVER");

        up_down = 0;
        en = 0; load = 1; d = 16'h0001; @(posedge clk); #1;
        load = 0; en = 1;
        @(posedge clk); check(16'h0000, 1'b0, 1'b1, "BORROW_FLAG");

        @(posedge clk); check(16'hFFFF, 1'b0, 1'b0, "UNDERFLOW");

        en = 1; up_down = 1;
        @(posedge clk); @(posedge clk);
        #1; rst_n = 0;
        @(posedge clk);
        #1; rst_n = 1;
        check(16'h0000, 1'b0, 1'b0, "MID_RESET");

        $display("  SIMULATION COMPLETE");
        $display("  PASS: %0d  |  FAIL: %0d", pass_cnt, fail_cnt);

        if (fail_cnt == 0)
            $display("*** ALL PASS ***");
        else
            $display("*** FAILURES DETECTED ***");

        $finish;
    end

    initial begin
        #500000;
        $display("TIMEOUT : simulation did not finish");
        $finish;
    end

endmodule
