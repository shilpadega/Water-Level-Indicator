module water_level_indicator (
    input  wire level1,
    input  wire level2,
    input  wire level3,
    input  wire level4,

    output wire low,
    output wire medium,
    output wire high,
    output wire full
);

    assign low    = level1 & ~level2;
    assign medium = level2 & ~level3;
    assign high   = level3 & ~level4;
    assign full   = level4;

endmodule