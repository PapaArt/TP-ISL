module Alfa_desc(Tom, notas1, notas2, notas3, saida1, saida2, saida3, saida4, saida5, saida6, saida7);
    input wire  Tom;
    input wire notas1, notas2, notas3; //B, C e D 
    output reg saida1, saida2, saida3, saida4, saida5, saida6, saida7;

    always @ ( * ) begin
        saida1 = Tom | (~notas1 & ~notas2 & ~notas3);
        saida2 = (~Tom & ~notas2) | (~notas2 & ~notas3) | (~notas1 & ~notas2) | (~Tom & notas1 & ~notas3) | (Tom & ~notas1 & ~notas3);
        saida3 = (~notas2 & ~notas3) | (Tom & notas3) | (notas1 & notas2 & notas3);
        saida4 = (~Tom & ~notas1) | (~Tom & notas1 & notas3) | (notas1 & notas2 & ~notas3) | (~notas1 & ~notas2 & ~notas3);
        saida5 = (~notas2 & ~notas3) | (~Tom & ~notas1 & notas2 & notas3) | (Tom & notas1 & notas2) | (notas1 & notas2 & ~notas3);
        saida6 = (~Tom & ~notas2 & ~notas3) | (Tom & ~notas1) | (~Tom & ~notas1 & notas3) | (Tom & notas2 & ~notas3);
        saida7 = (~notas1 & ~notas2 & ~notas3) | (notas1 & ~notas2 & notas3) | (~Tom & ~notas1 & notas2);
    end
endmodule//Tom,Notas,Saida
