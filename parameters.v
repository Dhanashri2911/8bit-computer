`define OP_NOP 4'h0
`define OP_LDA 4'h1
`define OP_ADD 4'h2
`define OP_OUT 4'h3
`define OP_JMP 4'h4
`define OP_HLT 4'h5

`define STATE_NEXT 4'h0
`define STATE_FETCH_PC 4'h1
`define STATE_FETCH_INST 4'h2
`define STATE_FETCH_ARG 4'h3
`define STATE_HALT 4'h4
`define STATE_JUMP_Z 4'h5
`define STATE_OUT_A 4'h6
`define STATE_LOAD_Z 4'h7
`define STATE_RAM_A 4'h8
`define STATE_RAM_B 4'h9
`define STATE_ALU 4'ha