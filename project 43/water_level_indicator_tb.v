`timescale 1ns/1ps

module water_level_indicator_tb;

    reg level1;
    reg level2;
    reg level3;
    reg level4;

    wire low;
    wire medium;
    wire high;
    wire full;

    water_level_indicator uut (
        .level1(level1),
        .level2(level2),
        .level3(level3),
        .level4(level4),
        .low(low),
        .medium(medium),
        .high(high),
        .full(full)
    );

    initial begin

        // Empty
        level1 = 0;
        level2 = 0;
        level3 = 0;
        level4 = 0;
        #10;

        // Low level
        level1 = 1;
        level2 = 0;
        level3 = 0;
        level4 = 0;
        #10;

        // Medium level
        level1 = 1;
        level2 = 1;
        level3 = 0;
        level4 = 0;
        #10;

        // High level
        level1 = 1;
        level2 = 1;
        level3 = 1;
        level4 = 0;
        #10;

        // Full level
        level1 = 1;
        level2 = 1;
        level3 = 1;
        level4 = 1;
        #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | Sensors=%b%b%b%b | Low=%b | Medium=%b | High=%b | Full=%b",
                 $time,
                 level4, level3, level2, level1,
                 low, medium, high, full);
    end

endmodule