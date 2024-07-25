# 16-bit ALU
The project shows the functioning and design of a 16-bit ALU(Arithmetical & Logical Unit) using verilog.
## Approach
At first, following components were designed individually and then instantiated in a single design to get a functional ALU
  * 16 bit 2 to 1 Multiplexer
  * Half adder
  * Full adder
  * 16 bit adder
### Multiplexer
It is a selection component, to decide which of the two components is to be sent to output net, using a selection pin. It is constructed using logic gates.
### Half adder
It is a component which performs binary addition of 2-bits, and gives `sum` and `carry`.
### Full adder
It is similar to half adder, except for the part that it performs addition on 3-bits. So, there are two `input bits` and an `input carry` bit.
### 16 bit adder
It performs binary addition of two 16-bit numbers, using a half adder and full adders. `Carry` of each adder is carry forwarded to next adder. It gives an 16-bit output.

## Implementation and design
The ALU has two 16-bit inputs(i.e. operands) and one 16-bit output, two 1-bit comparison outputs and 6 control bits for selection of the operation to be performed.
These 6 bits are:
`zx,nx,zy,ny,f,no`.
  * if zx is `true`, then x is set to `0`.
  * if nx is `true`, then x is set to `!x`(bitwise NOT).
  * if zy is `true`, then y is set to `0`.
  * if ny is `true`, then y is set to `!y`(bitwise NOT).
  * if f is `true`, then binary addition is performed of x and y, else output is x&y(bitwise AND).
Using these 6-bits this ALU can perform 20 Logical and Arithmetical operations.
These operations and bit-modes are listed below. The explanation behind the selection of bits can be deduced with little effort.

    ![](https://github.com/punyansh-v/ALU/blob/main/Op.png)
    
Apart from these, `zr` and `ng` can be used for comparison.

 * Perform x-y.
 * If x>y, zr=0. ng=0
 * If x==y, zr=1, ng=0
 * If x<y, zr=0, ng=1.

So, this is the funtioning of the ALU.
