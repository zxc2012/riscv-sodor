// vlxbu.v and vlxseg[2-8]bu.v
require(P.VU.vsew >= e8);
require((insn.rs2() & (P.VU.vlmul - 1)) == 0);
VI_DUPLICATE_VREG(insn.rs2(), P.VU.vlmax);
VI_LD(index[i], fn, uint8, 1);
