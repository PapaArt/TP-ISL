//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module TP(

    //////////// SW //////////
    input             [17:0]        SW,

    //////////// SEG7 //////////
    output             [6:0]        HEX0,
    output             [6:0]        HEX1,
    output             [6:0]        HEX2,
    output             [6:0]        HEX3,
    output             [6:0]        HEX4,
    output             [6:0]        HEX5,
    output             [6:0]        HEX6,
    output             [6:0]        HEX7
);



//=======================================================
//  REG/WIRE declarations
//=======================================================
Alfa_desc sim_instancia(.Tom(SW[17]), .notas1(SW[16]), .notas2(SW[15]), .notas3(SW[14]), .saida1(HEX0[0]), .saida2(HEX0[1]), .saida3(HEX0[2]), .saida4(HEX0[3]), .saida5(HEX0[4]), .saida6(HEX0[5]), .saida7(HEX0[6]));



//=======================================================
//  Structural coding
//=======================================================



endmodule
