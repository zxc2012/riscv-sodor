// vlxw.v and vlxseg[2-8]w.v
require(P.VU.vsew >= e32);
require((insn.rs2() & (P.VU.vlmul - 1)) == 0);
VI_DUPLICATE_VREG(insn.rs2(), P.VU.vlmax);
VI_LD(index[i], fn, int32, 4);

