module Alfa_Xylo(Tom,Notas,Saidas)
    input wire Tom; // Entrada A do circuito
    input wire [2:0] Notas; // B, C e D
    output wire [6:0] Saidas;

    assign Saidas[6] = (~Notas[2] & ~Notas[1] & ~Notas[0]) | Tom;
    assign Saidas[5] = (~Tom & ~Notas[1] & Notas[0]) | (~Notas[1] & ~Notas[0]) | (Tom & ~Notas[2] & ~Notas[1]) | (Tom & ~Notas[2] & Notas[0]);
    assign Saidas[4] = (~Notas[1] & ~Notas[0]) | (Tom & Notas[0]) | (Notas[2] & Notas[1] & Notas[0]);
    assign Saidas[3] = (~Tom & ~Notas[2]) | (~Tom & Notas[2] & Notas[0]) | (Notas[2] & Notas[1] & ~Notas[0]);
    assign Saidas[2] = (~Notas[1] & ~Notas[0]) | (~Tom & Notas[2] & Notas[1] & Notas[0]) | (Tom & Notas[2] & Notas[1]) | (Notas[2] & Notas[1] & ~Notas[0]);
    assign Saidas[1] = (~Tom & ~Notas[1] & ~Notas[0]) | (Tom & ~Notas[2]) | (~Tom & ~Notas[2] & Notas[0]) | (Tom & Notas[1] & ~Notas[0]);
    assign Saidas[0] = (~Notas[2] & ~Notas[1] & ~Notas[0]) | (Notas[2] & ~Notas[1] & Notas[0]) | (~Tom & ~Notas[2] & Notas[1]);
endmodule//Tom,Notas,Saida