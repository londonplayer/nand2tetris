// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/1/Or.hdl
/**
 * Or gate:
 * if (a or b) out = 1, else out = 0 
 */
CHIP Or {
    IN a, b;
    OUT out;

    PARTS:
    Not(in=a, out=notA);
    Not(in=b, out=notB);
    Nand(a=notA, b=notB, out=out);

    // if (a and b): notA = 0, notB = 0 -> Nand -> out = 1
    // if (a and not b): notA = 0, notB = 1 -> Nand -> out = 1
    // if (not a and b): notA = 1, notB = 0 -> Nand -> out = 1
    // if (not a and not b): notA = 1, notB= 1 -> Nand -> out = 0
}