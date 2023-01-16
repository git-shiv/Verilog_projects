import cocotb
from cocotb.triggers import Timer


@cocotb.test()
async def dut_test(ALU4BIT):

    A=(1,3,5,15)
    B=(1,8,3,2)

    opcode=(0,1,2,4)


    out=(0,11,2,15)

    for i in range(4):
        ALU4BIT.A.value=A[i]
        ALU4BIT.B.value=B[i]
        ALU4BIT.opcode.value=opcode[i]

        await Timer(1,'ns')


    assert ALU4BIT.out.value== out[i],f"Error at iteration {i}"