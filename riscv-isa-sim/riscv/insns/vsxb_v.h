// vsxb.v and vsxseg[2-8]b.v
require(P.VU.vsew >= e8);
require((insn.rs2() & (P.VU.vlmul - 1)) == 0);
VI_DUPLICATE_VREG(insn.rs2(), P.VU.vlmax);
VI_ST(index[i], fn, uint8, 1);
