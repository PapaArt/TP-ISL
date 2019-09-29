`include "Alfa_desc.v"

module Alfa_xylo();
    reg Tom;
    reg  [2:0] Notas;
    wire [6:0] Saidas;
    Alfa_xylo sim_instancia(.Tom(tom), .Notas(notas), .Saidas(saidas));
    
    initial begin
        tom = 1'b0;
        notas = 3'b0;
        clock = 1'b0;
        $dumpfile("sim-onda.vcd");
        $dumpvars;
        $monitor("%b%b%b%b saida = %b", tom, notas[2], notas[1], notas[0], saidas);
        #2  tom = 1'b0; notas[2] = 1'b0;  notas[1] = 1'b0; notas[0] = 1'b0;
        #2  tom = 1'b0; notas[2] = 1'b0;  notas[1] = 1'b0; notas[0] = 1'b0;
        #2  tom = 1'b0; notas[2] = 1'b0;  notas[1] = 1'b0; notas[0] = 1'b0;
        #2  tom = 1'b0; notas[2] = 1'b0;  notas[1] = 1'b0; notas[0] = 1'b0;
        #2  tom = 1'b0; notas[2] = 1'b0;  notas[1] = 1'b0; notas[0] = 1'b0;
        #2  tom = 1'b0; notas[2] = 1'b0;  notas[1] = 1'b0; notas[0] = 1'b0;
        #2  tom = 1'b0; notas[2] = 1'b0;  notas[1] = 1'b0; notas[0] = 1'b0;
        #2  tom = 1'b0; notas[2] = 1'b0;  notas[1] = 1'b0; notas[0] = 1'b0;
        #2  tom = 1'b0; notas[2] = 1'b0;  notas[1] = 1'b0; notas[0] = 1'b0;
        #2  tom = 1'b0; notas[2] = 1'b0;  notas[1] = 1'b0; notas[0] = 1'b0;
        #2  tom = 1'b0; notas[2] = 1'b0;  notas[1] = 1'b0; notas[0] = 1'b0;
        #2  tom = 1'b0; notas[2] = 1'b0;  notas[1] = 1'b0; notas[0] = 1'b0;
        #2  tom = 1'b0; notas[2] = 1'b0;  notas[1] = 1'b0; notas[0] = 1'b0;
        #2  tom = 1'b0; notas[2] = 1'b0;  notas[1] = 1'b0; notas[0] = 1'b0;
        #2  tom = 1'b0; notas[2] = 1'b0;  notas[1] = 1'b0; notas[0] = 1'b0;
        #2  tom = 1'b0; notas[2] = 1'b0;  notas[1] = 1'b0; notas[0] = 1'b0;
        $finish;
    end
    always begin
        clock = ~clock;
    end
endmodule 