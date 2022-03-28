module CtlPath(
  input         clock,
  input         reset,
  input         io_dmem_resp_valid,
  input  [31:0] io_dat_dec_inst,
  input         io_dat_exe_br_eq,
  input         io_dat_exe_br_lt,
  input         io_dat_exe_br_ltu,
  input  [3:0]  io_dat_exe_br_type,
  input         io_dat_mem_ctrl_dmem_val,
  input         io_dat_csr_eret,
  output        io_ctl_dec_stall,
  output        io_ctl_full_stall,
  output [1:0]  io_ctl_exe_pc_sel,
  output [3:0]  io_ctl_br_type,
  output        io_ctl_if_kill,
  output        io_ctl_dec_kill,
  output [1:0]  io_ctl_op1_sel,
  output [2:0]  io_ctl_op2_sel,
  output [3:0]  io_ctl_alu_fun,
  output [1:0]  io_ctl_wb_sel,
  output        io_ctl_rf_wen,
  output        io_ctl_mem_val,
  output [1:0]  io_ctl_mem_fcn,
  output [2:0]  io_ctl_mem_typ,
  output [2:0]  io_ctl_csr_cmd,
  output        io_ctl_fencei,
  output        io_ctl_pipeline_kill,
  output        io_ctl_mem_exception
);
  wire [31:0] _T; // @[Lookup.scala 31:38]
  wire  _T_1; // @[Lookup.scala 31:38]
  wire  _T_3; // @[Lookup.scala 31:38]
  wire  _T_5; // @[Lookup.scala 31:38]
  wire  _T_7; // @[Lookup.scala 31:38]
  wire  _T_9; // @[Lookup.scala 31:38]
  wire  _T_11; // @[Lookup.scala 31:38]
  wire  _T_13; // @[Lookup.scala 31:38]
  wire  _T_15; // @[Lookup.scala 31:38]
  wire [31:0] _T_16; // @[Lookup.scala 31:38]
  wire  _T_17; // @[Lookup.scala 31:38]
  wire  _T_19; // @[Lookup.scala 31:38]
  wire  _T_21; // @[Lookup.scala 31:38]
  wire  _T_23; // @[Lookup.scala 31:38]
  wire  _T_25; // @[Lookup.scala 31:38]
  wire  _T_27; // @[Lookup.scala 31:38]
  wire  _T_29; // @[Lookup.scala 31:38]
  wire  _T_31; // @[Lookup.scala 31:38]
  wire [31:0] _T_32; // @[Lookup.scala 31:38]
  wire  _T_33; // @[Lookup.scala 31:38]
  wire  _T_35; // @[Lookup.scala 31:38]
  wire  _T_37; // @[Lookup.scala 31:38]
  wire [31:0] _T_38; // @[Lookup.scala 31:38]
  wire  _T_39; // @[Lookup.scala 31:38]
  wire  _T_41; // @[Lookup.scala 31:38]
  wire  _T_43; // @[Lookup.scala 31:38]
  wire  _T_45; // @[Lookup.scala 31:38]
  wire  _T_47; // @[Lookup.scala 31:38]
  wire  _T_49; // @[Lookup.scala 31:38]
  wire  _T_51; // @[Lookup.scala 31:38]
  wire  _T_53; // @[Lookup.scala 31:38]
  wire  _T_55; // @[Lookup.scala 31:38]
  wire  _T_57; // @[Lookup.scala 31:38]
  wire  _T_59; // @[Lookup.scala 31:38]
  wire  _T_61; // @[Lookup.scala 31:38]
  wire  _T_63; // @[Lookup.scala 31:38]
  wire  _T_65; // @[Lookup.scala 31:38]
  wire  _T_67; // @[Lookup.scala 31:38]
  wire  _T_69; // @[Lookup.scala 31:38]
  wire  _T_71; // @[Lookup.scala 31:38]
  wire  _T_73; // @[Lookup.scala 31:38]
  wire  _T_75; // @[Lookup.scala 31:38]
  wire  _T_77; // @[Lookup.scala 31:38]
  wire  _T_79; // @[Lookup.scala 31:38]
  wire  _T_81; // @[Lookup.scala 31:38]
  wire  _T_83; // @[Lookup.scala 31:38]
  wire  _T_85; // @[Lookup.scala 31:38]
  wire  _T_87; // @[Lookup.scala 31:38]
  wire  _T_89; // @[Lookup.scala 31:38]
  wire  _T_91; // @[Lookup.scala 31:38]
  wire  _T_93; // @[Lookup.scala 31:38]
  wire  _T_95; // @[Lookup.scala 31:38]
  wire  _T_97; // @[Lookup.scala 31:38]
  wire  _T_99; // @[Lookup.scala 31:38]
  wire  _T_101; // @[Lookup.scala 33:37]
  wire  _T_102; // @[Lookup.scala 33:37]
  wire  _T_103; // @[Lookup.scala 33:37]
  wire  _T_104; // @[Lookup.scala 33:37]
  wire  _T_105; // @[Lookup.scala 33:37]
  wire  _T_106; // @[Lookup.scala 33:37]
  wire  _T_107; // @[Lookup.scala 33:37]
  wire  _T_108; // @[Lookup.scala 33:37]
  wire  _T_109; // @[Lookup.scala 33:37]
  wire  _T_110; // @[Lookup.scala 33:37]
  wire  _T_111; // @[Lookup.scala 33:37]
  wire  _T_112; // @[Lookup.scala 33:37]
  wire  _T_113; // @[Lookup.scala 33:37]
  wire  _T_114; // @[Lookup.scala 33:37]
  wire  _T_115; // @[Lookup.scala 33:37]
  wire  _T_116; // @[Lookup.scala 33:37]
  wire  _T_117; // @[Lookup.scala 33:37]
  wire  _T_118; // @[Lookup.scala 33:37]
  wire  _T_119; // @[Lookup.scala 33:37]
  wire  _T_120; // @[Lookup.scala 33:37]
  wire  _T_121; // @[Lookup.scala 33:37]
  wire  _T_122; // @[Lookup.scala 33:37]
  wire  _T_123; // @[Lookup.scala 33:37]
  wire  _T_124; // @[Lookup.scala 33:37]
  wire  _T_125; // @[Lookup.scala 33:37]
  wire  _T_126; // @[Lookup.scala 33:37]
  wire  _T_127; // @[Lookup.scala 33:37]
  wire  _T_128; // @[Lookup.scala 33:37]
  wire  _T_129; // @[Lookup.scala 33:37]
  wire  _T_130; // @[Lookup.scala 33:37]
  wire  _T_131; // @[Lookup.scala 33:37]
  wire  _T_132; // @[Lookup.scala 33:37]
  wire  _T_133; // @[Lookup.scala 33:37]
  wire  _T_134; // @[Lookup.scala 33:37]
  wire  _T_135; // @[Lookup.scala 33:37]
  wire  _T_136; // @[Lookup.scala 33:37]
  wire  _T_137; // @[Lookup.scala 33:37]
  wire  _T_138; // @[Lookup.scala 33:37]
  wire  _T_139; // @[Lookup.scala 33:37]
  wire  _T_140; // @[Lookup.scala 33:37]
  wire  _T_141; // @[Lookup.scala 33:37]
  wire  _T_142; // @[Lookup.scala 33:37]
  wire  _T_143; // @[Lookup.scala 33:37]
  wire  _T_144; // @[Lookup.scala 33:37]
  wire  _T_145; // @[Lookup.scala 33:37]
  wire  _T_146; // @[Lookup.scala 33:37]
  wire  _T_147; // @[Lookup.scala 33:37]
  wire  _T_148; // @[Lookup.scala 33:37]
  wire  cs_val_inst; // @[Lookup.scala 33:37]
  wire [3:0] _T_162; // @[Lookup.scala 33:37]
  wire [3:0] _T_163; // @[Lookup.scala 33:37]
  wire [3:0] _T_164; // @[Lookup.scala 33:37]
  wire [3:0] _T_165; // @[Lookup.scala 33:37]
  wire [3:0] _T_166; // @[Lookup.scala 33:37]
  wire [3:0] _T_167; // @[Lookup.scala 33:37]
  wire [3:0] _T_168; // @[Lookup.scala 33:37]
  wire [3:0] _T_169; // @[Lookup.scala 33:37]
  wire [3:0] _T_170; // @[Lookup.scala 33:37]
  wire [3:0] _T_171; // @[Lookup.scala 33:37]
  wire [3:0] _T_172; // @[Lookup.scala 33:37]
  wire [3:0] _T_173; // @[Lookup.scala 33:37]
  wire [3:0] _T_174; // @[Lookup.scala 33:37]
  wire [3:0] _T_175; // @[Lookup.scala 33:37]
  wire [3:0] _T_176; // @[Lookup.scala 33:37]
  wire [3:0] _T_177; // @[Lookup.scala 33:37]
  wire [3:0] _T_178; // @[Lookup.scala 33:37]
  wire [3:0] _T_179; // @[Lookup.scala 33:37]
  wire [3:0] _T_180; // @[Lookup.scala 33:37]
  wire [3:0] _T_181; // @[Lookup.scala 33:37]
  wire [3:0] _T_182; // @[Lookup.scala 33:37]
  wire [3:0] _T_183; // @[Lookup.scala 33:37]
  wire [3:0] _T_184; // @[Lookup.scala 33:37]
  wire [3:0] _T_185; // @[Lookup.scala 33:37]
  wire [3:0] _T_186; // @[Lookup.scala 33:37]
  wire [3:0] _T_187; // @[Lookup.scala 33:37]
  wire [3:0] _T_188; // @[Lookup.scala 33:37]
  wire [3:0] _T_189; // @[Lookup.scala 33:37]
  wire [3:0] _T_190; // @[Lookup.scala 33:37]
  wire [3:0] _T_191; // @[Lookup.scala 33:37]
  wire [3:0] _T_192; // @[Lookup.scala 33:37]
  wire [3:0] _T_193; // @[Lookup.scala 33:37]
  wire [3:0] _T_194; // @[Lookup.scala 33:37]
  wire [3:0] _T_195; // @[Lookup.scala 33:37]
  wire [3:0] _T_196; // @[Lookup.scala 33:37]
  wire [3:0] _T_197; // @[Lookup.scala 33:37]
  wire [1:0] _T_205; // @[Lookup.scala 33:37]
  wire [1:0] _T_206; // @[Lookup.scala 33:37]
  wire [1:0] _T_207; // @[Lookup.scala 33:37]
  wire [1:0] _T_208; // @[Lookup.scala 33:37]
  wire [1:0] _T_209; // @[Lookup.scala 33:37]
  wire [1:0] _T_210; // @[Lookup.scala 33:37]
  wire [1:0] _T_211; // @[Lookup.scala 33:37]
  wire [1:0] _T_212; // @[Lookup.scala 33:37]
  wire [1:0] _T_213; // @[Lookup.scala 33:37]
  wire [1:0] _T_214; // @[Lookup.scala 33:37]
  wire [1:0] _T_215; // @[Lookup.scala 33:37]
  wire [1:0] _T_216; // @[Lookup.scala 33:37]
  wire [1:0] _T_217; // @[Lookup.scala 33:37]
  wire [1:0] _T_218; // @[Lookup.scala 33:37]
  wire [1:0] _T_219; // @[Lookup.scala 33:37]
  wire [1:0] _T_220; // @[Lookup.scala 33:37]
  wire [1:0] _T_221; // @[Lookup.scala 33:37]
  wire [1:0] _T_222; // @[Lookup.scala 33:37]
  wire [1:0] _T_223; // @[Lookup.scala 33:37]
  wire [1:0] _T_224; // @[Lookup.scala 33:37]
  wire [1:0] _T_225; // @[Lookup.scala 33:37]
  wire [1:0] _T_226; // @[Lookup.scala 33:37]
  wire [1:0] _T_227; // @[Lookup.scala 33:37]
  wire [1:0] _T_228; // @[Lookup.scala 33:37]
  wire [1:0] _T_229; // @[Lookup.scala 33:37]
  wire [1:0] _T_230; // @[Lookup.scala 33:37]
  wire [1:0] _T_231; // @[Lookup.scala 33:37]
  wire [1:0] _T_232; // @[Lookup.scala 33:37]
  wire [1:0] _T_233; // @[Lookup.scala 33:37]
  wire [1:0] _T_234; // @[Lookup.scala 33:37]
  wire [1:0] _T_235; // @[Lookup.scala 33:37]
  wire [1:0] _T_236; // @[Lookup.scala 33:37]
  wire [1:0] _T_237; // @[Lookup.scala 33:37]
  wire [1:0] _T_238; // @[Lookup.scala 33:37]
  wire [1:0] _T_239; // @[Lookup.scala 33:37]
  wire [1:0] _T_240; // @[Lookup.scala 33:37]
  wire [1:0] _T_241; // @[Lookup.scala 33:37]
  wire [1:0] _T_242; // @[Lookup.scala 33:37]
  wire [1:0] _T_243; // @[Lookup.scala 33:37]
  wire [1:0] _T_244; // @[Lookup.scala 33:37]
  wire [1:0] _T_245; // @[Lookup.scala 33:37]
  wire [1:0] _T_246; // @[Lookup.scala 33:37]
  wire [2:0] _T_260; // @[Lookup.scala 33:37]
  wire [2:0] _T_261; // @[Lookup.scala 33:37]
  wire [2:0] _T_262; // @[Lookup.scala 33:37]
  wire [2:0] _T_263; // @[Lookup.scala 33:37]
  wire [2:0] _T_264; // @[Lookup.scala 33:37]
  wire [2:0] _T_265; // @[Lookup.scala 33:37]
  wire [2:0] _T_266; // @[Lookup.scala 33:37]
  wire [2:0] _T_267; // @[Lookup.scala 33:37]
  wire [2:0] _T_268; // @[Lookup.scala 33:37]
  wire [2:0] _T_269; // @[Lookup.scala 33:37]
  wire [2:0] _T_270; // @[Lookup.scala 33:37]
  wire [2:0] _T_271; // @[Lookup.scala 33:37]
  wire [2:0] _T_272; // @[Lookup.scala 33:37]
  wire [2:0] _T_273; // @[Lookup.scala 33:37]
  wire [2:0] _T_274; // @[Lookup.scala 33:37]
  wire [2:0] _T_275; // @[Lookup.scala 33:37]
  wire [2:0] _T_276; // @[Lookup.scala 33:37]
  wire [2:0] _T_277; // @[Lookup.scala 33:37]
  wire [2:0] _T_278; // @[Lookup.scala 33:37]
  wire [2:0] _T_279; // @[Lookup.scala 33:37]
  wire [2:0] _T_280; // @[Lookup.scala 33:37]
  wire [2:0] _T_281; // @[Lookup.scala 33:37]
  wire [2:0] _T_282; // @[Lookup.scala 33:37]
  wire [2:0] _T_283; // @[Lookup.scala 33:37]
  wire [2:0] _T_284; // @[Lookup.scala 33:37]
  wire [2:0] _T_285; // @[Lookup.scala 33:37]
  wire [2:0] _T_286; // @[Lookup.scala 33:37]
  wire [2:0] _T_287; // @[Lookup.scala 33:37]
  wire [2:0] _T_288; // @[Lookup.scala 33:37]
  wire [2:0] _T_289; // @[Lookup.scala 33:37]
  wire [2:0] _T_290; // @[Lookup.scala 33:37]
  wire [2:0] _T_291; // @[Lookup.scala 33:37]
  wire [2:0] _T_292; // @[Lookup.scala 33:37]
  wire [2:0] _T_293; // @[Lookup.scala 33:37]
  wire [2:0] _T_294; // @[Lookup.scala 33:37]
  wire [2:0] _T_295; // @[Lookup.scala 33:37]
  wire  _T_304; // @[Lookup.scala 33:37]
  wire  _T_305; // @[Lookup.scala 33:37]
  wire  _T_306; // @[Lookup.scala 33:37]
  wire  _T_307; // @[Lookup.scala 33:37]
  wire  _T_308; // @[Lookup.scala 33:37]
  wire  _T_309; // @[Lookup.scala 33:37]
  wire  _T_310; // @[Lookup.scala 33:37]
  wire  _T_311; // @[Lookup.scala 33:37]
  wire  _T_312; // @[Lookup.scala 33:37]
  wire  _T_313; // @[Lookup.scala 33:37]
  wire  _T_314; // @[Lookup.scala 33:37]
  wire  _T_315; // @[Lookup.scala 33:37]
  wire  _T_316; // @[Lookup.scala 33:37]
  wire  _T_317; // @[Lookup.scala 33:37]
  wire  _T_318; // @[Lookup.scala 33:37]
  wire  _T_319; // @[Lookup.scala 33:37]
  wire  _T_320; // @[Lookup.scala 33:37]
  wire  _T_321; // @[Lookup.scala 33:37]
  wire  _T_322; // @[Lookup.scala 33:37]
  wire  _T_323; // @[Lookup.scala 33:37]
  wire  _T_324; // @[Lookup.scala 33:37]
  wire  _T_325; // @[Lookup.scala 33:37]
  wire  _T_326; // @[Lookup.scala 33:37]
  wire  _T_327; // @[Lookup.scala 33:37]
  wire  _T_328; // @[Lookup.scala 33:37]
  wire  _T_329; // @[Lookup.scala 33:37]
  wire  _T_330; // @[Lookup.scala 33:37]
  wire  _T_331; // @[Lookup.scala 33:37]
  wire  _T_332; // @[Lookup.scala 33:37]
  wire  _T_333; // @[Lookup.scala 33:37]
  wire  _T_334; // @[Lookup.scala 33:37]
  wire  _T_335; // @[Lookup.scala 33:37]
  wire  _T_336; // @[Lookup.scala 33:37]
  wire  _T_337; // @[Lookup.scala 33:37]
  wire  _T_338; // @[Lookup.scala 33:37]
  wire  _T_339; // @[Lookup.scala 33:37]
  wire  _T_340; // @[Lookup.scala 33:37]
  wire  _T_341; // @[Lookup.scala 33:37]
  wire  _T_342; // @[Lookup.scala 33:37]
  wire  _T_343; // @[Lookup.scala 33:37]
  wire  _T_344; // @[Lookup.scala 33:37]
  wire  cs_rs1_oen; // @[Lookup.scala 33:37]
  wire  _T_364; // @[Lookup.scala 33:37]
  wire  _T_365; // @[Lookup.scala 33:37]
  wire  _T_366; // @[Lookup.scala 33:37]
  wire  _T_367; // @[Lookup.scala 33:37]
  wire  _T_368; // @[Lookup.scala 33:37]
  wire  _T_369; // @[Lookup.scala 33:37]
  wire  _T_370; // @[Lookup.scala 33:37]
  wire  _T_371; // @[Lookup.scala 33:37]
  wire  _T_372; // @[Lookup.scala 33:37]
  wire  _T_373; // @[Lookup.scala 33:37]
  wire  _T_374; // @[Lookup.scala 33:37]
  wire  _T_375; // @[Lookup.scala 33:37]
  wire  _T_376; // @[Lookup.scala 33:37]
  wire  _T_377; // @[Lookup.scala 33:37]
  wire  _T_378; // @[Lookup.scala 33:37]
  wire  _T_379; // @[Lookup.scala 33:37]
  wire  _T_380; // @[Lookup.scala 33:37]
  wire  _T_381; // @[Lookup.scala 33:37]
  wire  _T_382; // @[Lookup.scala 33:37]
  wire  _T_383; // @[Lookup.scala 33:37]
  wire  _T_384; // @[Lookup.scala 33:37]
  wire  _T_385; // @[Lookup.scala 33:37]
  wire  _T_386; // @[Lookup.scala 33:37]
  wire  _T_387; // @[Lookup.scala 33:37]
  wire  _T_388; // @[Lookup.scala 33:37]
  wire  _T_389; // @[Lookup.scala 33:37]
  wire  _T_390; // @[Lookup.scala 33:37]
  wire  _T_391; // @[Lookup.scala 33:37]
  wire  _T_392; // @[Lookup.scala 33:37]
  wire  _T_393; // @[Lookup.scala 33:37]
  wire  cs_rs2_oen; // @[Lookup.scala 33:37]
  wire [3:0] _T_401; // @[Lookup.scala 33:37]
  wire [3:0] _T_402; // @[Lookup.scala 33:37]
  wire [3:0] _T_403; // @[Lookup.scala 33:37]
  wire [3:0] _T_404; // @[Lookup.scala 33:37]
  wire [3:0] _T_405; // @[Lookup.scala 33:37]
  wire [3:0] _T_406; // @[Lookup.scala 33:37]
  wire [3:0] _T_407; // @[Lookup.scala 33:37]
  wire [3:0] _T_408; // @[Lookup.scala 33:37]
  wire [3:0] _T_409; // @[Lookup.scala 33:37]
  wire [3:0] _T_410; // @[Lookup.scala 33:37]
  wire [3:0] _T_411; // @[Lookup.scala 33:37]
  wire [3:0] _T_412; // @[Lookup.scala 33:37]
  wire [3:0] _T_413; // @[Lookup.scala 33:37]
  wire [3:0] _T_414; // @[Lookup.scala 33:37]
  wire [3:0] _T_415; // @[Lookup.scala 33:37]
  wire [3:0] _T_416; // @[Lookup.scala 33:37]
  wire [3:0] _T_417; // @[Lookup.scala 33:37]
  wire [3:0] _T_418; // @[Lookup.scala 33:37]
  wire [3:0] _T_419; // @[Lookup.scala 33:37]
  wire [3:0] _T_420; // @[Lookup.scala 33:37]
  wire [3:0] _T_421; // @[Lookup.scala 33:37]
  wire [3:0] _T_422; // @[Lookup.scala 33:37]
  wire [3:0] _T_423; // @[Lookup.scala 33:37]
  wire [3:0] _T_424; // @[Lookup.scala 33:37]
  wire [3:0] _T_425; // @[Lookup.scala 33:37]
  wire [3:0] _T_426; // @[Lookup.scala 33:37]
  wire [3:0] _T_427; // @[Lookup.scala 33:37]
  wire [3:0] _T_428; // @[Lookup.scala 33:37]
  wire [3:0] _T_429; // @[Lookup.scala 33:37]
  wire [3:0] _T_430; // @[Lookup.scala 33:37]
  wire [3:0] _T_431; // @[Lookup.scala 33:37]
  wire [3:0] _T_432; // @[Lookup.scala 33:37]
  wire [3:0] _T_433; // @[Lookup.scala 33:37]
  wire [3:0] _T_434; // @[Lookup.scala 33:37]
  wire [3:0] _T_435; // @[Lookup.scala 33:37]
  wire [3:0] _T_436; // @[Lookup.scala 33:37]
  wire [3:0] _T_437; // @[Lookup.scala 33:37]
  wire [3:0] _T_438; // @[Lookup.scala 33:37]
  wire [3:0] _T_439; // @[Lookup.scala 33:37]
  wire [3:0] _T_440; // @[Lookup.scala 33:37]
  wire [3:0] _T_441; // @[Lookup.scala 33:37]
  wire [3:0] _T_442; // @[Lookup.scala 33:37]
  wire [1:0] _T_450; // @[Lookup.scala 33:37]
  wire [1:0] _T_451; // @[Lookup.scala 33:37]
  wire [1:0] _T_452; // @[Lookup.scala 33:37]
  wire [1:0] _T_453; // @[Lookup.scala 33:37]
  wire [1:0] _T_454; // @[Lookup.scala 33:37]
  wire [1:0] _T_455; // @[Lookup.scala 33:37]
  wire [1:0] _T_456; // @[Lookup.scala 33:37]
  wire [1:0] _T_457; // @[Lookup.scala 33:37]
  wire [1:0] _T_458; // @[Lookup.scala 33:37]
  wire [1:0] _T_459; // @[Lookup.scala 33:37]
  wire [1:0] _T_460; // @[Lookup.scala 33:37]
  wire [1:0] _T_461; // @[Lookup.scala 33:37]
  wire [1:0] _T_462; // @[Lookup.scala 33:37]
  wire [1:0] _T_463; // @[Lookup.scala 33:37]
  wire [1:0] _T_464; // @[Lookup.scala 33:37]
  wire [1:0] _T_465; // @[Lookup.scala 33:37]
  wire [1:0] _T_466; // @[Lookup.scala 33:37]
  wire [1:0] _T_467; // @[Lookup.scala 33:37]
  wire [1:0] _T_468; // @[Lookup.scala 33:37]
  wire [1:0] _T_469; // @[Lookup.scala 33:37]
  wire [1:0] _T_470; // @[Lookup.scala 33:37]
  wire [1:0] _T_471; // @[Lookup.scala 33:37]
  wire [1:0] _T_472; // @[Lookup.scala 33:37]
  wire [1:0] _T_473; // @[Lookup.scala 33:37]
  wire [1:0] _T_474; // @[Lookup.scala 33:37]
  wire [1:0] _T_475; // @[Lookup.scala 33:37]
  wire [1:0] _T_476; // @[Lookup.scala 33:37]
  wire [1:0] _T_477; // @[Lookup.scala 33:37]
  wire [1:0] _T_478; // @[Lookup.scala 33:37]
  wire [1:0] _T_479; // @[Lookup.scala 33:37]
  wire [1:0] _T_480; // @[Lookup.scala 33:37]
  wire [1:0] _T_481; // @[Lookup.scala 33:37]
  wire [1:0] _T_482; // @[Lookup.scala 33:37]
  wire [1:0] _T_483; // @[Lookup.scala 33:37]
  wire [1:0] _T_484; // @[Lookup.scala 33:37]
  wire [1:0] _T_485; // @[Lookup.scala 33:37]
  wire [1:0] _T_486; // @[Lookup.scala 33:37]
  wire [1:0] _T_487; // @[Lookup.scala 33:37]
  wire [1:0] _T_488; // @[Lookup.scala 33:37]
  wire [1:0] _T_489; // @[Lookup.scala 33:37]
  wire [1:0] _T_490; // @[Lookup.scala 33:37]
  wire [1:0] _T_491; // @[Lookup.scala 33:37]
  wire  _T_505; // @[Lookup.scala 33:37]
  wire  _T_506; // @[Lookup.scala 33:37]
  wire  _T_507; // @[Lookup.scala 33:37]
  wire  _T_508; // @[Lookup.scala 33:37]
  wire  _T_509; // @[Lookup.scala 33:37]
  wire  _T_510; // @[Lookup.scala 33:37]
  wire  _T_511; // @[Lookup.scala 33:37]
  wire  _T_512; // @[Lookup.scala 33:37]
  wire  _T_513; // @[Lookup.scala 33:37]
  wire  _T_514; // @[Lookup.scala 33:37]
  wire  _T_515; // @[Lookup.scala 33:37]
  wire  _T_516; // @[Lookup.scala 33:37]
  wire  _T_517; // @[Lookup.scala 33:37]
  wire  _T_518; // @[Lookup.scala 33:37]
  wire  _T_519; // @[Lookup.scala 33:37]
  wire  _T_520; // @[Lookup.scala 33:37]
  wire  _T_521; // @[Lookup.scala 33:37]
  wire  _T_522; // @[Lookup.scala 33:37]
  wire  _T_523; // @[Lookup.scala 33:37]
  wire  _T_524; // @[Lookup.scala 33:37]
  wire  _T_525; // @[Lookup.scala 33:37]
  wire  _T_526; // @[Lookup.scala 33:37]
  wire  _T_527; // @[Lookup.scala 33:37]
  wire  _T_528; // @[Lookup.scala 33:37]
  wire  _T_529; // @[Lookup.scala 33:37]
  wire  _T_530; // @[Lookup.scala 33:37]
  wire  _T_531; // @[Lookup.scala 33:37]
  wire  _T_532; // @[Lookup.scala 33:37]
  wire  _T_533; // @[Lookup.scala 33:37]
  wire  _T_534; // @[Lookup.scala 33:37]
  wire  _T_535; // @[Lookup.scala 33:37]
  wire  _T_536; // @[Lookup.scala 33:37]
  wire  _T_537; // @[Lookup.scala 33:37]
  wire  _T_538; // @[Lookup.scala 33:37]
  wire  _T_539; // @[Lookup.scala 33:37]
  wire  _T_540; // @[Lookup.scala 33:37]
  wire  cs0_2; // @[Lookup.scala 33:37]
  wire  _T_542; // @[Lookup.scala 33:37]
  wire  _T_543; // @[Lookup.scala 33:37]
  wire  _T_544; // @[Lookup.scala 33:37]
  wire  _T_545; // @[Lookup.scala 33:37]
  wire  _T_546; // @[Lookup.scala 33:37]
  wire  _T_547; // @[Lookup.scala 33:37]
  wire  _T_548; // @[Lookup.scala 33:37]
  wire  _T_549; // @[Lookup.scala 33:37]
  wire  _T_550; // @[Lookup.scala 33:37]
  wire  _T_551; // @[Lookup.scala 33:37]
  wire  _T_552; // @[Lookup.scala 33:37]
  wire  _T_553; // @[Lookup.scala 33:37]
  wire  _T_554; // @[Lookup.scala 33:37]
  wire  _T_555; // @[Lookup.scala 33:37]
  wire  _T_556; // @[Lookup.scala 33:37]
  wire  _T_557; // @[Lookup.scala 33:37]
  wire  _T_558; // @[Lookup.scala 33:37]
  wire  _T_559; // @[Lookup.scala 33:37]
  wire  _T_560; // @[Lookup.scala 33:37]
  wire  _T_561; // @[Lookup.scala 33:37]
  wire  _T_562; // @[Lookup.scala 33:37]
  wire  _T_563; // @[Lookup.scala 33:37]
  wire  _T_564; // @[Lookup.scala 33:37]
  wire  _T_565; // @[Lookup.scala 33:37]
  wire  _T_566; // @[Lookup.scala 33:37]
  wire  _T_567; // @[Lookup.scala 33:37]
  wire  _T_568; // @[Lookup.scala 33:37]
  wire  _T_569; // @[Lookup.scala 33:37]
  wire  _T_570; // @[Lookup.scala 33:37]
  wire  _T_571; // @[Lookup.scala 33:37]
  wire  _T_572; // @[Lookup.scala 33:37]
  wire  _T_573; // @[Lookup.scala 33:37]
  wire  _T_574; // @[Lookup.scala 33:37]
  wire  _T_575; // @[Lookup.scala 33:37]
  wire  _T_576; // @[Lookup.scala 33:37]
  wire  _T_577; // @[Lookup.scala 33:37]
  wire  _T_578; // @[Lookup.scala 33:37]
  wire  _T_579; // @[Lookup.scala 33:37]
  wire  _T_580; // @[Lookup.scala 33:37]
  wire  _T_581; // @[Lookup.scala 33:37]
  wire  _T_582; // @[Lookup.scala 33:37]
  wire  _T_583; // @[Lookup.scala 33:37]
  wire  _T_584; // @[Lookup.scala 33:37]
  wire  _T_585; // @[Lookup.scala 33:37]
  wire  _T_586; // @[Lookup.scala 33:37]
  wire  _T_587; // @[Lookup.scala 33:37]
  wire  _T_588; // @[Lookup.scala 33:37]
  wire  _T_589; // @[Lookup.scala 33:37]
  wire  cs0_3; // @[Lookup.scala 33:37]
  wire  _T_633; // @[Lookup.scala 33:37]
  wire  _T_634; // @[Lookup.scala 33:37]
  wire  _T_635; // @[Lookup.scala 33:37]
  wire  _T_636; // @[Lookup.scala 33:37]
  wire  _T_637; // @[Lookup.scala 33:37]
  wire  _T_638; // @[Lookup.scala 33:37]
  wire  cs0_4; // @[Lookup.scala 33:37]
  wire [2:0] _T_681; // @[Lookup.scala 33:37]
  wire [2:0] _T_682; // @[Lookup.scala 33:37]
  wire [2:0] _T_683; // @[Lookup.scala 33:37]
  wire [2:0] _T_684; // @[Lookup.scala 33:37]
  wire [2:0] _T_685; // @[Lookup.scala 33:37]
  wire [2:0] _T_686; // @[Lookup.scala 33:37]
  wire [2:0] _T_687; // @[Lookup.scala 33:37]
  wire [2:0] _T_691; // @[Lookup.scala 33:37]
  wire [2:0] _T_692; // @[Lookup.scala 33:37]
  wire [2:0] _T_693; // @[Lookup.scala 33:37]
  wire [2:0] _T_694; // @[Lookup.scala 33:37]
  wire [2:0] _T_695; // @[Lookup.scala 33:37]
  wire [2:0] _T_696; // @[Lookup.scala 33:37]
  wire [2:0] _T_697; // @[Lookup.scala 33:37]
  wire [2:0] _T_698; // @[Lookup.scala 33:37]
  wire [2:0] _T_699; // @[Lookup.scala 33:37]
  wire [2:0] _T_700; // @[Lookup.scala 33:37]
  wire [2:0] _T_701; // @[Lookup.scala 33:37]
  wire [2:0] _T_702; // @[Lookup.scala 33:37]
  wire [2:0] _T_703; // @[Lookup.scala 33:37]
  wire [2:0] _T_704; // @[Lookup.scala 33:37]
  wire [2:0] _T_705; // @[Lookup.scala 33:37]
  wire [2:0] _T_706; // @[Lookup.scala 33:37]
  wire [2:0] _T_707; // @[Lookup.scala 33:37]
  wire [2:0] _T_708; // @[Lookup.scala 33:37]
  wire [2:0] _T_709; // @[Lookup.scala 33:37]
  wire [2:0] _T_710; // @[Lookup.scala 33:37]
  wire [2:0] _T_711; // @[Lookup.scala 33:37]
  wire [2:0] _T_712; // @[Lookup.scala 33:37]
  wire [2:0] _T_713; // @[Lookup.scala 33:37]
  wire [2:0] _T_714; // @[Lookup.scala 33:37]
  wire [2:0] _T_715; // @[Lookup.scala 33:37]
  wire [2:0] _T_716; // @[Lookup.scala 33:37]
  wire [2:0] _T_717; // @[Lookup.scala 33:37]
  wire [2:0] _T_718; // @[Lookup.scala 33:37]
  wire [2:0] _T_719; // @[Lookup.scala 33:37]
  wire [2:0] _T_720; // @[Lookup.scala 33:37]
  wire [2:0] _T_721; // @[Lookup.scala 33:37]
  wire [2:0] _T_722; // @[Lookup.scala 33:37]
  wire [2:0] _T_723; // @[Lookup.scala 33:37]
  wire [2:0] _T_724; // @[Lookup.scala 33:37]
  wire [2:0] _T_725; // @[Lookup.scala 33:37]
  wire [2:0] _T_726; // @[Lookup.scala 33:37]
  wire [2:0] _T_727; // @[Lookup.scala 33:37]
  wire [2:0] _T_728; // @[Lookup.scala 33:37]
  wire [2:0] _T_729; // @[Lookup.scala 33:37]
  wire [2:0] _T_730; // @[Lookup.scala 33:37]
  wire [2:0] _T_731; // @[Lookup.scala 33:37]
  wire [2:0] _T_732; // @[Lookup.scala 33:37]
  wire [2:0] _T_733; // @[Lookup.scala 33:37]
  wire [2:0] _T_734; // @[Lookup.scala 33:37]
  wire [2:0] _T_735; // @[Lookup.scala 33:37]
  wire [2:0] _T_736; // @[Lookup.scala 33:37]
  wire [2:0] cs0_6; // @[Lookup.scala 33:37]
  wire  _T_739; // @[Lookup.scala 33:37]
  wire  _T_740; // @[Lookup.scala 33:37]
  wire  _T_741; // @[Lookup.scala 33:37]
  wire  _T_742; // @[Lookup.scala 33:37]
  wire  _T_743; // @[Lookup.scala 33:37]
  wire  _T_744; // @[Lookup.scala 33:37]
  wire  _T_745; // @[Lookup.scala 33:37]
  wire  _T_746; // @[Lookup.scala 33:37]
  wire  _T_747; // @[Lookup.scala 33:37]
  wire  _T_748; // @[Lookup.scala 33:37]
  wire  _T_749; // @[Lookup.scala 33:37]
  wire  _T_750; // @[Lookup.scala 33:37]
  wire  _T_751; // @[Lookup.scala 33:37]
  wire  _T_752; // @[Lookup.scala 33:37]
  wire  _T_753; // @[Lookup.scala 33:37]
  wire  _T_754; // @[Lookup.scala 33:37]
  wire  _T_755; // @[Lookup.scala 33:37]
  wire  _T_756; // @[Lookup.scala 33:37]
  wire  _T_757; // @[Lookup.scala 33:37]
  wire  _T_758; // @[Lookup.scala 33:37]
  wire  _T_759; // @[Lookup.scala 33:37]
  wire  _T_760; // @[Lookup.scala 33:37]
  wire  _T_761; // @[Lookup.scala 33:37]
  wire  _T_762; // @[Lookup.scala 33:37]
  wire  _T_763; // @[Lookup.scala 33:37]
  wire  _T_764; // @[Lookup.scala 33:37]
  wire  _T_765; // @[Lookup.scala 33:37]
  wire  _T_766; // @[Lookup.scala 33:37]
  wire  _T_767; // @[Lookup.scala 33:37]
  wire  _T_768; // @[Lookup.scala 33:37]
  wire  _T_769; // @[Lookup.scala 33:37]
  wire  _T_770; // @[Lookup.scala 33:37]
  wire  _T_771; // @[Lookup.scala 33:37]
  wire  _T_772; // @[Lookup.scala 33:37]
  wire  _T_773; // @[Lookup.scala 33:37]
  wire  _T_774; // @[Lookup.scala 33:37]
  wire  _T_775; // @[Lookup.scala 33:37]
  wire  _T_776; // @[Lookup.scala 33:37]
  wire  _T_777; // @[Lookup.scala 33:37]
  wire  _T_778; // @[Lookup.scala 33:37]
  wire  _T_779; // @[Lookup.scala 33:37]
  wire  _T_780; // @[Lookup.scala 33:37]
  wire  _T_781; // @[Lookup.scala 33:37]
  wire  _T_782; // @[Lookup.scala 33:37]
  wire  _T_783; // @[Lookup.scala 33:37]
  wire  _T_784; // @[Lookup.scala 33:37]
  wire  _T_785; // @[Lookup.scala 33:37]
  wire  cs0_7; // @[Lookup.scala 33:37]
  wire  _T_786; // @[cpath.scala 136:49]
  wire  _T_787; // @[cpath.scala 137:49]
  wire  _T_788; // @[cpath.scala 137:65]
  wire [1:0] _T_789; // @[cpath.scala 137:64]
  wire  _T_790; // @[cpath.scala 138:49]
  wire [1:0] _T_791; // @[cpath.scala 138:64]
  wire  _T_792; // @[cpath.scala 139:49]
  wire  _T_793; // @[cpath.scala 139:65]
  wire [1:0] _T_794; // @[cpath.scala 139:64]
  wire  _T_795; // @[cpath.scala 140:49]
  wire  _T_796; // @[cpath.scala 140:65]
  wire [1:0] _T_797; // @[cpath.scala 140:64]
  wire  _T_798; // @[cpath.scala 141:49]
  wire [1:0] _T_799; // @[cpath.scala 141:64]
  wire  _T_800; // @[cpath.scala 142:49]
  wire [1:0] _T_801; // @[cpath.scala 142:64]
  wire  _T_802; // @[cpath.scala 143:49]
  wire  _T_803; // @[cpath.scala 144:49]
  wire [1:0] _T_804; // @[cpath.scala 144:29]
  wire [1:0] _T_805; // @[cpath.scala 143:29]
  wire [1:0] _T_806; // @[cpath.scala 142:29]
  wire [1:0] _T_807; // @[cpath.scala 141:29]
  wire [1:0] _T_808; // @[cpath.scala 140:29]
  wire [1:0] _T_809; // @[cpath.scala 139:29]
  wire [1:0] _T_810; // @[cpath.scala 138:29]
  wire [1:0] _T_811; // @[cpath.scala 137:29]
  wire [1:0] _T_812; // @[cpath.scala 136:29]
  wire [1:0] ctrl_exe_pc_sel; // @[cpath.scala 135:29]
  wire  _T_813; // @[cpath.scala 148:35]
  wire  _T_816; // @[cpath.scala 148:68]
  reg  _T_817; // @[cpath.scala 148:91]
  reg [31:0] _RAND_0;
  wire  dec_exception; // @[cpath.scala 155:25]
  wire [4:0] dec_rs1_addr; // @[cpath.scala 160:38]
  wire [4:0] dec_rs2_addr; // @[cpath.scala 161:38]
  wire [4:0] dec_wbaddr; // @[cpath.scala 162:38]
  wire  dec_rs1_oen; // @[cpath.scala 163:26]
  wire  dec_rs2_oen; // @[cpath.scala 164:26]
  reg [4:0] exe_reg_wbaddr; // @[cpath.scala 166:33]
  reg [31:0] _RAND_1;
  reg [4:0] mem_reg_wbaddr; // @[cpath.scala 167:33]
  reg [31:0] _RAND_2;
  reg [4:0] wb_reg_wbaddr; // @[cpath.scala 168:33]
  reg [31:0] _RAND_3;
  reg  exe_reg_ctrl_rf_wen; // @[cpath.scala 169:37]
  reg [31:0] _RAND_4;
  reg  mem_reg_ctrl_rf_wen; // @[cpath.scala 170:37]
  reg [31:0] _RAND_5;
  reg  wb_reg_ctrl_rf_wen; // @[cpath.scala 171:37]
  reg [31:0] _RAND_6;
  reg  exe_reg_exception; // @[cpath.scala 172:37]
  reg [31:0] _RAND_7;
  reg  exe_reg_is_csr; // @[cpath.scala 174:32]
  reg [31:0] _RAND_8;
  wire  _T_831; // @[cpath.scala 230:33]
  wire  _T_832; // @[cpath.scala 230:68]
  wire  _T_833; // @[cpath.scala 230:51]
  wire  _T_834; // @[cpath.scala 230:77]
  wire  _T_835; // @[cpath.scala 230:100]
  wire  _T_836; // @[cpath.scala 231:33]
  wire  _T_838; // @[cpath.scala 231:51]
  wire  _T_839; // @[cpath.scala 231:77]
  wire  _T_840; // @[cpath.scala 231:100]
  wire  _T_841; // @[cpath.scala 230:116]
  wire  _T_842; // @[cpath.scala 232:33]
  wire  _T_844; // @[cpath.scala 232:51]
  wire  _T_845; // @[cpath.scala 232:77]
  wire  _T_846; // @[cpath.scala 232:100]
  wire  _T_847; // @[cpath.scala 231:116]
  wire  _T_848; // @[cpath.scala 233:33]
  wire  _T_849; // @[cpath.scala 233:68]
  wire  _T_850; // @[cpath.scala 233:51]
  wire  _T_851; // @[cpath.scala 233:77]
  wire  _T_852; // @[cpath.scala 233:100]
  wire  _T_853; // @[cpath.scala 232:116]
  wire  _T_854; // @[cpath.scala 234:33]
  wire  _T_856; // @[cpath.scala 234:51]
  wire  _T_857; // @[cpath.scala 234:77]
  wire  _T_858; // @[cpath.scala 234:100]
  wire  _T_859; // @[cpath.scala 233:116]
  wire  _T_860; // @[cpath.scala 235:33]
  wire  _T_862; // @[cpath.scala 235:51]
  wire  _T_863; // @[cpath.scala 235:77]
  wire  _T_864; // @[cpath.scala 235:100]
  wire  _T_865; // @[cpath.scala 234:116]
  reg  exe_inst_is_load; // @[cpath.scala 209:34]
  reg [31:0] _RAND_9;
  wire  _T_867; // @[cpath.scala 236:36]
  wire  _T_868; // @[cpath.scala 236:92]
  wire  _T_869; // @[cpath.scala 236:73]
  wire  _T_870; // @[cpath.scala 236:101]
  wire  _T_871; // @[cpath.scala 235:116]
  wire  _T_873; // @[cpath.scala 237:36]
  wire  _T_875; // @[cpath.scala 237:73]
  wire  _T_876; // @[cpath.scala 237:101]
  wire  _T_877; // @[cpath.scala 236:117]
  wire  stall; // @[cpath.scala 237:117]
  wire  _T_820; // @[cpath.scala 178:10]
  wire  _T_880; // @[cpath.scala 244:53]
  wire  _T_881; // @[cpath.scala 244:79]
  wire  _T_882; // @[cpath.scala 244:76]
  wire  full_stall; // @[cpath.scala 244:41]
  wire  _T_821; // @[cpath.scala 178:20]
  wire  _T_822; // @[cpath.scala 178:17]
  wire  _T_823; // @[cpath.scala 191:44]
  wire  _T_824; // @[cpath.scala 191:68]
  wire  _T_825; // @[cpath.scala 191:54]
  wire  _T_827; // @[cpath.scala 195:21]
  wire  _T_829; // @[cpath.scala 213:52]
  wire  _T_830; // @[cpath.scala 213:37]
  reg  _T_885; // @[cpath.scala 261:45]
  reg [31:0] _RAND_10;
  reg  _T_887; // @[cpath.scala 263:35]
  reg [31:0] _RAND_11;
  wire  _T_888; // @[cpath.scala 268:30]
  wire  _T_889; // @[cpath.scala 268:54]
  wire  _T_890; // @[cpath.scala 268:40]
  wire  _T_891; // @[cpath.scala 268:77]
  wire  csr_ren; // @[cpath.scala 268:65]
  assign _T = io_dat_dec_inst & 32'h707f; // @[Lookup.scala 31:38]
  assign _T_1 = 32'h2003 == _T; // @[Lookup.scala 31:38]
  assign _T_3 = 32'h3 == _T; // @[Lookup.scala 31:38]
  assign _T_5 = 32'h4003 == _T; // @[Lookup.scala 31:38]
  assign _T_7 = 32'h1003 == _T; // @[Lookup.scala 31:38]
  assign _T_9 = 32'h5003 == _T; // @[Lookup.scala 31:38]
  assign _T_11 = 32'h2023 == _T; // @[Lookup.scala 31:38]
  assign _T_13 = 32'h23 == _T; // @[Lookup.scala 31:38]
  assign _T_15 = 32'h1023 == _T; // @[Lookup.scala 31:38]
  assign _T_16 = io_dat_dec_inst & 32'h7f; // @[Lookup.scala 31:38]
  assign _T_17 = 32'h17 == _T_16; // @[Lookup.scala 31:38]
  assign _T_19 = 32'h37 == _T_16; // @[Lookup.scala 31:38]
  assign _T_21 = 32'h13 == _T; // @[Lookup.scala 31:38]
  assign _T_23 = 32'h7013 == _T; // @[Lookup.scala 31:38]
  assign _T_25 = 32'h6013 == _T; // @[Lookup.scala 31:38]
  assign _T_27 = 32'h4013 == _T; // @[Lookup.scala 31:38]
  assign _T_29 = 32'h2013 == _T; // @[Lookup.scala 31:38]
  assign _T_31 = 32'h3013 == _T; // @[Lookup.scala 31:38]
  assign _T_32 = io_dat_dec_inst & 32'hfc00707f; // @[Lookup.scala 31:38]
  assign _T_33 = 32'h1013 == _T_32; // @[Lookup.scala 31:38]
  assign _T_35 = 32'h40005013 == _T_32; // @[Lookup.scala 31:38]
  assign _T_37 = 32'h5013 == _T_32; // @[Lookup.scala 31:38]
  assign _T_38 = io_dat_dec_inst & 32'hfe00707f; // @[Lookup.scala 31:38]
  assign _T_39 = 32'h1033 == _T_38; // @[Lookup.scala 31:38]
  assign _T_41 = 32'h33 == _T_38; // @[Lookup.scala 31:38]
  assign _T_43 = 32'h40000033 == _T_38; // @[Lookup.scala 31:38]
  assign _T_45 = 32'h2033 == _T_38; // @[Lookup.scala 31:38]
  assign _T_47 = 32'h3033 == _T_38; // @[Lookup.scala 31:38]
  assign _T_49 = 32'h7033 == _T_38; // @[Lookup.scala 31:38]
  assign _T_51 = 32'h6033 == _T_38; // @[Lookup.scala 31:38]
  assign _T_53 = 32'h4033 == _T_38; // @[Lookup.scala 31:38]
  assign _T_55 = 32'h40005033 == _T_38; // @[Lookup.scala 31:38]
  assign _T_57 = 32'h5033 == _T_38; // @[Lookup.scala 31:38]
  assign _T_59 = 32'h6f == _T_16; // @[Lookup.scala 31:38]
  assign _T_61 = 32'h67 == _T; // @[Lookup.scala 31:38]
  assign _T_63 = 32'h63 == _T; // @[Lookup.scala 31:38]
  assign _T_65 = 32'h1063 == _T; // @[Lookup.scala 31:38]
  assign _T_67 = 32'h5063 == _T; // @[Lookup.scala 31:38]
  assign _T_69 = 32'h7063 == _T; // @[Lookup.scala 31:38]
  assign _T_71 = 32'h4063 == _T; // @[Lookup.scala 31:38]
  assign _T_73 = 32'h6063 == _T; // @[Lookup.scala 31:38]
  assign _T_75 = 32'h5073 == _T; // @[Lookup.scala 31:38]
  assign _T_77 = 32'h6073 == _T; // @[Lookup.scala 31:38]
  assign _T_79 = 32'h1073 == _T; // @[Lookup.scala 31:38]
  assign _T_81 = 32'h2073 == _T; // @[Lookup.scala 31:38]
  assign _T_83 = 32'h3073 == _T; // @[Lookup.scala 31:38]
  assign _T_85 = 32'h7073 == _T; // @[Lookup.scala 31:38]
  assign _T_87 = 32'h73 == io_dat_dec_inst; // @[Lookup.scala 31:38]
  assign _T_89 = 32'h30200073 == io_dat_dec_inst; // @[Lookup.scala 31:38]
  assign _T_91 = 32'h7b200073 == io_dat_dec_inst; // @[Lookup.scala 31:38]
  assign _T_93 = 32'h100073 == io_dat_dec_inst; // @[Lookup.scala 31:38]
  assign _T_95 = 32'h10500073 == io_dat_dec_inst; // @[Lookup.scala 31:38]
  assign _T_97 = 32'h100f == _T; // @[Lookup.scala 31:38]
  assign _T_99 = 32'hf == _T; // @[Lookup.scala 31:38]
  assign _T_101 = _T_97 | _T_99; // @[Lookup.scala 33:37]
  assign _T_102 = _T_95 | _T_101; // @[Lookup.scala 33:37]
  assign _T_103 = _T_93 | _T_102; // @[Lookup.scala 33:37]
  assign _T_104 = _T_91 | _T_103; // @[Lookup.scala 33:37]
  assign _T_105 = _T_89 | _T_104; // @[Lookup.scala 33:37]
  assign _T_106 = _T_87 | _T_105; // @[Lookup.scala 33:37]
  assign _T_107 = _T_85 | _T_106; // @[Lookup.scala 33:37]
  assign _T_108 = _T_83 | _T_107; // @[Lookup.scala 33:37]
  assign _T_109 = _T_81 | _T_108; // @[Lookup.scala 33:37]
  assign _T_110 = _T_79 | _T_109; // @[Lookup.scala 33:37]
  assign _T_111 = _T_77 | _T_110; // @[Lookup.scala 33:37]
  assign _T_112 = _T_75 | _T_111; // @[Lookup.scala 33:37]
  assign _T_113 = _T_73 | _T_112; // @[Lookup.scala 33:37]
  assign _T_114 = _T_71 | _T_113; // @[Lookup.scala 33:37]
  assign _T_115 = _T_69 | _T_114; // @[Lookup.scala 33:37]
  assign _T_116 = _T_67 | _T_115; // @[Lookup.scala 33:37]
  assign _T_117 = _T_65 | _T_116; // @[Lookup.scala 33:37]
  assign _T_118 = _T_63 | _T_117; // @[Lookup.scala 33:37]
  assign _T_119 = _T_61 | _T_118; // @[Lookup.scala 33:37]
  assign _T_120 = _T_59 | _T_119; // @[Lookup.scala 33:37]
  assign _T_121 = _T_57 | _T_120; // @[Lookup.scala 33:37]
  assign _T_122 = _T_55 | _T_121; // @[Lookup.scala 33:37]
  assign _T_123 = _T_53 | _T_122; // @[Lookup.scala 33:37]
  assign _T_124 = _T_51 | _T_123; // @[Lookup.scala 33:37]
  assign _T_125 = _T_49 | _T_124; // @[Lookup.scala 33:37]
  assign _T_126 = _T_47 | _T_125; // @[Lookup.scala 33:37]
  assign _T_127 = _T_45 | _T_126; // @[Lookup.scala 33:37]
  assign _T_128 = _T_43 | _T_127; // @[Lookup.scala 33:37]
  assign _T_129 = _T_41 | _T_128; // @[Lookup.scala 33:37]
  assign _T_130 = _T_39 | _T_129; // @[Lookup.scala 33:37]
  assign _T_131 = _T_37 | _T_130; // @[Lookup.scala 33:37]
  assign _T_132 = _T_35 | _T_131; // @[Lookup.scala 33:37]
  assign _T_133 = _T_33 | _T_132; // @[Lookup.scala 33:37]
  assign _T_134 = _T_31 | _T_133; // @[Lookup.scala 33:37]
  assign _T_135 = _T_29 | _T_134; // @[Lookup.scala 33:37]
  assign _T_136 = _T_27 | _T_135; // @[Lookup.scala 33:37]
  assign _T_137 = _T_25 | _T_136; // @[Lookup.scala 33:37]
  assign _T_138 = _T_23 | _T_137; // @[Lookup.scala 33:37]
  assign _T_139 = _T_21 | _T_138; // @[Lookup.scala 33:37]
  assign _T_140 = _T_19 | _T_139; // @[Lookup.scala 33:37]
  assign _T_141 = _T_17 | _T_140; // @[Lookup.scala 33:37]
  assign _T_142 = _T_15 | _T_141; // @[Lookup.scala 33:37]
  assign _T_143 = _T_13 | _T_142; // @[Lookup.scala 33:37]
  assign _T_144 = _T_11 | _T_143; // @[Lookup.scala 33:37]
  assign _T_145 = _T_9 | _T_144; // @[Lookup.scala 33:37]
  assign _T_146 = _T_7 | _T_145; // @[Lookup.scala 33:37]
  assign _T_147 = _T_5 | _T_146; // @[Lookup.scala 33:37]
  assign _T_148 = _T_3 | _T_147; // @[Lookup.scala 33:37]
  assign cs_val_inst = _T_1 | _T_148; // @[Lookup.scala 33:37]
  assign _T_162 = _T_73 ? 4'h6 : 4'h0; // @[Lookup.scala 33:37]
  assign _T_163 = _T_71 ? 4'h5 : _T_162; // @[Lookup.scala 33:37]
  assign _T_164 = _T_69 ? 4'h4 : _T_163; // @[Lookup.scala 33:37]
  assign _T_165 = _T_67 ? 4'h3 : _T_164; // @[Lookup.scala 33:37]
  assign _T_166 = _T_65 ? 4'h1 : _T_165; // @[Lookup.scala 33:37]
  assign _T_167 = _T_63 ? 4'h2 : _T_166; // @[Lookup.scala 33:37]
  assign _T_168 = _T_61 ? 4'h8 : _T_167; // @[Lookup.scala 33:37]
  assign _T_169 = _T_59 ? 4'h7 : _T_168; // @[Lookup.scala 33:37]
  assign _T_170 = _T_57 ? 4'h0 : _T_169; // @[Lookup.scala 33:37]
  assign _T_171 = _T_55 ? 4'h0 : _T_170; // @[Lookup.scala 33:37]
  assign _T_172 = _T_53 ? 4'h0 : _T_171; // @[Lookup.scala 33:37]
  assign _T_173 = _T_51 ? 4'h0 : _T_172; // @[Lookup.scala 33:37]
  assign _T_174 = _T_49 ? 4'h0 : _T_173; // @[Lookup.scala 33:37]
  assign _T_175 = _T_47 ? 4'h0 : _T_174; // @[Lookup.scala 33:37]
  assign _T_176 = _T_45 ? 4'h0 : _T_175; // @[Lookup.scala 33:37]
  assign _T_177 = _T_43 ? 4'h0 : _T_176; // @[Lookup.scala 33:37]
  assign _T_178 = _T_41 ? 4'h0 : _T_177; // @[Lookup.scala 33:37]
  assign _T_179 = _T_39 ? 4'h0 : _T_178; // @[Lookup.scala 33:37]
  assign _T_180 = _T_37 ? 4'h0 : _T_179; // @[Lookup.scala 33:37]
  assign _T_181 = _T_35 ? 4'h0 : _T_180; // @[Lookup.scala 33:37]
  assign _T_182 = _T_33 ? 4'h0 : _T_181; // @[Lookup.scala 33:37]
  assign _T_183 = _T_31 ? 4'h0 : _T_182; // @[Lookup.scala 33:37]
  assign _T_184 = _T_29 ? 4'h0 : _T_183; // @[Lookup.scala 33:37]
  assign _T_185 = _T_27 ? 4'h0 : _T_184; // @[Lookup.scala 33:37]
  assign _T_186 = _T_25 ? 4'h0 : _T_185; // @[Lookup.scala 33:37]
  assign _T_187 = _T_23 ? 4'h0 : _T_186; // @[Lookup.scala 33:37]
  assign _T_188 = _T_21 ? 4'h0 : _T_187; // @[Lookup.scala 33:37]
  assign _T_189 = _T_19 ? 4'h0 : _T_188; // @[Lookup.scala 33:37]
  assign _T_190 = _T_17 ? 4'h0 : _T_189; // @[Lookup.scala 33:37]
  assign _T_191 = _T_15 ? 4'h0 : _T_190; // @[Lookup.scala 33:37]
  assign _T_192 = _T_13 ? 4'h0 : _T_191; // @[Lookup.scala 33:37]
  assign _T_193 = _T_11 ? 4'h0 : _T_192; // @[Lookup.scala 33:37]
  assign _T_194 = _T_9 ? 4'h0 : _T_193; // @[Lookup.scala 33:37]
  assign _T_195 = _T_7 ? 4'h0 : _T_194; // @[Lookup.scala 33:37]
  assign _T_196 = _T_5 ? 4'h0 : _T_195; // @[Lookup.scala 33:37]
  assign _T_197 = _T_3 ? 4'h0 : _T_196; // @[Lookup.scala 33:37]
  assign _T_205 = _T_85 ? 2'h2 : 2'h0; // @[Lookup.scala 33:37]
  assign _T_206 = _T_83 ? 2'h0 : _T_205; // @[Lookup.scala 33:37]
  assign _T_207 = _T_81 ? 2'h0 : _T_206; // @[Lookup.scala 33:37]
  assign _T_208 = _T_79 ? 2'h0 : _T_207; // @[Lookup.scala 33:37]
  assign _T_209 = _T_77 ? 2'h2 : _T_208; // @[Lookup.scala 33:37]
  assign _T_210 = _T_75 ? 2'h2 : _T_209; // @[Lookup.scala 33:37]
  assign _T_211 = _T_73 ? 2'h0 : _T_210; // @[Lookup.scala 33:37]
  assign _T_212 = _T_71 ? 2'h0 : _T_211; // @[Lookup.scala 33:37]
  assign _T_213 = _T_69 ? 2'h0 : _T_212; // @[Lookup.scala 33:37]
  assign _T_214 = _T_67 ? 2'h0 : _T_213; // @[Lookup.scala 33:37]
  assign _T_215 = _T_65 ? 2'h0 : _T_214; // @[Lookup.scala 33:37]
  assign _T_216 = _T_63 ? 2'h0 : _T_215; // @[Lookup.scala 33:37]
  assign _T_217 = _T_61 ? 2'h0 : _T_216; // @[Lookup.scala 33:37]
  assign _T_218 = _T_59 ? 2'h0 : _T_217; // @[Lookup.scala 33:37]
  assign _T_219 = _T_57 ? 2'h0 : _T_218; // @[Lookup.scala 33:37]
  assign _T_220 = _T_55 ? 2'h0 : _T_219; // @[Lookup.scala 33:37]
  assign _T_221 = _T_53 ? 2'h0 : _T_220; // @[Lookup.scala 33:37]
  assign _T_222 = _T_51 ? 2'h0 : _T_221; // @[Lookup.scala 33:37]
  assign _T_223 = _T_49 ? 2'h0 : _T_222; // @[Lookup.scala 33:37]
  assign _T_224 = _T_47 ? 2'h0 : _T_223; // @[Lookup.scala 33:37]
  assign _T_225 = _T_45 ? 2'h0 : _T_224; // @[Lookup.scala 33:37]
  assign _T_226 = _T_43 ? 2'h0 : _T_225; // @[Lookup.scala 33:37]
  assign _T_227 = _T_41 ? 2'h0 : _T_226; // @[Lookup.scala 33:37]
  assign _T_228 = _T_39 ? 2'h0 : _T_227; // @[Lookup.scala 33:37]
  assign _T_229 = _T_37 ? 2'h0 : _T_228; // @[Lookup.scala 33:37]
  assign _T_230 = _T_35 ? 2'h0 : _T_229; // @[Lookup.scala 33:37]
  assign _T_231 = _T_33 ? 2'h0 : _T_230; // @[Lookup.scala 33:37]
  assign _T_232 = _T_31 ? 2'h0 : _T_231; // @[Lookup.scala 33:37]
  assign _T_233 = _T_29 ? 2'h0 : _T_232; // @[Lookup.scala 33:37]
  assign _T_234 = _T_27 ? 2'h0 : _T_233; // @[Lookup.scala 33:37]
  assign _T_235 = _T_25 ? 2'h0 : _T_234; // @[Lookup.scala 33:37]
  assign _T_236 = _T_23 ? 2'h0 : _T_235; // @[Lookup.scala 33:37]
  assign _T_237 = _T_21 ? 2'h0 : _T_236; // @[Lookup.scala 33:37]
  assign _T_238 = _T_19 ? 2'h0 : _T_237; // @[Lookup.scala 33:37]
  assign _T_239 = _T_17 ? 2'h1 : _T_238; // @[Lookup.scala 33:37]
  assign _T_240 = _T_15 ? 2'h0 : _T_239; // @[Lookup.scala 33:37]
  assign _T_241 = _T_13 ? 2'h0 : _T_240; // @[Lookup.scala 33:37]
  assign _T_242 = _T_11 ? 2'h0 : _T_241; // @[Lookup.scala 33:37]
  assign _T_243 = _T_9 ? 2'h0 : _T_242; // @[Lookup.scala 33:37]
  assign _T_244 = _T_7 ? 2'h0 : _T_243; // @[Lookup.scala 33:37]
  assign _T_245 = _T_5 ? 2'h0 : _T_244; // @[Lookup.scala 33:37]
  assign _T_246 = _T_3 ? 2'h0 : _T_245; // @[Lookup.scala 33:37]
  assign _T_260 = _T_73 ? 3'h3 : 3'h0; // @[Lookup.scala 33:37]
  assign _T_261 = _T_71 ? 3'h3 : _T_260; // @[Lookup.scala 33:37]
  assign _T_262 = _T_69 ? 3'h3 : _T_261; // @[Lookup.scala 33:37]
  assign _T_263 = _T_67 ? 3'h3 : _T_262; // @[Lookup.scala 33:37]
  assign _T_264 = _T_65 ? 3'h3 : _T_263; // @[Lookup.scala 33:37]
  assign _T_265 = _T_63 ? 3'h3 : _T_264; // @[Lookup.scala 33:37]
  assign _T_266 = _T_61 ? 3'h1 : _T_265; // @[Lookup.scala 33:37]
  assign _T_267 = _T_59 ? 3'h5 : _T_266; // @[Lookup.scala 33:37]
  assign _T_268 = _T_57 ? 3'h0 : _T_267; // @[Lookup.scala 33:37]
  assign _T_269 = _T_55 ? 3'h0 : _T_268; // @[Lookup.scala 33:37]
  assign _T_270 = _T_53 ? 3'h0 : _T_269; // @[Lookup.scala 33:37]
  assign _T_271 = _T_51 ? 3'h0 : _T_270; // @[Lookup.scala 33:37]
  assign _T_272 = _T_49 ? 3'h0 : _T_271; // @[Lookup.scala 33:37]
  assign _T_273 = _T_47 ? 3'h0 : _T_272; // @[Lookup.scala 33:37]
  assign _T_274 = _T_45 ? 3'h0 : _T_273; // @[Lookup.scala 33:37]
  assign _T_275 = _T_43 ? 3'h0 : _T_274; // @[Lookup.scala 33:37]
  assign _T_276 = _T_41 ? 3'h0 : _T_275; // @[Lookup.scala 33:37]
  assign _T_277 = _T_39 ? 3'h0 : _T_276; // @[Lookup.scala 33:37]
  assign _T_278 = _T_37 ? 3'h1 : _T_277; // @[Lookup.scala 33:37]
  assign _T_279 = _T_35 ? 3'h1 : _T_278; // @[Lookup.scala 33:37]
  assign _T_280 = _T_33 ? 3'h1 : _T_279; // @[Lookup.scala 33:37]
  assign _T_281 = _T_31 ? 3'h1 : _T_280; // @[Lookup.scala 33:37]
  assign _T_282 = _T_29 ? 3'h1 : _T_281; // @[Lookup.scala 33:37]
  assign _T_283 = _T_27 ? 3'h1 : _T_282; // @[Lookup.scala 33:37]
  assign _T_284 = _T_25 ? 3'h1 : _T_283; // @[Lookup.scala 33:37]
  assign _T_285 = _T_23 ? 3'h1 : _T_284; // @[Lookup.scala 33:37]
  assign _T_286 = _T_21 ? 3'h1 : _T_285; // @[Lookup.scala 33:37]
  assign _T_287 = _T_19 ? 3'h4 : _T_286; // @[Lookup.scala 33:37]
  assign _T_288 = _T_17 ? 3'h4 : _T_287; // @[Lookup.scala 33:37]
  assign _T_289 = _T_15 ? 3'h2 : _T_288; // @[Lookup.scala 33:37]
  assign _T_290 = _T_13 ? 3'h2 : _T_289; // @[Lookup.scala 33:37]
  assign _T_291 = _T_11 ? 3'h2 : _T_290; // @[Lookup.scala 33:37]
  assign _T_292 = _T_9 ? 3'h1 : _T_291; // @[Lookup.scala 33:37]
  assign _T_293 = _T_7 ? 3'h1 : _T_292; // @[Lookup.scala 33:37]
  assign _T_294 = _T_5 ? 3'h1 : _T_293; // @[Lookup.scala 33:37]
  assign _T_295 = _T_3 ? 3'h1 : _T_294; // @[Lookup.scala 33:37]
  assign _T_304 = _T_83 | _T_85; // @[Lookup.scala 33:37]
  assign _T_305 = _T_81 | _T_304; // @[Lookup.scala 33:37]
  assign _T_306 = _T_79 | _T_305; // @[Lookup.scala 33:37]
  assign _T_307 = _T_77 | _T_306; // @[Lookup.scala 33:37]
  assign _T_308 = _T_75 | _T_307; // @[Lookup.scala 33:37]
  assign _T_309 = _T_73 | _T_308; // @[Lookup.scala 33:37]
  assign _T_310 = _T_71 | _T_309; // @[Lookup.scala 33:37]
  assign _T_311 = _T_69 | _T_310; // @[Lookup.scala 33:37]
  assign _T_312 = _T_67 | _T_311; // @[Lookup.scala 33:37]
  assign _T_313 = _T_65 | _T_312; // @[Lookup.scala 33:37]
  assign _T_314 = _T_63 | _T_313; // @[Lookup.scala 33:37]
  assign _T_315 = _T_61 | _T_314; // @[Lookup.scala 33:37]
  assign _T_316 = _T_59 ? 1'h0 : _T_315; // @[Lookup.scala 33:37]
  assign _T_317 = _T_57 | _T_316; // @[Lookup.scala 33:37]
  assign _T_318 = _T_55 | _T_317; // @[Lookup.scala 33:37]
  assign _T_319 = _T_53 | _T_318; // @[Lookup.scala 33:37]
  assign _T_320 = _T_51 | _T_319; // @[Lookup.scala 33:37]
  assign _T_321 = _T_49 | _T_320; // @[Lookup.scala 33:37]
  assign _T_322 = _T_47 | _T_321; // @[Lookup.scala 33:37]
  assign _T_323 = _T_45 | _T_322; // @[Lookup.scala 33:37]
  assign _T_324 = _T_43 | _T_323; // @[Lookup.scala 33:37]
  assign _T_325 = _T_41 | _T_324; // @[Lookup.scala 33:37]
  assign _T_326 = _T_39 | _T_325; // @[Lookup.scala 33:37]
  assign _T_327 = _T_37 | _T_326; // @[Lookup.scala 33:37]
  assign _T_328 = _T_35 | _T_327; // @[Lookup.scala 33:37]
  assign _T_329 = _T_33 | _T_328; // @[Lookup.scala 33:37]
  assign _T_330 = _T_31 | _T_329; // @[Lookup.scala 33:37]
  assign _T_331 = _T_29 | _T_330; // @[Lookup.scala 33:37]
  assign _T_332 = _T_27 | _T_331; // @[Lookup.scala 33:37]
  assign _T_333 = _T_25 | _T_332; // @[Lookup.scala 33:37]
  assign _T_334 = _T_23 | _T_333; // @[Lookup.scala 33:37]
  assign _T_335 = _T_21 | _T_334; // @[Lookup.scala 33:37]
  assign _T_336 = _T_19 ? 1'h0 : _T_335; // @[Lookup.scala 33:37]
  assign _T_337 = _T_17 ? 1'h0 : _T_336; // @[Lookup.scala 33:37]
  assign _T_338 = _T_15 | _T_337; // @[Lookup.scala 33:37]
  assign _T_339 = _T_13 | _T_338; // @[Lookup.scala 33:37]
  assign _T_340 = _T_11 | _T_339; // @[Lookup.scala 33:37]
  assign _T_341 = _T_9 | _T_340; // @[Lookup.scala 33:37]
  assign _T_342 = _T_7 | _T_341; // @[Lookup.scala 33:37]
  assign _T_343 = _T_5 | _T_342; // @[Lookup.scala 33:37]
  assign _T_344 = _T_3 | _T_343; // @[Lookup.scala 33:37]
  assign cs_rs1_oen = _T_1 | _T_344; // @[Lookup.scala 33:37]
  assign _T_364 = _T_61 ? 1'h0 : _T_314; // @[Lookup.scala 33:37]
  assign _T_365 = _T_59 ? 1'h0 : _T_364; // @[Lookup.scala 33:37]
  assign _T_366 = _T_57 | _T_365; // @[Lookup.scala 33:37]
  assign _T_367 = _T_55 | _T_366; // @[Lookup.scala 33:37]
  assign _T_368 = _T_53 | _T_367; // @[Lookup.scala 33:37]
  assign _T_369 = _T_51 | _T_368; // @[Lookup.scala 33:37]
  assign _T_370 = _T_49 | _T_369; // @[Lookup.scala 33:37]
  assign _T_371 = _T_47 | _T_370; // @[Lookup.scala 33:37]
  assign _T_372 = _T_45 | _T_371; // @[Lookup.scala 33:37]
  assign _T_373 = _T_43 | _T_372; // @[Lookup.scala 33:37]
  assign _T_374 = _T_41 | _T_373; // @[Lookup.scala 33:37]
  assign _T_375 = _T_39 | _T_374; // @[Lookup.scala 33:37]
  assign _T_376 = _T_37 ? 1'h0 : _T_375; // @[Lookup.scala 33:37]
  assign _T_377 = _T_35 ? 1'h0 : _T_376; // @[Lookup.scala 33:37]
  assign _T_378 = _T_33 ? 1'h0 : _T_377; // @[Lookup.scala 33:37]
  assign _T_379 = _T_31 ? 1'h0 : _T_378; // @[Lookup.scala 33:37]
  assign _T_380 = _T_29 ? 1'h0 : _T_379; // @[Lookup.scala 33:37]
  assign _T_381 = _T_27 ? 1'h0 : _T_380; // @[Lookup.scala 33:37]
  assign _T_382 = _T_25 ? 1'h0 : _T_381; // @[Lookup.scala 33:37]
  assign _T_383 = _T_23 ? 1'h0 : _T_382; // @[Lookup.scala 33:37]
  assign _T_384 = _T_21 ? 1'h0 : _T_383; // @[Lookup.scala 33:37]
  assign _T_385 = _T_19 ? 1'h0 : _T_384; // @[Lookup.scala 33:37]
  assign _T_386 = _T_17 ? 1'h0 : _T_385; // @[Lookup.scala 33:37]
  assign _T_387 = _T_15 | _T_386; // @[Lookup.scala 33:37]
  assign _T_388 = _T_13 | _T_387; // @[Lookup.scala 33:37]
  assign _T_389 = _T_11 | _T_388; // @[Lookup.scala 33:37]
  assign _T_390 = _T_9 ? 1'h0 : _T_389; // @[Lookup.scala 33:37]
  assign _T_391 = _T_7 ? 1'h0 : _T_390; // @[Lookup.scala 33:37]
  assign _T_392 = _T_5 ? 1'h0 : _T_391; // @[Lookup.scala 33:37]
  assign _T_393 = _T_3 ? 1'h0 : _T_392; // @[Lookup.scala 33:37]
  assign cs_rs2_oen = _T_1 ? 1'h0 : _T_393; // @[Lookup.scala 33:37]
  assign _T_401 = _T_85 ? 4'ha : 4'h0; // @[Lookup.scala 33:37]
  assign _T_402 = _T_83 ? 4'ha : _T_401; // @[Lookup.scala 33:37]
  assign _T_403 = _T_81 ? 4'ha : _T_402; // @[Lookup.scala 33:37]
  assign _T_404 = _T_79 ? 4'ha : _T_403; // @[Lookup.scala 33:37]
  assign _T_405 = _T_77 ? 4'ha : _T_404; // @[Lookup.scala 33:37]
  assign _T_406 = _T_75 ? 4'ha : _T_405; // @[Lookup.scala 33:37]
  assign _T_407 = _T_73 ? 4'h0 : _T_406; // @[Lookup.scala 33:37]
  assign _T_408 = _T_71 ? 4'h0 : _T_407; // @[Lookup.scala 33:37]
  assign _T_409 = _T_69 ? 4'h0 : _T_408; // @[Lookup.scala 33:37]
  assign _T_410 = _T_67 ? 4'h0 : _T_409; // @[Lookup.scala 33:37]
  assign _T_411 = _T_65 ? 4'h0 : _T_410; // @[Lookup.scala 33:37]
  assign _T_412 = _T_63 ? 4'h0 : _T_411; // @[Lookup.scala 33:37]
  assign _T_413 = _T_61 ? 4'h0 : _T_412; // @[Lookup.scala 33:37]
  assign _T_414 = _T_59 ? 4'h0 : _T_413; // @[Lookup.scala 33:37]
  assign _T_415 = _T_57 ? 4'h3 : _T_414; // @[Lookup.scala 33:37]
  assign _T_416 = _T_55 ? 4'h4 : _T_415; // @[Lookup.scala 33:37]
  assign _T_417 = _T_53 ? 4'h7 : _T_416; // @[Lookup.scala 33:37]
  assign _T_418 = _T_51 ? 4'h6 : _T_417; // @[Lookup.scala 33:37]
  assign _T_419 = _T_49 ? 4'h5 : _T_418; // @[Lookup.scala 33:37]
  assign _T_420 = _T_47 ? 4'h9 : _T_419; // @[Lookup.scala 33:37]
  assign _T_421 = _T_45 ? 4'h8 : _T_420; // @[Lookup.scala 33:37]
  assign _T_422 = _T_43 ? 4'h1 : _T_421; // @[Lookup.scala 33:37]
  assign _T_423 = _T_41 ? 4'h0 : _T_422; // @[Lookup.scala 33:37]
  assign _T_424 = _T_39 ? 4'h2 : _T_423; // @[Lookup.scala 33:37]
  assign _T_425 = _T_37 ? 4'h3 : _T_424; // @[Lookup.scala 33:37]
  assign _T_426 = _T_35 ? 4'h4 : _T_425; // @[Lookup.scala 33:37]
  assign _T_427 = _T_33 ? 4'h2 : _T_426; // @[Lookup.scala 33:37]
  assign _T_428 = _T_31 ? 4'h9 : _T_427; // @[Lookup.scala 33:37]
  assign _T_429 = _T_29 ? 4'h8 : _T_428; // @[Lookup.scala 33:37]
  assign _T_430 = _T_27 ? 4'h7 : _T_429; // @[Lookup.scala 33:37]
  assign _T_431 = _T_25 ? 4'h6 : _T_430; // @[Lookup.scala 33:37]
  assign _T_432 = _T_23 ? 4'h5 : _T_431; // @[Lookup.scala 33:37]
  assign _T_433 = _T_21 ? 4'h0 : _T_432; // @[Lookup.scala 33:37]
  assign _T_434 = _T_19 ? 4'hb : _T_433; // @[Lookup.scala 33:37]
  assign _T_435 = _T_17 ? 4'h0 : _T_434; // @[Lookup.scala 33:37]
  assign _T_436 = _T_15 ? 4'h0 : _T_435; // @[Lookup.scala 33:37]
  assign _T_437 = _T_13 ? 4'h0 : _T_436; // @[Lookup.scala 33:37]
  assign _T_438 = _T_11 ? 4'h0 : _T_437; // @[Lookup.scala 33:37]
  assign _T_439 = _T_9 ? 4'h0 : _T_438; // @[Lookup.scala 33:37]
  assign _T_440 = _T_7 ? 4'h0 : _T_439; // @[Lookup.scala 33:37]
  assign _T_441 = _T_5 ? 4'h0 : _T_440; // @[Lookup.scala 33:37]
  assign _T_442 = _T_3 ? 4'h0 : _T_441; // @[Lookup.scala 33:37]
  assign _T_450 = _T_85 ? 2'h3 : 2'h0; // @[Lookup.scala 33:37]
  assign _T_451 = _T_83 ? 2'h3 : _T_450; // @[Lookup.scala 33:37]
  assign _T_452 = _T_81 ? 2'h3 : _T_451; // @[Lookup.scala 33:37]
  assign _T_453 = _T_79 ? 2'h3 : _T_452; // @[Lookup.scala 33:37]
  assign _T_454 = _T_77 ? 2'h3 : _T_453; // @[Lookup.scala 33:37]
  assign _T_455 = _T_75 ? 2'h3 : _T_454; // @[Lookup.scala 33:37]
  assign _T_456 = _T_73 ? 2'h0 : _T_455; // @[Lookup.scala 33:37]
  assign _T_457 = _T_71 ? 2'h0 : _T_456; // @[Lookup.scala 33:37]
  assign _T_458 = _T_69 ? 2'h0 : _T_457; // @[Lookup.scala 33:37]
  assign _T_459 = _T_67 ? 2'h0 : _T_458; // @[Lookup.scala 33:37]
  assign _T_460 = _T_65 ? 2'h0 : _T_459; // @[Lookup.scala 33:37]
  assign _T_461 = _T_63 ? 2'h0 : _T_460; // @[Lookup.scala 33:37]
  assign _T_462 = _T_61 ? 2'h2 : _T_461; // @[Lookup.scala 33:37]
  assign _T_463 = _T_59 ? 2'h2 : _T_462; // @[Lookup.scala 33:37]
  assign _T_464 = _T_57 ? 2'h0 : _T_463; // @[Lookup.scala 33:37]
  assign _T_465 = _T_55 ? 2'h0 : _T_464; // @[Lookup.scala 33:37]
  assign _T_466 = _T_53 ? 2'h0 : _T_465; // @[Lookup.scala 33:37]
  assign _T_467 = _T_51 ? 2'h0 : _T_466; // @[Lookup.scala 33:37]
  assign _T_468 = _T_49 ? 2'h0 : _T_467; // @[Lookup.scala 33:37]
  assign _T_469 = _T_47 ? 2'h0 : _T_468; // @[Lookup.scala 33:37]
  assign _T_470 = _T_45 ? 2'h0 : _T_469; // @[Lookup.scala 33:37]
  assign _T_471 = _T_43 ? 2'h0 : _T_470; // @[Lookup.scala 33:37]
  assign _T_472 = _T_41 ? 2'h0 : _T_471; // @[Lookup.scala 33:37]
  assign _T_473 = _T_39 ? 2'h0 : _T_472; // @[Lookup.scala 33:37]
  assign _T_474 = _T_37 ? 2'h0 : _T_473; // @[Lookup.scala 33:37]
  assign _T_475 = _T_35 ? 2'h0 : _T_474; // @[Lookup.scala 33:37]
  assign _T_476 = _T_33 ? 2'h0 : _T_475; // @[Lookup.scala 33:37]
  assign _T_477 = _T_31 ? 2'h0 : _T_476; // @[Lookup.scala 33:37]
  assign _T_478 = _T_29 ? 2'h0 : _T_477; // @[Lookup.scala 33:37]
  assign _T_479 = _T_27 ? 2'h0 : _T_478; // @[Lookup.scala 33:37]
  assign _T_480 = _T_25 ? 2'h0 : _T_479; // @[Lookup.scala 33:37]
  assign _T_481 = _T_23 ? 2'h0 : _T_480; // @[Lookup.scala 33:37]
  assign _T_482 = _T_21 ? 2'h0 : _T_481; // @[Lookup.scala 33:37]
  assign _T_483 = _T_19 ? 2'h0 : _T_482; // @[Lookup.scala 33:37]
  assign _T_484 = _T_17 ? 2'h0 : _T_483; // @[Lookup.scala 33:37]
  assign _T_485 = _T_15 ? 2'h0 : _T_484; // @[Lookup.scala 33:37]
  assign _T_486 = _T_13 ? 2'h0 : _T_485; // @[Lookup.scala 33:37]
  assign _T_487 = _T_11 ? 2'h0 : _T_486; // @[Lookup.scala 33:37]
  assign _T_488 = _T_9 ? 2'h1 : _T_487; // @[Lookup.scala 33:37]
  assign _T_489 = _T_7 ? 2'h1 : _T_488; // @[Lookup.scala 33:37]
  assign _T_490 = _T_5 ? 2'h1 : _T_489; // @[Lookup.scala 33:37]
  assign _T_491 = _T_3 ? 2'h1 : _T_490; // @[Lookup.scala 33:37]
  assign _T_505 = _T_73 ? 1'h0 : _T_308; // @[Lookup.scala 33:37]
  assign _T_506 = _T_71 ? 1'h0 : _T_505; // @[Lookup.scala 33:37]
  assign _T_507 = _T_69 ? 1'h0 : _T_506; // @[Lookup.scala 33:37]
  assign _T_508 = _T_67 ? 1'h0 : _T_507; // @[Lookup.scala 33:37]
  assign _T_509 = _T_65 ? 1'h0 : _T_508; // @[Lookup.scala 33:37]
  assign _T_510 = _T_63 ? 1'h0 : _T_509; // @[Lookup.scala 33:37]
  assign _T_511 = _T_61 | _T_510; // @[Lookup.scala 33:37]
  assign _T_512 = _T_59 | _T_511; // @[Lookup.scala 33:37]
  assign _T_513 = _T_57 | _T_512; // @[Lookup.scala 33:37]
  assign _T_514 = _T_55 | _T_513; // @[Lookup.scala 33:37]
  assign _T_515 = _T_53 | _T_514; // @[Lookup.scala 33:37]
  assign _T_516 = _T_51 | _T_515; // @[Lookup.scala 33:37]
  assign _T_517 = _T_49 | _T_516; // @[Lookup.scala 33:37]
  assign _T_518 = _T_47 | _T_517; // @[Lookup.scala 33:37]
  assign _T_519 = _T_45 | _T_518; // @[Lookup.scala 33:37]
  assign _T_520 = _T_43 | _T_519; // @[Lookup.scala 33:37]
  assign _T_521 = _T_41 | _T_520; // @[Lookup.scala 33:37]
  assign _T_522 = _T_39 | _T_521; // @[Lookup.scala 33:37]
  assign _T_523 = _T_37 | _T_522; // @[Lookup.scala 33:37]
  assign _T_524 = _T_35 | _T_523; // @[Lookup.scala 33:37]
  assign _T_525 = _T_33 | _T_524; // @[Lookup.scala 33:37]
  assign _T_526 = _T_31 | _T_525; // @[Lookup.scala 33:37]
  assign _T_527 = _T_29 | _T_526; // @[Lookup.scala 33:37]
  assign _T_528 = _T_27 | _T_527; // @[Lookup.scala 33:37]
  assign _T_529 = _T_25 | _T_528; // @[Lookup.scala 33:37]
  assign _T_530 = _T_23 | _T_529; // @[Lookup.scala 33:37]
  assign _T_531 = _T_21 | _T_530; // @[Lookup.scala 33:37]
  assign _T_532 = _T_19 | _T_531; // @[Lookup.scala 33:37]
  assign _T_533 = _T_17 | _T_532; // @[Lookup.scala 33:37]
  assign _T_534 = _T_15 ? 1'h0 : _T_533; // @[Lookup.scala 33:37]
  assign _T_535 = _T_13 ? 1'h0 : _T_534; // @[Lookup.scala 33:37]
  assign _T_536 = _T_11 ? 1'h0 : _T_535; // @[Lookup.scala 33:37]
  assign _T_537 = _T_9 | _T_536; // @[Lookup.scala 33:37]
  assign _T_538 = _T_7 | _T_537; // @[Lookup.scala 33:37]
  assign _T_539 = _T_5 | _T_538; // @[Lookup.scala 33:37]
  assign _T_540 = _T_3 | _T_539; // @[Lookup.scala 33:37]
  assign cs0_2 = _T_1 | _T_540; // @[Lookup.scala 33:37]
  assign _T_542 = _T_97 ? 1'h0 : _T_99; // @[Lookup.scala 33:37]
  assign _T_543 = _T_95 ? 1'h0 : _T_542; // @[Lookup.scala 33:37]
  assign _T_544 = _T_93 ? 1'h0 : _T_543; // @[Lookup.scala 33:37]
  assign _T_545 = _T_91 ? 1'h0 : _T_544; // @[Lookup.scala 33:37]
  assign _T_546 = _T_89 ? 1'h0 : _T_545; // @[Lookup.scala 33:37]
  assign _T_547 = _T_87 ? 1'h0 : _T_546; // @[Lookup.scala 33:37]
  assign _T_548 = _T_85 ? 1'h0 : _T_547; // @[Lookup.scala 33:37]
  assign _T_549 = _T_83 ? 1'h0 : _T_548; // @[Lookup.scala 33:37]
  assign _T_550 = _T_81 ? 1'h0 : _T_549; // @[Lookup.scala 33:37]
  assign _T_551 = _T_79 ? 1'h0 : _T_550; // @[Lookup.scala 33:37]
  assign _T_552 = _T_77 ? 1'h0 : _T_551; // @[Lookup.scala 33:37]
  assign _T_553 = _T_75 ? 1'h0 : _T_552; // @[Lookup.scala 33:37]
  assign _T_554 = _T_73 ? 1'h0 : _T_553; // @[Lookup.scala 33:37]
  assign _T_555 = _T_71 ? 1'h0 : _T_554; // @[Lookup.scala 33:37]
  assign _T_556 = _T_69 ? 1'h0 : _T_555; // @[Lookup.scala 33:37]
  assign _T_557 = _T_67 ? 1'h0 : _T_556; // @[Lookup.scala 33:37]
  assign _T_558 = _T_65 ? 1'h0 : _T_557; // @[Lookup.scala 33:37]
  assign _T_559 = _T_63 ? 1'h0 : _T_558; // @[Lookup.scala 33:37]
  assign _T_560 = _T_61 ? 1'h0 : _T_559; // @[Lookup.scala 33:37]
  assign _T_561 = _T_59 ? 1'h0 : _T_560; // @[Lookup.scala 33:37]
  assign _T_562 = _T_57 ? 1'h0 : _T_561; // @[Lookup.scala 33:37]
  assign _T_563 = _T_55 ? 1'h0 : _T_562; // @[Lookup.scala 33:37]
  assign _T_564 = _T_53 ? 1'h0 : _T_563; // @[Lookup.scala 33:37]
  assign _T_565 = _T_51 ? 1'h0 : _T_564; // @[Lookup.scala 33:37]
  assign _T_566 = _T_49 ? 1'h0 : _T_565; // @[Lookup.scala 33:37]
  assign _T_567 = _T_47 ? 1'h0 : _T_566; // @[Lookup.scala 33:37]
  assign _T_568 = _T_45 ? 1'h0 : _T_567; // @[Lookup.scala 33:37]
  assign _T_569 = _T_43 ? 1'h0 : _T_568; // @[Lookup.scala 33:37]
  assign _T_570 = _T_41 ? 1'h0 : _T_569; // @[Lookup.scala 33:37]
  assign _T_571 = _T_39 ? 1'h0 : _T_570; // @[Lookup.scala 33:37]
  assign _T_572 = _T_37 ? 1'h0 : _T_571; // @[Lookup.scala 33:37]
  assign _T_573 = _T_35 ? 1'h0 : _T_572; // @[Lookup.scala 33:37]
  assign _T_574 = _T_33 ? 1'h0 : _T_573; // @[Lookup.scala 33:37]
  assign _T_575 = _T_31 ? 1'h0 : _T_574; // @[Lookup.scala 33:37]
  assign _T_576 = _T_29 ? 1'h0 : _T_575; // @[Lookup.scala 33:37]
  assign _T_577 = _T_27 ? 1'h0 : _T_576; // @[Lookup.scala 33:37]
  assign _T_578 = _T_25 ? 1'h0 : _T_577; // @[Lookup.scala 33:37]
  assign _T_579 = _T_23 ? 1'h0 : _T_578; // @[Lookup.scala 33:37]
  assign _T_580 = _T_21 ? 1'h0 : _T_579; // @[Lookup.scala 33:37]
  assign _T_581 = _T_19 ? 1'h0 : _T_580; // @[Lookup.scala 33:37]
  assign _T_582 = _T_17 ? 1'h0 : _T_581; // @[Lookup.scala 33:37]
  assign _T_583 = _T_15 | _T_582; // @[Lookup.scala 33:37]
  assign _T_584 = _T_13 | _T_583; // @[Lookup.scala 33:37]
  assign _T_585 = _T_11 | _T_584; // @[Lookup.scala 33:37]
  assign _T_586 = _T_9 | _T_585; // @[Lookup.scala 33:37]
  assign _T_587 = _T_7 | _T_586; // @[Lookup.scala 33:37]
  assign _T_588 = _T_5 | _T_587; // @[Lookup.scala 33:37]
  assign _T_589 = _T_3 | _T_588; // @[Lookup.scala 33:37]
  assign cs0_3 = _T_1 | _T_589; // @[Lookup.scala 33:37]
  assign _T_633 = _T_13 | _T_15; // @[Lookup.scala 33:37]
  assign _T_634 = _T_11 | _T_633; // @[Lookup.scala 33:37]
  assign _T_635 = _T_9 ? 1'h0 : _T_634; // @[Lookup.scala 33:37]
  assign _T_636 = _T_7 ? 1'h0 : _T_635; // @[Lookup.scala 33:37]
  assign _T_637 = _T_5 ? 1'h0 : _T_636; // @[Lookup.scala 33:37]
  assign _T_638 = _T_3 ? 1'h0 : _T_637; // @[Lookup.scala 33:37]
  assign cs0_4 = _T_1 ? 1'h0 : _T_638; // @[Lookup.scala 33:37]
  assign _T_681 = _T_15 ? 3'h2 : 3'h0; // @[Lookup.scala 33:37]
  assign _T_682 = _T_13 ? 3'h1 : _T_681; // @[Lookup.scala 33:37]
  assign _T_683 = _T_11 ? 3'h3 : _T_682; // @[Lookup.scala 33:37]
  assign _T_684 = _T_9 ? 3'h6 : _T_683; // @[Lookup.scala 33:37]
  assign _T_685 = _T_7 ? 3'h2 : _T_684; // @[Lookup.scala 33:37]
  assign _T_686 = _T_5 ? 3'h5 : _T_685; // @[Lookup.scala 33:37]
  assign _T_687 = _T_3 ? 3'h1 : _T_686; // @[Lookup.scala 33:37]
  assign _T_691 = _T_93 ? 3'h4 : 3'h0; // @[Lookup.scala 33:37]
  assign _T_692 = _T_91 ? 3'h4 : _T_691; // @[Lookup.scala 33:37]
  assign _T_693 = _T_89 ? 3'h4 : _T_692; // @[Lookup.scala 33:37]
  assign _T_694 = _T_87 ? 3'h4 : _T_693; // @[Lookup.scala 33:37]
  assign _T_695 = _T_85 ? 3'h3 : _T_694; // @[Lookup.scala 33:37]
  assign _T_696 = _T_83 ? 3'h3 : _T_695; // @[Lookup.scala 33:37]
  assign _T_697 = _T_81 ? 3'h2 : _T_696; // @[Lookup.scala 33:37]
  assign _T_698 = _T_79 ? 3'h1 : _T_697; // @[Lookup.scala 33:37]
  assign _T_699 = _T_77 ? 3'h2 : _T_698; // @[Lookup.scala 33:37]
  assign _T_700 = _T_75 ? 3'h1 : _T_699; // @[Lookup.scala 33:37]
  assign _T_701 = _T_73 ? 3'h0 : _T_700; // @[Lookup.scala 33:37]
  assign _T_702 = _T_71 ? 3'h0 : _T_701; // @[Lookup.scala 33:37]
  assign _T_703 = _T_69 ? 3'h0 : _T_702; // @[Lookup.scala 33:37]
  assign _T_704 = _T_67 ? 3'h0 : _T_703; // @[Lookup.scala 33:37]
  assign _T_705 = _T_65 ? 3'h0 : _T_704; // @[Lookup.scala 33:37]
  assign _T_706 = _T_63 ? 3'h0 : _T_705; // @[Lookup.scala 33:37]
  assign _T_707 = _T_61 ? 3'h0 : _T_706; // @[Lookup.scala 33:37]
  assign _T_708 = _T_59 ? 3'h0 : _T_707; // @[Lookup.scala 33:37]
  assign _T_709 = _T_57 ? 3'h0 : _T_708; // @[Lookup.scala 33:37]
  assign _T_710 = _T_55 ? 3'h0 : _T_709; // @[Lookup.scala 33:37]
  assign _T_711 = _T_53 ? 3'h0 : _T_710; // @[Lookup.scala 33:37]
  assign _T_712 = _T_51 ? 3'h0 : _T_711; // @[Lookup.scala 33:37]
  assign _T_713 = _T_49 ? 3'h0 : _T_712; // @[Lookup.scala 33:37]
  assign _T_714 = _T_47 ? 3'h0 : _T_713; // @[Lookup.scala 33:37]
  assign _T_715 = _T_45 ? 3'h0 : _T_714; // @[Lookup.scala 33:37]
  assign _T_716 = _T_43 ? 3'h0 : _T_715; // @[Lookup.scala 33:37]
  assign _T_717 = _T_41 ? 3'h0 : _T_716; // @[Lookup.scala 33:37]
  assign _T_718 = _T_39 ? 3'h0 : _T_717; // @[Lookup.scala 33:37]
  assign _T_719 = _T_37 ? 3'h0 : _T_718; // @[Lookup.scala 33:37]
  assign _T_720 = _T_35 ? 3'h0 : _T_719; // @[Lookup.scala 33:37]
  assign _T_721 = _T_33 ? 3'h0 : _T_720; // @[Lookup.scala 33:37]
  assign _T_722 = _T_31 ? 3'h0 : _T_721; // @[Lookup.scala 33:37]
  assign _T_723 = _T_29 ? 3'h0 : _T_722; // @[Lookup.scala 33:37]
  assign _T_724 = _T_27 ? 3'h0 : _T_723; // @[Lookup.scala 33:37]
  assign _T_725 = _T_25 ? 3'h0 : _T_724; // @[Lookup.scala 33:37]
  assign _T_726 = _T_23 ? 3'h0 : _T_725; // @[Lookup.scala 33:37]
  assign _T_727 = _T_21 ? 3'h0 : _T_726; // @[Lookup.scala 33:37]
  assign _T_728 = _T_19 ? 3'h0 : _T_727; // @[Lookup.scala 33:37]
  assign _T_729 = _T_17 ? 3'h0 : _T_728; // @[Lookup.scala 33:37]
  assign _T_730 = _T_15 ? 3'h0 : _T_729; // @[Lookup.scala 33:37]
  assign _T_731 = _T_13 ? 3'h0 : _T_730; // @[Lookup.scala 33:37]
  assign _T_732 = _T_11 ? 3'h0 : _T_731; // @[Lookup.scala 33:37]
  assign _T_733 = _T_9 ? 3'h0 : _T_732; // @[Lookup.scala 33:37]
  assign _T_734 = _T_7 ? 3'h0 : _T_733; // @[Lookup.scala 33:37]
  assign _T_735 = _T_5 ? 3'h0 : _T_734; // @[Lookup.scala 33:37]
  assign _T_736 = _T_3 ? 3'h0 : _T_735; // @[Lookup.scala 33:37]
  assign cs0_6 = _T_1 ? 3'h0 : _T_736; // @[Lookup.scala 33:37]
  assign _T_739 = _T_95 ? 1'h0 : _T_97; // @[Lookup.scala 33:37]
  assign _T_740 = _T_93 ? 1'h0 : _T_739; // @[Lookup.scala 33:37]
  assign _T_741 = _T_91 ? 1'h0 : _T_740; // @[Lookup.scala 33:37]
  assign _T_742 = _T_89 ? 1'h0 : _T_741; // @[Lookup.scala 33:37]
  assign _T_743 = _T_87 ? 1'h0 : _T_742; // @[Lookup.scala 33:37]
  assign _T_744 = _T_85 ? 1'h0 : _T_743; // @[Lookup.scala 33:37]
  assign _T_745 = _T_83 ? 1'h0 : _T_744; // @[Lookup.scala 33:37]
  assign _T_746 = _T_81 ? 1'h0 : _T_745; // @[Lookup.scala 33:37]
  assign _T_747 = _T_79 ? 1'h0 : _T_746; // @[Lookup.scala 33:37]
  assign _T_748 = _T_77 ? 1'h0 : _T_747; // @[Lookup.scala 33:37]
  assign _T_749 = _T_75 ? 1'h0 : _T_748; // @[Lookup.scala 33:37]
  assign _T_750 = _T_73 ? 1'h0 : _T_749; // @[Lookup.scala 33:37]
  assign _T_751 = _T_71 ? 1'h0 : _T_750; // @[Lookup.scala 33:37]
  assign _T_752 = _T_69 ? 1'h0 : _T_751; // @[Lookup.scala 33:37]
  assign _T_753 = _T_67 ? 1'h0 : _T_752; // @[Lookup.scala 33:37]
  assign _T_754 = _T_65 ? 1'h0 : _T_753; // @[Lookup.scala 33:37]
  assign _T_755 = _T_63 ? 1'h0 : _T_754; // @[Lookup.scala 33:37]
  assign _T_756 = _T_61 ? 1'h0 : _T_755; // @[Lookup.scala 33:37]
  assign _T_757 = _T_59 ? 1'h0 : _T_756; // @[Lookup.scala 33:37]
  assign _T_758 = _T_57 ? 1'h0 : _T_757; // @[Lookup.scala 33:37]
  assign _T_759 = _T_55 ? 1'h0 : _T_758; // @[Lookup.scala 33:37]
  assign _T_760 = _T_53 ? 1'h0 : _T_759; // @[Lookup.scala 33:37]
  assign _T_761 = _T_51 ? 1'h0 : _T_760; // @[Lookup.scala 33:37]
  assign _T_762 = _T_49 ? 1'h0 : _T_761; // @[Lookup.scala 33:37]
  assign _T_763 = _T_47 ? 1'h0 : _T_762; // @[Lookup.scala 33:37]
  assign _T_764 = _T_45 ? 1'h0 : _T_763; // @[Lookup.scala 33:37]
  assign _T_765 = _T_43 ? 1'h0 : _T_764; // @[Lookup.scala 33:37]
  assign _T_766 = _T_41 ? 1'h0 : _T_765; // @[Lookup.scala 33:37]
  assign _T_767 = _T_39 ? 1'h0 : _T_766; // @[Lookup.scala 33:37]
  assign _T_768 = _T_37 ? 1'h0 : _T_767; // @[Lookup.scala 33:37]
  assign _T_769 = _T_35 ? 1'h0 : _T_768; // @[Lookup.scala 33:37]
  assign _T_770 = _T_33 ? 1'h0 : _T_769; // @[Lookup.scala 33:37]
  assign _T_771 = _T_31 ? 1'h0 : _T_770; // @[Lookup.scala 33:37]
  assign _T_772 = _T_29 ? 1'h0 : _T_771; // @[Lookup.scala 33:37]
  assign _T_773 = _T_27 ? 1'h0 : _T_772; // @[Lookup.scala 33:37]
  assign _T_774 = _T_25 ? 1'h0 : _T_773; // @[Lookup.scala 33:37]
  assign _T_775 = _T_23 ? 1'h0 : _T_774; // @[Lookup.scala 33:37]
  assign _T_776 = _T_21 ? 1'h0 : _T_775; // @[Lookup.scala 33:37]
  assign _T_777 = _T_19 ? 1'h0 : _T_776; // @[Lookup.scala 33:37]
  assign _T_778 = _T_17 ? 1'h0 : _T_777; // @[Lookup.scala 33:37]
  assign _T_779 = _T_15 ? 1'h0 : _T_778; // @[Lookup.scala 33:37]
  assign _T_780 = _T_13 ? 1'h0 : _T_779; // @[Lookup.scala 33:37]
  assign _T_781 = _T_11 ? 1'h0 : _T_780; // @[Lookup.scala 33:37]
  assign _T_782 = _T_9 ? 1'h0 : _T_781; // @[Lookup.scala 33:37]
  assign _T_783 = _T_7 ? 1'h0 : _T_782; // @[Lookup.scala 33:37]
  assign _T_784 = _T_5 ? 1'h0 : _T_783; // @[Lookup.scala 33:37]
  assign _T_785 = _T_3 ? 1'h0 : _T_784; // @[Lookup.scala 33:37]
  assign cs0_7 = _T_1 ? 1'h0 : _T_785; // @[Lookup.scala 33:37]
  assign _T_786 = io_dat_exe_br_type == 4'h0; // @[cpath.scala 136:49]
  assign _T_787 = io_dat_exe_br_type == 4'h1; // @[cpath.scala 137:49]
  assign _T_788 = ~io_dat_exe_br_eq; // @[cpath.scala 137:65]
  assign _T_789 = _T_788 ? 2'h1 : 2'h0; // @[cpath.scala 137:64]
  assign _T_790 = io_dat_exe_br_type == 4'h2; // @[cpath.scala 138:49]
  assign _T_791 = io_dat_exe_br_eq ? 2'h1 : 2'h0; // @[cpath.scala 138:64]
  assign _T_792 = io_dat_exe_br_type == 4'h3; // @[cpath.scala 139:49]
  assign _T_793 = ~io_dat_exe_br_lt; // @[cpath.scala 139:65]
  assign _T_794 = _T_793 ? 2'h1 : 2'h0; // @[cpath.scala 139:64]
  assign _T_795 = io_dat_exe_br_type == 4'h4; // @[cpath.scala 140:49]
  assign _T_796 = ~io_dat_exe_br_ltu; // @[cpath.scala 140:65]
  assign _T_797 = _T_796 ? 2'h1 : 2'h0; // @[cpath.scala 140:64]
  assign _T_798 = io_dat_exe_br_type == 4'h5; // @[cpath.scala 141:49]
  assign _T_799 = io_dat_exe_br_lt ? 2'h1 : 2'h0; // @[cpath.scala 141:64]
  assign _T_800 = io_dat_exe_br_type == 4'h6; // @[cpath.scala 142:49]
  assign _T_801 = io_dat_exe_br_ltu ? 2'h1 : 2'h0; // @[cpath.scala 142:64]
  assign _T_802 = io_dat_exe_br_type == 4'h7; // @[cpath.scala 143:49]
  assign _T_803 = io_dat_exe_br_type == 4'h8; // @[cpath.scala 144:49]
  assign _T_804 = _T_803 ? 2'h2 : 2'h0; // @[cpath.scala 144:29]
  assign _T_805 = _T_802 ? 2'h1 : _T_804; // @[cpath.scala 143:29]
  assign _T_806 = _T_800 ? _T_801 : _T_805; // @[cpath.scala 142:29]
  assign _T_807 = _T_798 ? _T_799 : _T_806; // @[cpath.scala 141:29]
  assign _T_808 = _T_795 ? _T_797 : _T_807; // @[cpath.scala 140:29]
  assign _T_809 = _T_792 ? _T_794 : _T_808; // @[cpath.scala 139:29]
  assign _T_810 = _T_790 ? _T_791 : _T_809; // @[cpath.scala 138:29]
  assign _T_811 = _T_787 ? _T_789 : _T_810; // @[cpath.scala 137:29]
  assign _T_812 = _T_786 ? 2'h0 : _T_811; // @[cpath.scala 136:29]
  assign ctrl_exe_pc_sel = io_ctl_pipeline_kill ? 2'h3 : _T_812; // @[cpath.scala 135:29]
  assign _T_813 = ctrl_exe_pc_sel != 2'h0; // @[cpath.scala 148:35]
  assign _T_816 = _T_813 | cs0_7; // @[cpath.scala 148:68]
  assign dec_exception = ~cs_val_inst; // @[cpath.scala 155:25]
  assign dec_rs1_addr = io_dat_dec_inst[19:15]; // @[cpath.scala 160:38]
  assign dec_rs2_addr = io_dat_dec_inst[24:20]; // @[cpath.scala 161:38]
  assign dec_wbaddr = io_dat_dec_inst[11:7]; // @[cpath.scala 162:38]
  assign dec_rs1_oen = _T_813 ? 1'h0 : cs_rs1_oen; // @[cpath.scala 163:26]
  assign dec_rs2_oen = _T_813 ? 1'h0 : cs_rs2_oen; // @[cpath.scala 164:26]
  assign _T_831 = exe_reg_wbaddr == dec_rs1_addr; // @[cpath.scala 230:33]
  assign _T_832 = dec_rs1_addr != 5'h0; // @[cpath.scala 230:68]
  assign _T_833 = _T_831 & _T_832; // @[cpath.scala 230:51]
  assign _T_834 = _T_833 & exe_reg_ctrl_rf_wen; // @[cpath.scala 230:77]
  assign _T_835 = _T_834 & dec_rs1_oen; // @[cpath.scala 230:100]
  assign _T_836 = mem_reg_wbaddr == dec_rs1_addr; // @[cpath.scala 231:33]
  assign _T_838 = _T_836 & _T_832; // @[cpath.scala 231:51]
  assign _T_839 = _T_838 & mem_reg_ctrl_rf_wen; // @[cpath.scala 231:77]
  assign _T_840 = _T_839 & dec_rs1_oen; // @[cpath.scala 231:100]
  assign _T_841 = _T_835 | _T_840; // @[cpath.scala 230:116]
  assign _T_842 = wb_reg_wbaddr == dec_rs1_addr; // @[cpath.scala 232:33]
  assign _T_844 = _T_842 & _T_832; // @[cpath.scala 232:51]
  assign _T_845 = _T_844 & wb_reg_ctrl_rf_wen; // @[cpath.scala 232:77]
  assign _T_846 = _T_845 & dec_rs1_oen; // @[cpath.scala 232:100]
  assign _T_847 = _T_841 | _T_846; // @[cpath.scala 231:116]
  assign _T_848 = exe_reg_wbaddr == dec_rs2_addr; // @[cpath.scala 233:33]
  assign _T_849 = dec_rs2_addr != 5'h0; // @[cpath.scala 233:68]
  assign _T_850 = _T_848 & _T_849; // @[cpath.scala 233:51]
  assign _T_851 = _T_850 & exe_reg_ctrl_rf_wen; // @[cpath.scala 233:77]
  assign _T_852 = _T_851 & dec_rs2_oen; // @[cpath.scala 233:100]
  assign _T_853 = _T_847 | _T_852; // @[cpath.scala 232:116]
  assign _T_854 = mem_reg_wbaddr == dec_rs2_addr; // @[cpath.scala 234:33]
  assign _T_856 = _T_854 & _T_849; // @[cpath.scala 234:51]
  assign _T_857 = _T_856 & mem_reg_ctrl_rf_wen; // @[cpath.scala 234:77]
  assign _T_858 = _T_857 & dec_rs2_oen; // @[cpath.scala 234:100]
  assign _T_859 = _T_853 | _T_858; // @[cpath.scala 233:116]
  assign _T_860 = wb_reg_wbaddr == dec_rs2_addr; // @[cpath.scala 235:33]
  assign _T_862 = _T_860 & _T_849; // @[cpath.scala 235:51]
  assign _T_863 = _T_862 & wb_reg_ctrl_rf_wen; // @[cpath.scala 235:77]
  assign _T_864 = _T_863 & dec_rs2_oen; // @[cpath.scala 235:100]
  assign _T_865 = _T_859 | _T_864; // @[cpath.scala 234:116]
  assign _T_867 = exe_inst_is_load & _T_831; // @[cpath.scala 236:36]
  assign _T_868 = exe_reg_wbaddr != 5'h0; // @[cpath.scala 236:92]
  assign _T_869 = _T_867 & _T_868; // @[cpath.scala 236:73]
  assign _T_870 = _T_869 & dec_rs1_oen; // @[cpath.scala 236:101]
  assign _T_871 = _T_865 | _T_870; // @[cpath.scala 235:116]
  assign _T_873 = exe_inst_is_load & _T_848; // @[cpath.scala 237:36]
  assign _T_875 = _T_873 & _T_868; // @[cpath.scala 237:73]
  assign _T_876 = _T_875 & dec_rs2_oen; // @[cpath.scala 237:101]
  assign _T_877 = _T_871 | _T_876; // @[cpath.scala 236:117]
  assign stall = _T_877 | exe_reg_is_csr; // @[cpath.scala 237:117]
  assign _T_820 = ~stall; // @[cpath.scala 178:10]
  assign _T_880 = io_dat_mem_ctrl_dmem_val & io_dmem_resp_valid; // @[cpath.scala 244:53]
  assign _T_881 = ~io_dat_mem_ctrl_dmem_val; // @[cpath.scala 244:79]
  assign _T_882 = _T_880 | _T_881; // @[cpath.scala 244:76]
  assign full_stall = ~_T_882; // @[cpath.scala 244:41]
  assign _T_821 = ~full_stall; // @[cpath.scala 178:20]
  assign _T_822 = _T_820 & _T_821; // @[cpath.scala 178:17]
  assign _T_823 = cs0_6 != 3'h0; // @[cpath.scala 191:44]
  assign _T_824 = cs0_6 != 3'h4; // @[cpath.scala 191:68]
  assign _T_825 = _T_823 & _T_824; // @[cpath.scala 191:54]
  assign _T_827 = stall & _T_821; // @[cpath.scala 195:21]
  assign _T_829 = ~cs0_4; // @[cpath.scala 213:52]
  assign _T_830 = cs0_3 & _T_829; // @[cpath.scala 213:37]
  assign _T_888 = cs0_6 == 3'h2; // @[cpath.scala 268:30]
  assign _T_889 = cs0_6 == 3'h3; // @[cpath.scala 268:54]
  assign _T_890 = _T_888 | _T_889; // @[cpath.scala 268:40]
  assign _T_891 = dec_rs1_addr == 5'h0; // @[cpath.scala 268:77]
  assign csr_ren = _T_890 & _T_891; // @[cpath.scala 268:65]
  assign io_ctl_dec_stall = _T_877 | exe_reg_is_csr; // @[cpath.scala 247:22]
  assign io_ctl_full_stall = ~_T_882; // @[cpath.scala 248:22]
  assign io_ctl_exe_pc_sel = io_ctl_pipeline_kill ? 2'h3 : _T_812; // @[cpath.scala 249:22]
  assign io_ctl_br_type = _T_1 ? 4'h0 : _T_197; // @[cpath.scala 250:22]
  assign io_ctl_if_kill = _T_816 | _T_817; // @[cpath.scala 251:22]
  assign io_ctl_dec_kill = ctrl_exe_pc_sel != 2'h0; // @[cpath.scala 252:22]
  assign io_ctl_op1_sel = _T_1 ? 2'h0 : _T_246; // @[cpath.scala 253:22]
  assign io_ctl_op2_sel = _T_1 ? 3'h1 : _T_295; // @[cpath.scala 254:22]
  assign io_ctl_alu_fun = _T_1 ? 4'h0 : _T_442; // @[cpath.scala 255:22]
  assign io_ctl_wb_sel = _T_1 ? 2'h1 : _T_491; // @[cpath.scala 256:22]
  assign io_ctl_rf_wen = _T_1 | _T_540; // @[cpath.scala 257:22]
  assign io_ctl_mem_val = _T_1 | _T_589; // @[cpath.scala 274:22]
  assign io_ctl_mem_fcn = {{1'd0}, cs0_4}; // @[cpath.scala 275:22]
  assign io_ctl_mem_typ = _T_1 ? 3'h3 : _T_687; // @[cpath.scala 276:21]
  assign io_ctl_csr_cmd = csr_ren ? 3'h5 : cs0_6; // @[cpath.scala 269:19]
  assign io_ctl_fencei = cs0_7 | _T_885; // @[cpath.scala 261:22]
  assign io_ctl_pipeline_kill = io_dat_csr_eret | io_ctl_mem_exception; // @[cpath.scala 153:25]
  assign io_ctl_mem_exception = _T_887; // @[cpath.scala 263:25]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_817 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  exe_reg_wbaddr = _RAND_1[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  mem_reg_wbaddr = _RAND_2[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  wb_reg_wbaddr = _RAND_3[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  exe_reg_ctrl_rf_wen = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  mem_reg_ctrl_rf_wen = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  wb_reg_ctrl_rf_wen = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  exe_reg_exception = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  exe_reg_is_csr = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  exe_inst_is_load = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_885 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_887 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (_T_1) begin
      _T_817 <= 1'h0;
    end else if (_T_3) begin
      _T_817 <= 1'h0;
    end else if (_T_5) begin
      _T_817 <= 1'h0;
    end else if (_T_7) begin
      _T_817 <= 1'h0;
    end else if (_T_9) begin
      _T_817 <= 1'h0;
    end else if (_T_11) begin
      _T_817 <= 1'h0;
    end else if (_T_13) begin
      _T_817 <= 1'h0;
    end else if (_T_15) begin
      _T_817 <= 1'h0;
    end else if (_T_17) begin
      _T_817 <= 1'h0;
    end else if (_T_19) begin
      _T_817 <= 1'h0;
    end else if (_T_21) begin
      _T_817 <= 1'h0;
    end else if (_T_23) begin
      _T_817 <= 1'h0;
    end else if (_T_25) begin
      _T_817 <= 1'h0;
    end else if (_T_27) begin
      _T_817 <= 1'h0;
    end else if (_T_29) begin
      _T_817 <= 1'h0;
    end else if (_T_31) begin
      _T_817 <= 1'h0;
    end else if (_T_33) begin
      _T_817 <= 1'h0;
    end else if (_T_35) begin
      _T_817 <= 1'h0;
    end else if (_T_37) begin
      _T_817 <= 1'h0;
    end else if (_T_39) begin
      _T_817 <= 1'h0;
    end else if (_T_41) begin
      _T_817 <= 1'h0;
    end else if (_T_43) begin
      _T_817 <= 1'h0;
    end else if (_T_45) begin
      _T_817 <= 1'h0;
    end else if (_T_47) begin
      _T_817 <= 1'h0;
    end else if (_T_49) begin
      _T_817 <= 1'h0;
    end else if (_T_51) begin
      _T_817 <= 1'h0;
    end else if (_T_53) begin
      _T_817 <= 1'h0;
    end else if (_T_55) begin
      _T_817 <= 1'h0;
    end else if (_T_57) begin
      _T_817 <= 1'h0;
    end else if (_T_59) begin
      _T_817 <= 1'h0;
    end else if (_T_61) begin
      _T_817 <= 1'h0;
    end else if (_T_63) begin
      _T_817 <= 1'h0;
    end else if (_T_65) begin
      _T_817 <= 1'h0;
    end else if (_T_67) begin
      _T_817 <= 1'h0;
    end else if (_T_69) begin
      _T_817 <= 1'h0;
    end else if (_T_71) begin
      _T_817 <= 1'h0;
    end else if (_T_73) begin
      _T_817 <= 1'h0;
    end else if (_T_75) begin
      _T_817 <= 1'h0;
    end else if (_T_77) begin
      _T_817 <= 1'h0;
    end else if (_T_79) begin
      _T_817 <= 1'h0;
    end else if (_T_81) begin
      _T_817 <= 1'h0;
    end else if (_T_83) begin
      _T_817 <= 1'h0;
    end else if (_T_85) begin
      _T_817 <= 1'h0;
    end else if (_T_87) begin
      _T_817 <= 1'h0;
    end else if (_T_89) begin
      _T_817 <= 1'h0;
    end else if (_T_91) begin
      _T_817 <= 1'h0;
    end else if (_T_93) begin
      _T_817 <= 1'h0;
    end else if (_T_95) begin
      _T_817 <= 1'h0;
    end else begin
      _T_817 <= _T_97;
    end
    if (_T_822) begin
      if (_T_813) begin
        exe_reg_wbaddr <= 5'h0;
      end else begin
        exe_reg_wbaddr <= dec_wbaddr;
      end
    end else if (_T_827) begin
      exe_reg_wbaddr <= 5'h0;
    end
    mem_reg_wbaddr <= exe_reg_wbaddr;
    wb_reg_wbaddr <= mem_reg_wbaddr;
    if (reset) begin
      exe_reg_ctrl_rf_wen <= 1'h0;
    end else if (_T_822) begin
      if (_T_813) begin
        exe_reg_ctrl_rf_wen <= 1'h0;
      end else begin
        exe_reg_ctrl_rf_wen <= cs0_2;
      end
    end else if (_T_827) begin
      exe_reg_ctrl_rf_wen <= 1'h0;
    end
    if (reset) begin
      mem_reg_ctrl_rf_wen <= 1'h0;
    end else begin
      mem_reg_ctrl_rf_wen <= exe_reg_ctrl_rf_wen;
    end
    if (reset) begin
      wb_reg_ctrl_rf_wen <= 1'h0;
    end else begin
      wb_reg_ctrl_rf_wen <= mem_reg_ctrl_rf_wen;
    end
    if (reset) begin
      exe_reg_exception <= 1'h0;
    end else if (_T_822) begin
      if (_T_813) begin
        exe_reg_exception <= 1'h0;
      end else begin
        exe_reg_exception <= dec_exception;
      end
    end else if (_T_827) begin
      exe_reg_exception <= 1'h0;
    end
    if (reset) begin
      exe_reg_is_csr <= 1'h0;
    end else if (_T_822) begin
      if (_T_813) begin
        exe_reg_is_csr <= 1'h0;
      end else begin
        exe_reg_is_csr <= _T_825;
      end
    end else if (_T_827) begin
      exe_reg_is_csr <= 1'h0;
    end
    if (reset) begin
      exe_inst_is_load <= 1'h0;
    end else if (_T_821) begin
      exe_inst_is_load <= _T_830;
    end
    if (_T_1) begin
      _T_885 <= 1'h0;
    end else if (_T_3) begin
      _T_885 <= 1'h0;
    end else if (_T_5) begin
      _T_885 <= 1'h0;
    end else if (_T_7) begin
      _T_885 <= 1'h0;
    end else if (_T_9) begin
      _T_885 <= 1'h0;
    end else if (_T_11) begin
      _T_885 <= 1'h0;
    end else if (_T_13) begin
      _T_885 <= 1'h0;
    end else if (_T_15) begin
      _T_885 <= 1'h0;
    end else if (_T_17) begin
      _T_885 <= 1'h0;
    end else if (_T_19) begin
      _T_885 <= 1'h0;
    end else if (_T_21) begin
      _T_885 <= 1'h0;
    end else if (_T_23) begin
      _T_885 <= 1'h0;
    end else if (_T_25) begin
      _T_885 <= 1'h0;
    end else if (_T_27) begin
      _T_885 <= 1'h0;
    end else if (_T_29) begin
      _T_885 <= 1'h0;
    end else if (_T_31) begin
      _T_885 <= 1'h0;
    end else if (_T_33) begin
      _T_885 <= 1'h0;
    end else if (_T_35) begin
      _T_885 <= 1'h0;
    end else if (_T_37) begin
      _T_885 <= 1'h0;
    end else if (_T_39) begin
      _T_885 <= 1'h0;
    end else if (_T_41) begin
      _T_885 <= 1'h0;
    end else if (_T_43) begin
      _T_885 <= 1'h0;
    end else if (_T_45) begin
      _T_885 <= 1'h0;
    end else if (_T_47) begin
      _T_885 <= 1'h0;
    end else if (_T_49) begin
      _T_885 <= 1'h0;
    end else if (_T_51) begin
      _T_885 <= 1'h0;
    end else if (_T_53) begin
      _T_885 <= 1'h0;
    end else if (_T_55) begin
      _T_885 <= 1'h0;
    end else if (_T_57) begin
      _T_885 <= 1'h0;
    end else if (_T_59) begin
      _T_885 <= 1'h0;
    end else if (_T_61) begin
      _T_885 <= 1'h0;
    end else if (_T_63) begin
      _T_885 <= 1'h0;
    end else if (_T_65) begin
      _T_885 <= 1'h0;
    end else if (_T_67) begin
      _T_885 <= 1'h0;
    end else if (_T_69) begin
      _T_885 <= 1'h0;
    end else if (_T_71) begin
      _T_885 <= 1'h0;
    end else if (_T_73) begin
      _T_885 <= 1'h0;
    end else if (_T_75) begin
      _T_885 <= 1'h0;
    end else if (_T_77) begin
      _T_885 <= 1'h0;
    end else if (_T_79) begin
      _T_885 <= 1'h0;
    end else if (_T_81) begin
      _T_885 <= 1'h0;
    end else if (_T_83) begin
      _T_885 <= 1'h0;
    end else if (_T_85) begin
      _T_885 <= 1'h0;
    end else if (_T_87) begin
      _T_885 <= 1'h0;
    end else if (_T_89) begin
      _T_885 <= 1'h0;
    end else if (_T_91) begin
      _T_885 <= 1'h0;
    end else if (_T_93) begin
      _T_885 <= 1'h0;
    end else if (_T_95) begin
      _T_885 <= 1'h0;
    end else begin
      _T_885 <= _T_97;
    end
    _T_887 <= exe_reg_exception;
  end
endmodule
module RegisterFile(
  input         clock,
  input  [4:0]  io_rs1_addr,
  output [31:0] io_rs1_data,
  input  [4:0]  io_rs2_addr,
  output [31:0] io_rs2_data,
  input  [4:0]  io_dm_addr,
  output [31:0] io_dm_rdata,
  input  [31:0] io_dm_wdata,
  input  [4:0]  io_waddr,
  input  [31:0] io_wdata,
  input         io_wen
);
  reg [31:0] regfile [0:31]; // @[regfile.scala 36:21]
  reg [31:0] _RAND_0;
  wire [31:0] regfile__T_7_data; // @[regfile.scala 36:21]
  wire [4:0] regfile__T_7_addr; // @[regfile.scala 36:21]
  wire [31:0] regfile__T_10_data; // @[regfile.scala 36:21]
  wire [4:0] regfile__T_10_addr; // @[regfile.scala 36:21]
  wire [31:0] regfile__T_13_data; // @[regfile.scala 36:21]
  wire [4:0] regfile__T_13_addr; // @[regfile.scala 36:21]
  wire [31:0] regfile__T_2_data; // @[regfile.scala 36:21]
  wire [4:0] regfile__T_2_addr; // @[regfile.scala 36:21]
  wire  regfile__T_2_mask; // @[regfile.scala 36:21]
  wire  regfile__T_2_en; // @[regfile.scala 36:21]
  wire [31:0] regfile__T_5_data; // @[regfile.scala 36:21]
  wire [4:0] regfile__T_5_addr; // @[regfile.scala 36:21]
  wire  regfile__T_5_mask; // @[regfile.scala 36:21]
  wire  regfile__T_5_en; // @[regfile.scala 36:21]
  wire  _T; // @[regfile.scala 38:30]
  wire  _T_3; // @[regfile.scala 43:34]
  wire  _T_6; // @[regfile.scala 48:36]
  wire  _T_9; // @[regfile.scala 49:36]
  assign regfile__T_7_addr = io_rs1_addr;
  assign regfile__T_7_data = regfile[regfile__T_7_addr]; // @[regfile.scala 36:21]
  assign regfile__T_10_addr = io_rs2_addr;
  assign regfile__T_10_data = regfile[regfile__T_10_addr]; // @[regfile.scala 36:21]
  assign regfile__T_13_addr = io_dm_addr;
  assign regfile__T_13_data = regfile[regfile__T_13_addr]; // @[regfile.scala 36:21]
  assign regfile__T_2_data = io_wdata;
  assign regfile__T_2_addr = io_waddr;
  assign regfile__T_2_mask = 1'h1;
  assign regfile__T_2_en = io_wen & _T;
  assign regfile__T_5_data = io_dm_wdata;
  assign regfile__T_5_addr = io_dm_addr;
  assign regfile__T_5_mask = 1'h1;
  assign regfile__T_5_en = io_dm_addr != 5'h0;
  assign _T = io_waddr != 5'h0; // @[regfile.scala 38:30]
  assign _T_3 = io_dm_addr != 5'h0; // @[regfile.scala 43:34]
  assign _T_6 = io_rs1_addr != 5'h0; // @[regfile.scala 48:36]
  assign _T_9 = io_rs2_addr != 5'h0; // @[regfile.scala 49:36]
  assign io_rs1_data = _T_6 ? regfile__T_7_data : 32'h0; // @[regfile.scala 48:16]
  assign io_rs2_data = _T_9 ? regfile__T_10_data : 32'h0; // @[regfile.scala 49:16]
  assign io_dm_rdata = _T_3 ? regfile__T_13_data : 32'h0; // @[regfile.scala 50:16]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    regfile[initvar] = _RAND_0[31:0];
  `endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(regfile__T_2_en & regfile__T_2_mask) begin
      regfile[regfile__T_2_addr] <= regfile__T_2_data; // @[regfile.scala 36:21]
    end
    if(regfile__T_5_en & regfile__T_5_mask) begin
      regfile[regfile__T_5_addr] <= regfile__T_5_data; // @[regfile.scala 36:21]
    end
  end
endmodule
module CSRFile(
  input         clock,
  input         reset,
  input  [2:0]  io_rw_cmd,
  output [31:0] io_rw_rdata,
  input  [31:0] io_rw_wdata,
  output        io_eret,
  input  [11:0] io_decode_csr,
  output        io_status_debug,
  output [1:0]  io_status_prv,
  output        io_status_sd,
  output [7:0]  io_status_zero1,
  output        io_status_tsr,
  output        io_status_tw,
  output        io_status_tvm,
  output        io_status_mxr,
  output        io_status_sum,
  output        io_status_mprv,
  output [1:0]  io_status_xs,
  output [1:0]  io_status_fs,
  output [1:0]  io_status_mpp,
  output [1:0]  io_status_hpp,
  output        io_status_spp,
  output        io_status_mpie,
  output        io_status_hpie,
  output        io_status_spie,
  output        io_status_upie,
  output        io_status_mie,
  output        io_status_hie,
  output        io_status_sie,
  output        io_status_uie,
  output [31:0] io_evec,
  input         io_exception,
  input         io_retire,
  input  [31:0] io_pc,
  output [31:0] io_time
);
  reg  reg_mstatus_mpie; // @[csr.scala 163:28]
  reg [31:0] _RAND_0;
  reg  reg_mstatus_mie; // @[csr.scala 163:28]
  reg [31:0] _RAND_1;
  reg [31:0] reg_mepc; // @[csr.scala 164:21]
  reg [31:0] _RAND_2;
  reg [31:0] reg_mcause; // @[csr.scala 165:23]
  reg [31:0] _RAND_3;
  reg [31:0] reg_mtval; // @[csr.scala 166:22]
  reg [31:0] _RAND_4;
  reg [31:0] reg_mscratch; // @[csr.scala 167:25]
  reg [31:0] _RAND_5;
  reg [31:0] reg_medeleg; // @[csr.scala 169:24]
  reg [31:0] _RAND_6;
  reg  reg_mip_mtip; // @[csr.scala 171:24]
  reg [31:0] _RAND_7;
  reg  reg_mip_msip; // @[csr.scala 171:24]
  reg [31:0] _RAND_8;
  reg  reg_mie_mtip; // @[csr.scala 172:24]
  reg [31:0] _RAND_9;
  reg  reg_mie_msip; // @[csr.scala 172:24]
  reg [31:0] _RAND_10;
  reg [5:0] _T_3; // @[util.scala 114:41]
  reg [31:0] _RAND_11;
  wire [6:0] _T_4; // @[util.scala 115:33]
  reg [57:0] _T_5; // @[util.scala 119:31]
  reg [63:0] _RAND_12;
  wire [57:0] _T_8; // @[util.scala 120:43]
  wire [63:0] _T_9; // @[Cat.scala 29:58]
  reg [5:0] _T_10; // @[util.scala 114:41]
  reg [31:0] _RAND_13;
  wire [5:0] _GEN_150; // @[util.scala 115:33]
  wire [6:0] _T_11; // @[util.scala 115:33]
  reg [57:0] _T_12; // @[util.scala 119:31]
  reg [63:0] _RAND_14;
  wire [57:0] _T_15; // @[util.scala 120:43]
  wire [63:0] _T_16; // @[Cat.scala 29:58]
  reg [39:0] _T_17; // @[util.scala 114:74]
  reg [63:0] _RAND_15;
  wire [40:0] _T_18; // @[util.scala 115:33]
  reg [39:0] _T_19; // @[util.scala 114:74]
  reg [63:0] _RAND_16;
  wire [40:0] _T_20; // @[util.scala 115:33]
  reg [39:0] _T_21; // @[util.scala 114:74]
  reg [63:0] _RAND_17;
  wire [40:0] _T_22; // @[util.scala 115:33]
  reg [39:0] _T_23; // @[util.scala 114:74]
  reg [63:0] _RAND_18;
  wire [40:0] _T_24; // @[util.scala 115:33]
  reg [39:0] _T_25; // @[util.scala 114:74]
  reg [63:0] _RAND_19;
  wire [40:0] _T_26; // @[util.scala 115:33]
  reg [39:0] _T_27; // @[util.scala 114:74]
  reg [63:0] _RAND_20;
  wire [40:0] _T_28; // @[util.scala 115:33]
  reg [39:0] _T_29; // @[util.scala 114:74]
  reg [63:0] _RAND_21;
  wire [40:0] _T_30; // @[util.scala 115:33]
  reg [39:0] _T_31; // @[util.scala 114:74]
  reg [63:0] _RAND_22;
  wire [40:0] _T_32; // @[util.scala 115:33]
  reg [39:0] _T_33; // @[util.scala 114:74]
  reg [63:0] _RAND_23;
  wire [40:0] _T_34; // @[util.scala 115:33]
  reg [39:0] _T_35; // @[util.scala 114:74]
  reg [63:0] _RAND_24;
  wire [40:0] _T_36; // @[util.scala 115:33]
  reg [39:0] _T_37; // @[util.scala 114:74]
  reg [63:0] _RAND_25;
  wire [40:0] _T_38; // @[util.scala 115:33]
  reg [39:0] _T_39; // @[util.scala 114:74]
  reg [63:0] _RAND_26;
  wire [40:0] _T_40; // @[util.scala 115:33]
  reg [39:0] _T_41; // @[util.scala 114:74]
  reg [63:0] _RAND_27;
  wire [40:0] _T_42; // @[util.scala 115:33]
  reg [39:0] _T_43; // @[util.scala 114:74]
  reg [63:0] _RAND_28;
  wire [40:0] _T_44; // @[util.scala 115:33]
  reg [39:0] _T_45; // @[util.scala 114:74]
  reg [63:0] _RAND_29;
  wire [40:0] _T_46; // @[util.scala 115:33]
  reg [39:0] _T_47; // @[util.scala 114:74]
  reg [63:0] _RAND_30;
  wire [40:0] _T_48; // @[util.scala 115:33]
  reg [39:0] _T_49; // @[util.scala 114:74]
  reg [63:0] _RAND_31;
  wire [40:0] _T_50; // @[util.scala 115:33]
  reg [39:0] _T_51; // @[util.scala 114:74]
  reg [63:0] _RAND_32;
  wire [40:0] _T_52; // @[util.scala 115:33]
  reg [39:0] _T_53; // @[util.scala 114:74]
  reg [63:0] _RAND_33;
  wire [40:0] _T_54; // @[util.scala 115:33]
  reg [39:0] _T_55; // @[util.scala 114:74]
  reg [63:0] _RAND_34;
  wire [40:0] _T_56; // @[util.scala 115:33]
  reg [39:0] _T_57; // @[util.scala 114:74]
  reg [63:0] _RAND_35;
  wire [40:0] _T_58; // @[util.scala 115:33]
  reg [39:0] _T_59; // @[util.scala 114:74]
  reg [63:0] _RAND_36;
  wire [40:0] _T_60; // @[util.scala 115:33]
  reg [39:0] _T_61; // @[util.scala 114:74]
  reg [63:0] _RAND_37;
  wire [40:0] _T_62; // @[util.scala 115:33]
  reg [39:0] _T_63; // @[util.scala 114:74]
  reg [63:0] _RAND_38;
  wire [40:0] _T_64; // @[util.scala 115:33]
  reg [39:0] _T_65; // @[util.scala 114:74]
  reg [63:0] _RAND_39;
  wire [40:0] _T_66; // @[util.scala 115:33]
  reg [39:0] _T_67; // @[util.scala 114:74]
  reg [63:0] _RAND_40;
  wire [40:0] _T_68; // @[util.scala 115:33]
  reg [39:0] _T_69; // @[util.scala 114:74]
  reg [63:0] _RAND_41;
  wire [40:0] _T_70; // @[util.scala 115:33]
  reg [39:0] _T_71; // @[util.scala 114:74]
  reg [63:0] _RAND_42;
  wire [40:0] _T_72; // @[util.scala 115:33]
  reg [39:0] _T_73; // @[util.scala 114:74]
  reg [63:0] _RAND_43;
  wire [40:0] _T_74; // @[util.scala 115:33]
  reg [39:0] _T_75; // @[util.scala 114:74]
  reg [63:0] _RAND_44;
  wire [40:0] _T_76; // @[util.scala 115:33]
  reg [39:0] _T_77; // @[util.scala 114:74]
  reg [63:0] _RAND_45;
  wire [40:0] _T_78; // @[util.scala 115:33]
  reg [39:0] _T_79; // @[util.scala 114:74]
  reg [63:0] _RAND_46;
  wire [40:0] _T_80; // @[util.scala 115:33]
  reg [31:0] reg_dpc; // @[csr.scala 188:20]
  reg [31:0] _RAND_47;
  reg [31:0] reg_dscratch; // @[csr.scala 189:25]
  reg [31:0] _RAND_48;
  reg  reg_dcsr_ebreakm; // @[csr.scala 194:25]
  reg [31:0] _RAND_49;
  reg  reg_dcsr_step; // @[csr.scala 194:25]
  reg [31:0] _RAND_50;
  wire  system_insn; // @[csr.scala 196:31]
  wire  _T_138; // @[csr.scala 197:27]
  wire  _T_139; // @[csr.scala 197:40]
  wire  cpu_ren; // @[csr.scala 197:37]
  wire [4:0] _T_143; // @[csr.scala 199:38]
  wire [12:0] _T_149; // @[csr.scala 199:38]
  wire [7:0] _T_154; // @[csr.scala 199:38]
  wire [34:0] read_mstatus; // @[csr.scala 199:38]
  wire [15:0] _T_175; // @[csr.scala 215:31]
  wire [15:0] _T_190; // @[csr.scala 216:31]
  wire [31:0] _T_204; // @[csr.scala 222:27]
  wire  _T_205; // @[csr.scala 259:76]
  wire  _T_206; // @[csr.scala 259:76]
  wire  _T_207; // @[csr.scala 259:76]
  wire  _T_210; // @[csr.scala 259:76]
  wire  _T_211; // @[csr.scala 259:76]
  wire  _T_212; // @[csr.scala 259:76]
  wire  _T_213; // @[csr.scala 259:76]
  wire  _T_214; // @[csr.scala 259:76]
  wire  _T_215; // @[csr.scala 259:76]
  wire  _T_216; // @[csr.scala 259:76]
  wire  _T_217; // @[csr.scala 259:76]
  wire  _T_218; // @[csr.scala 259:76]
  wire  _T_220; // @[csr.scala 259:76]
  wire  _T_221; // @[csr.scala 259:76]
  wire  _T_222; // @[csr.scala 259:76]
  wire  _T_223; // @[csr.scala 259:76]
  wire  _T_224; // @[csr.scala 259:76]
  wire  _T_225; // @[csr.scala 259:76]
  wire  _T_226; // @[csr.scala 259:76]
  wire  _T_227; // @[csr.scala 259:76]
  wire  _T_228; // @[csr.scala 259:76]
  wire  _T_229; // @[csr.scala 259:76]
  wire  _T_230; // @[csr.scala 259:76]
  wire  _T_231; // @[csr.scala 259:76]
  wire  _T_232; // @[csr.scala 259:76]
  wire  _T_233; // @[csr.scala 259:76]
  wire  _T_234; // @[csr.scala 259:76]
  wire  _T_235; // @[csr.scala 259:76]
  wire  _T_236; // @[csr.scala 259:76]
  wire  _T_237; // @[csr.scala 259:76]
  wire  _T_238; // @[csr.scala 259:76]
  wire  _T_239; // @[csr.scala 259:76]
  wire  _T_240; // @[csr.scala 259:76]
  wire  _T_241; // @[csr.scala 259:76]
  wire  _T_242; // @[csr.scala 259:76]
  wire  _T_243; // @[csr.scala 259:76]
  wire  _T_244; // @[csr.scala 259:76]
  wire  _T_245; // @[csr.scala 259:76]
  wire  _T_246; // @[csr.scala 259:76]
  wire  _T_247; // @[csr.scala 259:76]
  wire  _T_248; // @[csr.scala 259:76]
  wire  _T_249; // @[csr.scala 259:76]
  wire  _T_250; // @[csr.scala 259:76]
  wire  _T_251; // @[csr.scala 259:76]
  wire  _T_252; // @[csr.scala 259:76]
  wire  _T_253; // @[csr.scala 259:76]
  wire  _T_254; // @[csr.scala 259:76]
  wire  _T_255; // @[csr.scala 259:76]
  wire  _T_256; // @[csr.scala 259:76]
  wire  _T_257; // @[csr.scala 259:76]
  wire  _T_258; // @[csr.scala 259:76]
  wire  _T_259; // @[csr.scala 259:76]
  wire  _T_260; // @[csr.scala 259:76]
  wire  _T_261; // @[csr.scala 259:76]
  wire  _T_262; // @[csr.scala 259:76]
  wire  _T_263; // @[csr.scala 259:76]
  wire  _T_264; // @[csr.scala 259:76]
  wire  _T_265; // @[csr.scala 259:76]
  wire  _T_266; // @[csr.scala 259:76]
  wire  _T_267; // @[csr.scala 259:76]
  wire  _T_268; // @[csr.scala 259:76]
  wire  _T_269; // @[csr.scala 259:76]
  wire  _T_270; // @[csr.scala 259:76]
  wire  _T_271; // @[csr.scala 259:76]
  wire  _T_272; // @[csr.scala 259:76]
  wire  _T_273; // @[csr.scala 259:76]
  wire  _T_274; // @[csr.scala 259:76]
  wire  _T_275; // @[csr.scala 259:76]
  wire  _T_276; // @[csr.scala 259:76]
  wire  _T_277; // @[csr.scala 259:76]
  wire  _T_278; // @[csr.scala 259:76]
  wire  _T_279; // @[csr.scala 259:76]
  wire  _T_280; // @[csr.scala 259:76]
  wire  _T_281; // @[csr.scala 259:76]
  wire  _T_282; // @[csr.scala 259:76]
  wire  _T_283; // @[csr.scala 259:76]
  wire  _T_284; // @[csr.scala 259:76]
  wire  _T_285; // @[csr.scala 259:76]
  wire  _T_286; // @[csr.scala 259:76]
  wire  _T_287; // @[csr.scala 259:76]
  wire  _T_288; // @[csr.scala 259:76]
  wire  _T_289; // @[csr.scala 259:76]
  wire  read_only; // @[csr.scala 262:40]
  wire  _T_292; // @[csr.scala 263:38]
  wire  cpu_wen; // @[csr.scala 263:25]
  wire  _T_294; // @[csr.scala 264:24]
  wire  wen; // @[csr.scala 264:21]
  wire  _T_295; // @[util.scala 25:47]
  wire  _T_296; // @[util.scala 25:47]
  wire  _T_297; // @[util.scala 25:62]
  wire [31:0] _T_298; // @[csr.scala 394:9]
  wire [31:0] _T_299; // @[csr.scala 394:49]
  wire [31:0] _T_301; // @[csr.scala 394:64]
  wire [31:0] _T_302; // @[csr.scala 394:60]
  wire [31:0] wdata; // @[csr.scala 394:58]
  wire [7:0] opcode; // @[csr.scala 267:20]
  wire  insn_call; // @[csr.scala 268:31]
  wire  insn_break; // @[csr.scala 269:32]
  wire  insn_ret; // @[csr.scala 270:30]
  wire  _T_497; // @[csr.scala 282:24]
  wire [1:0] _T_499; // @[Bitwise.scala 47:55]
  wire  _T_501; // @[csr.scala 290:52]
  wire  _T_503; // @[csr.scala 290:9]
  wire  _T_504; // @[csr.scala 290:9]
  wire  _T_507; // @[csr.scala 301:17]
  wire [31:0] _GEN_6; // @[csr.scala 301:38]
  wire  _T_509; // @[csr.scala 308:21]
  wire  _T_510; // @[csr.scala 308:18]
  wire  _GEN_8; // @[csr.scala 308:41]
  wire  _T_513; // @[csr.scala 325:22]
  wire  _T_514; // @[csr.scala 325:35]
  wire [31:0] _GEN_13; // @[csr.scala 325:50]
  wire [63:0] _T_515; // @[Mux.scala 27:72]
  wire [63:0] _T_516; // @[Mux.scala 27:72]
  wire [15:0] _T_517; // @[Mux.scala 27:72]
  wire [8:0] _T_520; // @[Mux.scala 27:72]
  wire [34:0] _T_521; // @[Mux.scala 27:72]
  wire [8:0] _T_522; // @[Mux.scala 27:72]
  wire [15:0] _T_523; // @[Mux.scala 27:72]
  wire [15:0] _T_524; // @[Mux.scala 27:72]
  wire [31:0] _T_525; // @[Mux.scala 27:72]
  wire [31:0] _T_526; // @[Mux.scala 27:72]
  wire [31:0] _T_527; // @[Mux.scala 27:72]
  wire [31:0] _T_528; // @[Mux.scala 27:72]
  wire [31:0] _T_530; // @[Mux.scala 27:72]
  wire [31:0] _T_531; // @[Mux.scala 27:72]
  wire [31:0] _T_532; // @[Mux.scala 27:72]
  wire [31:0] _T_533; // @[Mux.scala 27:72]
  wire [39:0] _T_534; // @[Mux.scala 27:72]
  wire [39:0] _T_535; // @[Mux.scala 27:72]
  wire [39:0] _T_536; // @[Mux.scala 27:72]
  wire [39:0] _T_537; // @[Mux.scala 27:72]
  wire [39:0] _T_538; // @[Mux.scala 27:72]
  wire [39:0] _T_539; // @[Mux.scala 27:72]
  wire [39:0] _T_540; // @[Mux.scala 27:72]
  wire [39:0] _T_541; // @[Mux.scala 27:72]
  wire [39:0] _T_542; // @[Mux.scala 27:72]
  wire [39:0] _T_543; // @[Mux.scala 27:72]
  wire [39:0] _T_544; // @[Mux.scala 27:72]
  wire [39:0] _T_545; // @[Mux.scala 27:72]
  wire [39:0] _T_546; // @[Mux.scala 27:72]
  wire [39:0] _T_547; // @[Mux.scala 27:72]
  wire [39:0] _T_548; // @[Mux.scala 27:72]
  wire [39:0] _T_549; // @[Mux.scala 27:72]
  wire [39:0] _T_550; // @[Mux.scala 27:72]
  wire [39:0] _T_551; // @[Mux.scala 27:72]
  wire [39:0] _T_552; // @[Mux.scala 27:72]
  wire [39:0] _T_553; // @[Mux.scala 27:72]
  wire [39:0] _T_554; // @[Mux.scala 27:72]
  wire [39:0] _T_555; // @[Mux.scala 27:72]
  wire [39:0] _T_556; // @[Mux.scala 27:72]
  wire [39:0] _T_557; // @[Mux.scala 27:72]
  wire [39:0] _T_558; // @[Mux.scala 27:72]
  wire [39:0] _T_559; // @[Mux.scala 27:72]
  wire [39:0] _T_560; // @[Mux.scala 27:72]
  wire [39:0] _T_561; // @[Mux.scala 27:72]
  wire [39:0] _T_562; // @[Mux.scala 27:72]
  wire [39:0] _T_563; // @[Mux.scala 27:72]
  wire [39:0] _T_564; // @[Mux.scala 27:72]
  wire [39:0] _T_565; // @[Mux.scala 27:72]
  wire [39:0] _T_566; // @[Mux.scala 27:72]
  wire [39:0] _T_567; // @[Mux.scala 27:72]
  wire [39:0] _T_568; // @[Mux.scala 27:72]
  wire [39:0] _T_569; // @[Mux.scala 27:72]
  wire [39:0] _T_570; // @[Mux.scala 27:72]
  wire [39:0] _T_571; // @[Mux.scala 27:72]
  wire [39:0] _T_572; // @[Mux.scala 27:72]
  wire [39:0] _T_573; // @[Mux.scala 27:72]
  wire [39:0] _T_574; // @[Mux.scala 27:72]
  wire [39:0] _T_575; // @[Mux.scala 27:72]
  wire [39:0] _T_576; // @[Mux.scala 27:72]
  wire [39:0] _T_577; // @[Mux.scala 27:72]
  wire [39:0] _T_578; // @[Mux.scala 27:72]
  wire [39:0] _T_579; // @[Mux.scala 27:72]
  wire [39:0] _T_580; // @[Mux.scala 27:72]
  wire [39:0] _T_581; // @[Mux.scala 27:72]
  wire [39:0] _T_582; // @[Mux.scala 27:72]
  wire [39:0] _T_583; // @[Mux.scala 27:72]
  wire [39:0] _T_584; // @[Mux.scala 27:72]
  wire [39:0] _T_585; // @[Mux.scala 27:72]
  wire [39:0] _T_586; // @[Mux.scala 27:72]
  wire [39:0] _T_587; // @[Mux.scala 27:72]
  wire [39:0] _T_588; // @[Mux.scala 27:72]
  wire [39:0] _T_589; // @[Mux.scala 27:72]
  wire [39:0] _T_590; // @[Mux.scala 27:72]
  wire [39:0] _T_591; // @[Mux.scala 27:72]
  wire [39:0] _T_592; // @[Mux.scala 27:72]
  wire [39:0] _T_593; // @[Mux.scala 27:72]
  wire [39:0] _T_594; // @[Mux.scala 27:72]
  wire [39:0] _T_595; // @[Mux.scala 27:72]
  wire [39:0] _T_596; // @[Mux.scala 27:72]
  wire [39:0] _T_597; // @[Mux.scala 27:72]
  wire [63:0] _T_600; // @[Mux.scala 27:72]
  wire [63:0] _GEN_151; // @[Mux.scala 27:72]
  wire [63:0] _T_601; // @[Mux.scala 27:72]
  wire [63:0] _GEN_152; // @[Mux.scala 27:72]
  wire [63:0] _T_604; // @[Mux.scala 27:72]
  wire [63:0] _GEN_153; // @[Mux.scala 27:72]
  wire [63:0] _T_605; // @[Mux.scala 27:72]
  wire [63:0] _GEN_154; // @[Mux.scala 27:72]
  wire [63:0] _T_606; // @[Mux.scala 27:72]
  wire [63:0] _GEN_155; // @[Mux.scala 27:72]
  wire [63:0] _T_607; // @[Mux.scala 27:72]
  wire [63:0] _GEN_156; // @[Mux.scala 27:72]
  wire [63:0] _T_608; // @[Mux.scala 27:72]
  wire [63:0] _GEN_157; // @[Mux.scala 27:72]
  wire [63:0] _T_609; // @[Mux.scala 27:72]
  wire [63:0] _GEN_158; // @[Mux.scala 27:72]
  wire [63:0] _T_610; // @[Mux.scala 27:72]
  wire [63:0] _GEN_159; // @[Mux.scala 27:72]
  wire [63:0] _T_611; // @[Mux.scala 27:72]
  wire [63:0] _GEN_160; // @[Mux.scala 27:72]
  wire [63:0] _T_612; // @[Mux.scala 27:72]
  wire [63:0] _GEN_161; // @[Mux.scala 27:72]
  wire [63:0] _T_614; // @[Mux.scala 27:72]
  wire [63:0] _GEN_162; // @[Mux.scala 27:72]
  wire [63:0] _T_615; // @[Mux.scala 27:72]
  wire [63:0] _GEN_163; // @[Mux.scala 27:72]
  wire [63:0] _T_616; // @[Mux.scala 27:72]
  wire [63:0] _GEN_164; // @[Mux.scala 27:72]
  wire [63:0] _T_617; // @[Mux.scala 27:72]
  wire [63:0] _GEN_165; // @[Mux.scala 27:72]
  wire [63:0] _T_618; // @[Mux.scala 27:72]
  wire [63:0] _GEN_166; // @[Mux.scala 27:72]
  wire [63:0] _T_619; // @[Mux.scala 27:72]
  wire [63:0] _GEN_167; // @[Mux.scala 27:72]
  wire [63:0] _T_620; // @[Mux.scala 27:72]
  wire [63:0] _GEN_168; // @[Mux.scala 27:72]
  wire [63:0] _T_621; // @[Mux.scala 27:72]
  wire [63:0] _GEN_169; // @[Mux.scala 27:72]
  wire [63:0] _T_622; // @[Mux.scala 27:72]
  wire [63:0] _GEN_170; // @[Mux.scala 27:72]
  wire [63:0] _T_623; // @[Mux.scala 27:72]
  wire [63:0] _GEN_171; // @[Mux.scala 27:72]
  wire [63:0] _T_624; // @[Mux.scala 27:72]
  wire [63:0] _GEN_172; // @[Mux.scala 27:72]
  wire [63:0] _T_625; // @[Mux.scala 27:72]
  wire [63:0] _GEN_173; // @[Mux.scala 27:72]
  wire [63:0] _T_626; // @[Mux.scala 27:72]
  wire [63:0] _GEN_174; // @[Mux.scala 27:72]
  wire [63:0] _T_627; // @[Mux.scala 27:72]
  wire [63:0] _GEN_175; // @[Mux.scala 27:72]
  wire [63:0] _T_628; // @[Mux.scala 27:72]
  wire [63:0] _GEN_176; // @[Mux.scala 27:72]
  wire [63:0] _T_629; // @[Mux.scala 27:72]
  wire [63:0] _GEN_177; // @[Mux.scala 27:72]
  wire [63:0] _T_630; // @[Mux.scala 27:72]
  wire [63:0] _GEN_178; // @[Mux.scala 27:72]
  wire [63:0] _T_631; // @[Mux.scala 27:72]
  wire [63:0] _GEN_179; // @[Mux.scala 27:72]
  wire [63:0] _T_632; // @[Mux.scala 27:72]
  wire [63:0] _GEN_180; // @[Mux.scala 27:72]
  wire [63:0] _T_633; // @[Mux.scala 27:72]
  wire [63:0] _GEN_181; // @[Mux.scala 27:72]
  wire [63:0] _T_634; // @[Mux.scala 27:72]
  wire [63:0] _GEN_182; // @[Mux.scala 27:72]
  wire [63:0] _T_635; // @[Mux.scala 27:72]
  wire [63:0] _GEN_183; // @[Mux.scala 27:72]
  wire [63:0] _T_636; // @[Mux.scala 27:72]
  wire [63:0] _GEN_184; // @[Mux.scala 27:72]
  wire [63:0] _T_637; // @[Mux.scala 27:72]
  wire [63:0] _GEN_185; // @[Mux.scala 27:72]
  wire [63:0] _T_638; // @[Mux.scala 27:72]
  wire [63:0] _GEN_186; // @[Mux.scala 27:72]
  wire [63:0] _T_639; // @[Mux.scala 27:72]
  wire [63:0] _GEN_187; // @[Mux.scala 27:72]
  wire [63:0] _T_640; // @[Mux.scala 27:72]
  wire [63:0] _GEN_188; // @[Mux.scala 27:72]
  wire [63:0] _T_641; // @[Mux.scala 27:72]
  wire [63:0] _GEN_189; // @[Mux.scala 27:72]
  wire [63:0] _T_642; // @[Mux.scala 27:72]
  wire [63:0] _GEN_190; // @[Mux.scala 27:72]
  wire [63:0] _T_643; // @[Mux.scala 27:72]
  wire [63:0] _GEN_191; // @[Mux.scala 27:72]
  wire [63:0] _T_644; // @[Mux.scala 27:72]
  wire [63:0] _GEN_192; // @[Mux.scala 27:72]
  wire [63:0] _T_645; // @[Mux.scala 27:72]
  wire [63:0] _GEN_193; // @[Mux.scala 27:72]
  wire [63:0] _T_646; // @[Mux.scala 27:72]
  wire [63:0] _GEN_194; // @[Mux.scala 27:72]
  wire [63:0] _T_647; // @[Mux.scala 27:72]
  wire [63:0] _GEN_195; // @[Mux.scala 27:72]
  wire [63:0] _T_648; // @[Mux.scala 27:72]
  wire [63:0] _GEN_196; // @[Mux.scala 27:72]
  wire [63:0] _T_649; // @[Mux.scala 27:72]
  wire [63:0] _GEN_197; // @[Mux.scala 27:72]
  wire [63:0] _T_650; // @[Mux.scala 27:72]
  wire [63:0] _GEN_198; // @[Mux.scala 27:72]
  wire [63:0] _T_651; // @[Mux.scala 27:72]
  wire [63:0] _GEN_199; // @[Mux.scala 27:72]
  wire [63:0] _T_652; // @[Mux.scala 27:72]
  wire [63:0] _GEN_200; // @[Mux.scala 27:72]
  wire [63:0] _T_653; // @[Mux.scala 27:72]
  wire [63:0] _GEN_201; // @[Mux.scala 27:72]
  wire [63:0] _T_654; // @[Mux.scala 27:72]
  wire [63:0] _GEN_202; // @[Mux.scala 27:72]
  wire [63:0] _T_655; // @[Mux.scala 27:72]
  wire [63:0] _GEN_203; // @[Mux.scala 27:72]
  wire [63:0] _T_656; // @[Mux.scala 27:72]
  wire [63:0] _GEN_204; // @[Mux.scala 27:72]
  wire [63:0] _T_657; // @[Mux.scala 27:72]
  wire [63:0] _GEN_205; // @[Mux.scala 27:72]
  wire [63:0] _T_658; // @[Mux.scala 27:72]
  wire [63:0] _GEN_206; // @[Mux.scala 27:72]
  wire [63:0] _T_659; // @[Mux.scala 27:72]
  wire [63:0] _GEN_207; // @[Mux.scala 27:72]
  wire [63:0] _T_660; // @[Mux.scala 27:72]
  wire [63:0] _GEN_208; // @[Mux.scala 27:72]
  wire [63:0] _T_661; // @[Mux.scala 27:72]
  wire [63:0] _GEN_209; // @[Mux.scala 27:72]
  wire [63:0] _T_662; // @[Mux.scala 27:72]
  wire [63:0] _GEN_210; // @[Mux.scala 27:72]
  wire [63:0] _T_663; // @[Mux.scala 27:72]
  wire [63:0] _GEN_211; // @[Mux.scala 27:72]
  wire [63:0] _T_664; // @[Mux.scala 27:72]
  wire [63:0] _GEN_212; // @[Mux.scala 27:72]
  wire [63:0] _T_665; // @[Mux.scala 27:72]
  wire [63:0] _GEN_213; // @[Mux.scala 27:72]
  wire [63:0] _T_666; // @[Mux.scala 27:72]
  wire [63:0] _GEN_214; // @[Mux.scala 27:72]
  wire [63:0] _T_667; // @[Mux.scala 27:72]
  wire [63:0] _GEN_215; // @[Mux.scala 27:72]
  wire [63:0] _T_668; // @[Mux.scala 27:72]
  wire [63:0] _GEN_216; // @[Mux.scala 27:72]
  wire [63:0] _T_669; // @[Mux.scala 27:72]
  wire [63:0] _GEN_217; // @[Mux.scala 27:72]
  wire [63:0] _T_670; // @[Mux.scala 27:72]
  wire [63:0] _GEN_218; // @[Mux.scala 27:72]
  wire [63:0] _T_671; // @[Mux.scala 27:72]
  wire [63:0] _GEN_219; // @[Mux.scala 27:72]
  wire [63:0] _T_672; // @[Mux.scala 27:72]
  wire [63:0] _GEN_220; // @[Mux.scala 27:72]
  wire [63:0] _T_673; // @[Mux.scala 27:72]
  wire [63:0] _GEN_221; // @[Mux.scala 27:72]
  wire [63:0] _T_674; // @[Mux.scala 27:72]
  wire [63:0] _GEN_222; // @[Mux.scala 27:72]
  wire [63:0] _T_675; // @[Mux.scala 27:72]
  wire [63:0] _GEN_223; // @[Mux.scala 27:72]
  wire [63:0] _T_676; // @[Mux.scala 27:72]
  wire [63:0] _GEN_224; // @[Mux.scala 27:72]
  wire [63:0] _T_677; // @[Mux.scala 27:72]
  wire [63:0] _GEN_225; // @[Mux.scala 27:72]
  wire [63:0] _T_678; // @[Mux.scala 27:72]
  wire [63:0] _GEN_226; // @[Mux.scala 27:72]
  wire [63:0] _T_679; // @[Mux.scala 27:72]
  wire [63:0] _GEN_227; // @[Mux.scala 27:72]
  wire [63:0] _T_680; // @[Mux.scala 27:72]
  wire [63:0] _GEN_228; // @[Mux.scala 27:72]
  wire [63:0] _T_681; // @[Mux.scala 27:72]
  wire [34:0] _T_703;
  wire [39:0] _T_765; // @[Cat.scala 29:58]
  wire [40:0] _GEN_21; // @[csr.scala 390:29]
  wire [39:0] _T_767; // @[Cat.scala 29:58]
  wire [40:0] _GEN_22; // @[csr.scala 391:29]
  wire [39:0] _T_770; // @[Cat.scala 29:58]
  wire [40:0] _GEN_23; // @[csr.scala 390:29]
  wire [39:0] _T_772; // @[Cat.scala 29:58]
  wire [40:0] _GEN_24; // @[csr.scala 391:29]
  wire [39:0] _T_775; // @[Cat.scala 29:58]
  wire [40:0] _GEN_25; // @[csr.scala 390:29]
  wire [39:0] _T_777; // @[Cat.scala 29:58]
  wire [40:0] _GEN_26; // @[csr.scala 391:29]
  wire [39:0] _T_780; // @[Cat.scala 29:58]
  wire [40:0] _GEN_27; // @[csr.scala 390:29]
  wire [39:0] _T_782; // @[Cat.scala 29:58]
  wire [40:0] _GEN_28; // @[csr.scala 391:29]
  wire [39:0] _T_785; // @[Cat.scala 29:58]
  wire [40:0] _GEN_29; // @[csr.scala 390:29]
  wire [39:0] _T_787; // @[Cat.scala 29:58]
  wire [40:0] _GEN_30; // @[csr.scala 391:29]
  wire [39:0] _T_790; // @[Cat.scala 29:58]
  wire [40:0] _GEN_31; // @[csr.scala 390:29]
  wire [39:0] _T_792; // @[Cat.scala 29:58]
  wire [40:0] _GEN_32; // @[csr.scala 391:29]
  wire [39:0] _T_795; // @[Cat.scala 29:58]
  wire [40:0] _GEN_33; // @[csr.scala 390:29]
  wire [39:0] _T_797; // @[Cat.scala 29:58]
  wire [40:0] _GEN_34; // @[csr.scala 391:29]
  wire [39:0] _T_800; // @[Cat.scala 29:58]
  wire [40:0] _GEN_35; // @[csr.scala 390:29]
  wire [39:0] _T_802; // @[Cat.scala 29:58]
  wire [40:0] _GEN_36; // @[csr.scala 391:29]
  wire [39:0] _T_805; // @[Cat.scala 29:58]
  wire [40:0] _GEN_37; // @[csr.scala 390:29]
  wire [39:0] _T_807; // @[Cat.scala 29:58]
  wire [40:0] _GEN_38; // @[csr.scala 391:29]
  wire [39:0] _T_810; // @[Cat.scala 29:58]
  wire [40:0] _GEN_39; // @[csr.scala 390:29]
  wire [39:0] _T_812; // @[Cat.scala 29:58]
  wire [40:0] _GEN_40; // @[csr.scala 391:29]
  wire [39:0] _T_815; // @[Cat.scala 29:58]
  wire [40:0] _GEN_41; // @[csr.scala 390:29]
  wire [39:0] _T_817; // @[Cat.scala 29:58]
  wire [40:0] _GEN_42; // @[csr.scala 391:29]
  wire [39:0] _T_820; // @[Cat.scala 29:58]
  wire [40:0] _GEN_43; // @[csr.scala 390:29]
  wire [39:0] _T_822; // @[Cat.scala 29:58]
  wire [40:0] _GEN_44; // @[csr.scala 391:29]
  wire [39:0] _T_825; // @[Cat.scala 29:58]
  wire [40:0] _GEN_45; // @[csr.scala 390:29]
  wire [39:0] _T_827; // @[Cat.scala 29:58]
  wire [40:0] _GEN_46; // @[csr.scala 391:29]
  wire [39:0] _T_830; // @[Cat.scala 29:58]
  wire [40:0] _GEN_47; // @[csr.scala 390:29]
  wire [39:0] _T_832; // @[Cat.scala 29:58]
  wire [40:0] _GEN_48; // @[csr.scala 391:29]
  wire [39:0] _T_835; // @[Cat.scala 29:58]
  wire [40:0] _GEN_49; // @[csr.scala 390:29]
  wire [39:0] _T_837; // @[Cat.scala 29:58]
  wire [40:0] _GEN_50; // @[csr.scala 391:29]
  wire [39:0] _T_840; // @[Cat.scala 29:58]
  wire [40:0] _GEN_51; // @[csr.scala 390:29]
  wire [39:0] _T_842; // @[Cat.scala 29:58]
  wire [40:0] _GEN_52; // @[csr.scala 391:29]
  wire [39:0] _T_845; // @[Cat.scala 29:58]
  wire [40:0] _GEN_53; // @[csr.scala 390:29]
  wire [39:0] _T_847; // @[Cat.scala 29:58]
  wire [40:0] _GEN_54; // @[csr.scala 391:29]
  wire [39:0] _T_850; // @[Cat.scala 29:58]
  wire [40:0] _GEN_55; // @[csr.scala 390:29]
  wire [39:0] _T_852; // @[Cat.scala 29:58]
  wire [40:0] _GEN_56; // @[csr.scala 391:29]
  wire [39:0] _T_855; // @[Cat.scala 29:58]
  wire [40:0] _GEN_57; // @[csr.scala 390:29]
  wire [39:0] _T_857; // @[Cat.scala 29:58]
  wire [40:0] _GEN_58; // @[csr.scala 391:29]
  wire [39:0] _T_860; // @[Cat.scala 29:58]
  wire [40:0] _GEN_59; // @[csr.scala 390:29]
  wire [39:0] _T_862; // @[Cat.scala 29:58]
  wire [40:0] _GEN_60; // @[csr.scala 391:29]
  wire [39:0] _T_865; // @[Cat.scala 29:58]
  wire [40:0] _GEN_61; // @[csr.scala 390:29]
  wire [39:0] _T_867; // @[Cat.scala 29:58]
  wire [40:0] _GEN_62; // @[csr.scala 391:29]
  wire [39:0] _T_870; // @[Cat.scala 29:58]
  wire [40:0] _GEN_63; // @[csr.scala 390:29]
  wire [39:0] _T_872; // @[Cat.scala 29:58]
  wire [40:0] _GEN_64; // @[csr.scala 391:29]
  wire [39:0] _T_875; // @[Cat.scala 29:58]
  wire [40:0] _GEN_65; // @[csr.scala 390:29]
  wire [39:0] _T_877; // @[Cat.scala 29:58]
  wire [40:0] _GEN_66; // @[csr.scala 391:29]
  wire [39:0] _T_880; // @[Cat.scala 29:58]
  wire [40:0] _GEN_67; // @[csr.scala 390:29]
  wire [39:0] _T_882; // @[Cat.scala 29:58]
  wire [40:0] _GEN_68; // @[csr.scala 391:29]
  wire [39:0] _T_885; // @[Cat.scala 29:58]
  wire [40:0] _GEN_69; // @[csr.scala 390:29]
  wire [39:0] _T_887; // @[Cat.scala 29:58]
  wire [40:0] _GEN_70; // @[csr.scala 391:29]
  wire [39:0] _T_890; // @[Cat.scala 29:58]
  wire [40:0] _GEN_71; // @[csr.scala 390:29]
  wire [39:0] _T_892; // @[Cat.scala 29:58]
  wire [40:0] _GEN_72; // @[csr.scala 391:29]
  wire [39:0] _T_895; // @[Cat.scala 29:58]
  wire [40:0] _GEN_73; // @[csr.scala 390:29]
  wire [39:0] _T_897; // @[Cat.scala 29:58]
  wire [40:0] _GEN_74; // @[csr.scala 391:29]
  wire [39:0] _T_900; // @[Cat.scala 29:58]
  wire [40:0] _GEN_75; // @[csr.scala 390:29]
  wire [39:0] _T_902; // @[Cat.scala 29:58]
  wire [40:0] _GEN_76; // @[csr.scala 391:29]
  wire [39:0] _T_905; // @[Cat.scala 29:58]
  wire [40:0] _GEN_77; // @[csr.scala 390:29]
  wire [39:0] _T_907; // @[Cat.scala 29:58]
  wire [40:0] _GEN_78; // @[csr.scala 391:29]
  wire [39:0] _T_910; // @[Cat.scala 29:58]
  wire [40:0] _GEN_79; // @[csr.scala 390:29]
  wire [39:0] _T_912; // @[Cat.scala 29:58]
  wire [40:0] _GEN_80; // @[csr.scala 391:29]
  wire [39:0] _T_915; // @[Cat.scala 29:58]
  wire [40:0] _GEN_81; // @[csr.scala 390:29]
  wire [39:0] _T_917; // @[Cat.scala 29:58]
  wire [40:0] _GEN_82; // @[csr.scala 391:29]
  wire [39:0] _T_920; // @[Cat.scala 29:58]
  wire [40:0] _GEN_83; // @[csr.scala 390:29]
  wire [39:0] _T_922; // @[Cat.scala 29:58]
  wire [40:0] _GEN_84; // @[csr.scala 391:29]
  wire [63:0] _T_925; // @[Cat.scala 29:58]
  wire [63:0] _GEN_85; // @[csr.scala 390:29]
  wire [63:0] _T_928; // @[Cat.scala 29:58]
  wire [63:0] _GEN_87; // @[csr.scala 391:29]
  wire [63:0] _T_932; // @[Cat.scala 29:58]
  wire [63:0] _GEN_89; // @[csr.scala 390:29]
  wire [63:0] _T_935; // @[Cat.scala 29:58]
  wire [63:0] _GEN_91; // @[csr.scala 391:29]
  wire [31:0] _T_938; // @[csr.scala 372:78]
  wire [33:0] _GEN_230; // @[csr.scala 372:86]
  wire [34:0] _T_939; // @[csr.scala 372:86]
  wire [34:0] _GEN_95; // @[csr.scala 372:40]
  wire [31:0] _T_940; // @[csr.scala 374:62]
  wire [40:0] _GEN_107; // @[csr.scala 335:14]
  wire [40:0] _GEN_108; // @[csr.scala 335:14]
  wire [40:0] _GEN_109; // @[csr.scala 335:14]
  wire [40:0] _GEN_110; // @[csr.scala 335:14]
  wire [40:0] _GEN_111; // @[csr.scala 335:14]
  wire [40:0] _GEN_112; // @[csr.scala 335:14]
  wire [40:0] _GEN_113; // @[csr.scala 335:14]
  wire [40:0] _GEN_114; // @[csr.scala 335:14]
  wire [40:0] _GEN_115; // @[csr.scala 335:14]
  wire [40:0] _GEN_116; // @[csr.scala 335:14]
  wire [40:0] _GEN_117; // @[csr.scala 335:14]
  wire [40:0] _GEN_118; // @[csr.scala 335:14]
  wire [40:0] _GEN_119; // @[csr.scala 335:14]
  wire [40:0] _GEN_120; // @[csr.scala 335:14]
  wire [40:0] _GEN_121; // @[csr.scala 335:14]
  wire [40:0] _GEN_122; // @[csr.scala 335:14]
  wire [40:0] _GEN_123; // @[csr.scala 335:14]
  wire [40:0] _GEN_124; // @[csr.scala 335:14]
  wire [40:0] _GEN_125; // @[csr.scala 335:14]
  wire [40:0] _GEN_126; // @[csr.scala 335:14]
  wire [40:0] _GEN_127; // @[csr.scala 335:14]
  wire [40:0] _GEN_128; // @[csr.scala 335:14]
  wire [40:0] _GEN_129; // @[csr.scala 335:14]
  wire [40:0] _GEN_130; // @[csr.scala 335:14]
  wire [40:0] _GEN_131; // @[csr.scala 335:14]
  wire [40:0] _GEN_132; // @[csr.scala 335:14]
  wire [40:0] _GEN_133; // @[csr.scala 335:14]
  wire [40:0] _GEN_134; // @[csr.scala 335:14]
  wire [40:0] _GEN_135; // @[csr.scala 335:14]
  wire [40:0] _GEN_136; // @[csr.scala 335:14]
  wire [40:0] _GEN_137; // @[csr.scala 335:14]
  wire [40:0] _GEN_138; // @[csr.scala 335:14]
  wire [63:0] _GEN_139; // @[csr.scala 335:14]
  wire [63:0] _GEN_141; // @[csr.scala 335:14]
  wire [34:0] _GEN_145; // @[csr.scala 335:14]
  assign _T_4 = _T_3 + 6'h1; // @[util.scala 115:33]
  assign _T_8 = _T_5 + 58'h1; // @[util.scala 120:43]
  assign _T_9 = {_T_5,_T_3}; // @[Cat.scala 29:58]
  assign _GEN_150 = {{5'd0}, io_retire}; // @[util.scala 115:33]
  assign _T_11 = _T_10 + _GEN_150; // @[util.scala 115:33]
  assign _T_15 = _T_12 + 58'h1; // @[util.scala 120:43]
  assign _T_16 = {_T_12,_T_10}; // @[Cat.scala 29:58]
  assign _T_18 = {{1'd0}, _T_17}; // @[util.scala 115:33]
  assign _T_20 = {{1'd0}, _T_19}; // @[util.scala 115:33]
  assign _T_22 = {{1'd0}, _T_21}; // @[util.scala 115:33]
  assign _T_24 = {{1'd0}, _T_23}; // @[util.scala 115:33]
  assign _T_26 = {{1'd0}, _T_25}; // @[util.scala 115:33]
  assign _T_28 = {{1'd0}, _T_27}; // @[util.scala 115:33]
  assign _T_30 = {{1'd0}, _T_29}; // @[util.scala 115:33]
  assign _T_32 = {{1'd0}, _T_31}; // @[util.scala 115:33]
  assign _T_34 = {{1'd0}, _T_33}; // @[util.scala 115:33]
  assign _T_36 = {{1'd0}, _T_35}; // @[util.scala 115:33]
  assign _T_38 = {{1'd0}, _T_37}; // @[util.scala 115:33]
  assign _T_40 = {{1'd0}, _T_39}; // @[util.scala 115:33]
  assign _T_42 = {{1'd0}, _T_41}; // @[util.scala 115:33]
  assign _T_44 = {{1'd0}, _T_43}; // @[util.scala 115:33]
  assign _T_46 = {{1'd0}, _T_45}; // @[util.scala 115:33]
  assign _T_48 = {{1'd0}, _T_47}; // @[util.scala 115:33]
  assign _T_50 = {{1'd0}, _T_49}; // @[util.scala 115:33]
  assign _T_52 = {{1'd0}, _T_51}; // @[util.scala 115:33]
  assign _T_54 = {{1'd0}, _T_53}; // @[util.scala 115:33]
  assign _T_56 = {{1'd0}, _T_55}; // @[util.scala 115:33]
  assign _T_58 = {{1'd0}, _T_57}; // @[util.scala 115:33]
  assign _T_60 = {{1'd0}, _T_59}; // @[util.scala 115:33]
  assign _T_62 = {{1'd0}, _T_61}; // @[util.scala 115:33]
  assign _T_64 = {{1'd0}, _T_63}; // @[util.scala 115:33]
  assign _T_66 = {{1'd0}, _T_65}; // @[util.scala 115:33]
  assign _T_68 = {{1'd0}, _T_67}; // @[util.scala 115:33]
  assign _T_70 = {{1'd0}, _T_69}; // @[util.scala 115:33]
  assign _T_72 = {{1'd0}, _T_71}; // @[util.scala 115:33]
  assign _T_74 = {{1'd0}, _T_73}; // @[util.scala 115:33]
  assign _T_76 = {{1'd0}, _T_75}; // @[util.scala 115:33]
  assign _T_78 = {{1'd0}, _T_77}; // @[util.scala 115:33]
  assign _T_80 = {{1'd0}, _T_79}; // @[util.scala 115:33]
  assign system_insn = io_rw_cmd == 3'h4; // @[csr.scala 196:31]
  assign _T_138 = io_rw_cmd != 3'h0; // @[csr.scala 197:27]
  assign _T_139 = ~system_insn; // @[csr.scala 197:40]
  assign cpu_ren = _T_138 & _T_139; // @[csr.scala 197:37]
  assign _T_143 = {io_status_upie,io_status_mie,io_status_hie,io_status_sie,io_status_uie}; // @[csr.scala 199:38]
  assign _T_149 = {io_status_mpp,io_status_hpp,io_status_spp,io_status_mpie,io_status_hpie,io_status_spie,_T_143}; // @[csr.scala 199:38]
  assign _T_154 = {io_status_tvm,io_status_mxr,io_status_sum,io_status_mprv,io_status_xs,io_status_fs}; // @[csr.scala 199:38]
  assign read_mstatus = {io_status_debug,io_status_prv,io_status_sd,io_status_zero1,io_status_tsr,io_status_tw,_T_154,_T_149}; // @[csr.scala 199:38]
  assign _T_175 = {8'h0,reg_mip_mtip,1'h0,2'h0,reg_mip_msip,1'h0,2'h0}; // @[csr.scala 215:31]
  assign _T_190 = {8'h0,reg_mie_mtip,1'h0,2'h0,reg_mie_msip,1'h0,2'h0}; // @[csr.scala 216:31]
  assign _T_204 = {4'h4,12'h0,reg_dcsr_ebreakm,4'h0,6'h0,2'h0,reg_dcsr_step,2'h3}; // @[csr.scala 222:27]
  assign _T_205 = io_decode_csr == 12'hb00; // @[csr.scala 259:76]
  assign _T_206 = io_decode_csr == 12'hb02; // @[csr.scala 259:76]
  assign _T_207 = io_decode_csr == 12'hf13; // @[csr.scala 259:76]
  assign _T_210 = io_decode_csr == 12'h301; // @[csr.scala 259:76]
  assign _T_211 = io_decode_csr == 12'h300; // @[csr.scala 259:76]
  assign _T_212 = io_decode_csr == 12'h305; // @[csr.scala 259:76]
  assign _T_213 = io_decode_csr == 12'h344; // @[csr.scala 259:76]
  assign _T_214 = io_decode_csr == 12'h304; // @[csr.scala 259:76]
  assign _T_215 = io_decode_csr == 12'h340; // @[csr.scala 259:76]
  assign _T_216 = io_decode_csr == 12'h341; // @[csr.scala 259:76]
  assign _T_217 = io_decode_csr == 12'h343; // @[csr.scala 259:76]
  assign _T_218 = io_decode_csr == 12'h342; // @[csr.scala 259:76]
  assign _T_220 = io_decode_csr == 12'h7b0; // @[csr.scala 259:76]
  assign _T_221 = io_decode_csr == 12'h7b1; // @[csr.scala 259:76]
  assign _T_222 = io_decode_csr == 12'h7b2; // @[csr.scala 259:76]
  assign _T_223 = io_decode_csr == 12'h302; // @[csr.scala 259:76]
  assign _T_224 = io_decode_csr == 12'hb03; // @[csr.scala 259:76]
  assign _T_225 = io_decode_csr == 12'hb83; // @[csr.scala 259:76]
  assign _T_226 = io_decode_csr == 12'hb04; // @[csr.scala 259:76]
  assign _T_227 = io_decode_csr == 12'hb84; // @[csr.scala 259:76]
  assign _T_228 = io_decode_csr == 12'hb05; // @[csr.scala 259:76]
  assign _T_229 = io_decode_csr == 12'hb85; // @[csr.scala 259:76]
  assign _T_230 = io_decode_csr == 12'hb06; // @[csr.scala 259:76]
  assign _T_231 = io_decode_csr == 12'hb86; // @[csr.scala 259:76]
  assign _T_232 = io_decode_csr == 12'hb07; // @[csr.scala 259:76]
  assign _T_233 = io_decode_csr == 12'hb87; // @[csr.scala 259:76]
  assign _T_234 = io_decode_csr == 12'hb08; // @[csr.scala 259:76]
  assign _T_235 = io_decode_csr == 12'hb88; // @[csr.scala 259:76]
  assign _T_236 = io_decode_csr == 12'hb09; // @[csr.scala 259:76]
  assign _T_237 = io_decode_csr == 12'hb89; // @[csr.scala 259:76]
  assign _T_238 = io_decode_csr == 12'hb0a; // @[csr.scala 259:76]
  assign _T_239 = io_decode_csr == 12'hb8a; // @[csr.scala 259:76]
  assign _T_240 = io_decode_csr == 12'hb0b; // @[csr.scala 259:76]
  assign _T_241 = io_decode_csr == 12'hb8b; // @[csr.scala 259:76]
  assign _T_242 = io_decode_csr == 12'hb0c; // @[csr.scala 259:76]
  assign _T_243 = io_decode_csr == 12'hb8c; // @[csr.scala 259:76]
  assign _T_244 = io_decode_csr == 12'hb0d; // @[csr.scala 259:76]
  assign _T_245 = io_decode_csr == 12'hb8d; // @[csr.scala 259:76]
  assign _T_246 = io_decode_csr == 12'hb0e; // @[csr.scala 259:76]
  assign _T_247 = io_decode_csr == 12'hb8e; // @[csr.scala 259:76]
  assign _T_248 = io_decode_csr == 12'hb0f; // @[csr.scala 259:76]
  assign _T_249 = io_decode_csr == 12'hb8f; // @[csr.scala 259:76]
  assign _T_250 = io_decode_csr == 12'hb10; // @[csr.scala 259:76]
  assign _T_251 = io_decode_csr == 12'hb90; // @[csr.scala 259:76]
  assign _T_252 = io_decode_csr == 12'hb11; // @[csr.scala 259:76]
  assign _T_253 = io_decode_csr == 12'hb91; // @[csr.scala 259:76]
  assign _T_254 = io_decode_csr == 12'hb12; // @[csr.scala 259:76]
  assign _T_255 = io_decode_csr == 12'hb92; // @[csr.scala 259:76]
  assign _T_256 = io_decode_csr == 12'hb13; // @[csr.scala 259:76]
  assign _T_257 = io_decode_csr == 12'hb93; // @[csr.scala 259:76]
  assign _T_258 = io_decode_csr == 12'hb14; // @[csr.scala 259:76]
  assign _T_259 = io_decode_csr == 12'hb94; // @[csr.scala 259:76]
  assign _T_260 = io_decode_csr == 12'hb15; // @[csr.scala 259:76]
  assign _T_261 = io_decode_csr == 12'hb95; // @[csr.scala 259:76]
  assign _T_262 = io_decode_csr == 12'hb16; // @[csr.scala 259:76]
  assign _T_263 = io_decode_csr == 12'hb96; // @[csr.scala 259:76]
  assign _T_264 = io_decode_csr == 12'hb17; // @[csr.scala 259:76]
  assign _T_265 = io_decode_csr == 12'hb97; // @[csr.scala 259:76]
  assign _T_266 = io_decode_csr == 12'hb18; // @[csr.scala 259:76]
  assign _T_267 = io_decode_csr == 12'hb98; // @[csr.scala 259:76]
  assign _T_268 = io_decode_csr == 12'hb19; // @[csr.scala 259:76]
  assign _T_269 = io_decode_csr == 12'hb99; // @[csr.scala 259:76]
  assign _T_270 = io_decode_csr == 12'hb1a; // @[csr.scala 259:76]
  assign _T_271 = io_decode_csr == 12'hb9a; // @[csr.scala 259:76]
  assign _T_272 = io_decode_csr == 12'hb1b; // @[csr.scala 259:76]
  assign _T_273 = io_decode_csr == 12'hb9b; // @[csr.scala 259:76]
  assign _T_274 = io_decode_csr == 12'hb1c; // @[csr.scala 259:76]
  assign _T_275 = io_decode_csr == 12'hb9c; // @[csr.scala 259:76]
  assign _T_276 = io_decode_csr == 12'hb1d; // @[csr.scala 259:76]
  assign _T_277 = io_decode_csr == 12'hb9d; // @[csr.scala 259:76]
  assign _T_278 = io_decode_csr == 12'hb1e; // @[csr.scala 259:76]
  assign _T_279 = io_decode_csr == 12'hb9e; // @[csr.scala 259:76]
  assign _T_280 = io_decode_csr == 12'hb1f; // @[csr.scala 259:76]
  assign _T_281 = io_decode_csr == 12'hb9f; // @[csr.scala 259:76]
  assign _T_282 = io_decode_csr == 12'hb20; // @[csr.scala 259:76]
  assign _T_283 = io_decode_csr == 12'hba0; // @[csr.scala 259:76]
  assign _T_284 = io_decode_csr == 12'hb21; // @[csr.scala 259:76]
  assign _T_285 = io_decode_csr == 12'hba1; // @[csr.scala 259:76]
  assign _T_286 = io_decode_csr == 12'hb22; // @[csr.scala 259:76]
  assign _T_287 = io_decode_csr == 12'hba2; // @[csr.scala 259:76]
  assign _T_288 = io_decode_csr == 12'hb80; // @[csr.scala 259:76]
  assign _T_289 = io_decode_csr == 12'hb82; // @[csr.scala 259:76]
  assign read_only = &io_decode_csr[11:10]; // @[csr.scala 262:40]
  assign _T_292 = io_rw_cmd != 3'h5; // @[csr.scala 263:38]
  assign cpu_wen = cpu_ren & _T_292; // @[csr.scala 263:25]
  assign _T_294 = ~read_only; // @[csr.scala 264:24]
  assign wen = cpu_wen & _T_294; // @[csr.scala 264:21]
  assign _T_295 = io_rw_cmd == 3'h2; // @[util.scala 25:47]
  assign _T_296 = io_rw_cmd == 3'h3; // @[util.scala 25:47]
  assign _T_297 = _T_295 | _T_296; // @[util.scala 25:62]
  assign _T_298 = _T_297 ? io_rw_rdata : 32'h0; // @[csr.scala 394:9]
  assign _T_299 = _T_298 | io_rw_wdata; // @[csr.scala 394:49]
  assign _T_301 = _T_296 ? io_rw_wdata : 32'h0; // @[csr.scala 394:64]
  assign _T_302 = ~_T_301; // @[csr.scala 394:60]
  assign wdata = _T_299 & _T_302; // @[csr.scala 394:58]
  assign opcode = 8'h1 << io_decode_csr[2:0]; // @[csr.scala 267:20]
  assign insn_call = system_insn & opcode[0]; // @[csr.scala 268:31]
  assign insn_break = system_insn & opcode[1]; // @[csr.scala 269:32]
  assign insn_ret = system_insn & opcode[2]; // @[csr.scala 270:30]
  assign _T_497 = insn_call | insn_break; // @[csr.scala 282:24]
  assign _T_499 = insn_ret + io_exception; // @[Bitwise.scala 47:55]
  assign _T_501 = _T_499 <= 2'h1; // @[csr.scala 290:52]
  assign _T_503 = _T_501 | reset; // @[csr.scala 290:9]
  assign _T_504 = ~_T_503; // @[csr.scala 290:9]
  assign _T_507 = insn_ret & io_decode_csr[10]; // @[csr.scala 301:17]
  assign _GEN_6 = _T_507 ? reg_dpc : 32'h80000004; // @[csr.scala 301:38]
  assign _T_509 = ~io_decode_csr[10]; // @[csr.scala 308:21]
  assign _T_510 = insn_ret & _T_509; // @[csr.scala 308:18]
  assign _GEN_8 = _T_510 | reg_mstatus_mpie; // @[csr.scala 308:41]
  assign _T_513 = io_exception | insn_call; // @[csr.scala 325:22]
  assign _T_514 = _T_513 | insn_break; // @[csr.scala 325:35]
  assign _GEN_13 = _T_514 ? io_pc : reg_mepc; // @[csr.scala 325:50]
  assign _T_515 = _T_205 ? _T_9 : 64'h0; // @[Mux.scala 27:72]
  assign _T_516 = _T_206 ? _T_16 : 64'h0; // @[Mux.scala 27:72]
  assign _T_517 = _T_207 ? 16'h8000 : 16'h0; // @[Mux.scala 27:72]
  assign _T_520 = _T_210 ? 9'h100 : 9'h0; // @[Mux.scala 27:72]
  assign _T_521 = _T_211 ? read_mstatus : 35'h0; // @[Mux.scala 27:72]
  assign _T_522 = _T_212 ? 9'h100 : 9'h0; // @[Mux.scala 27:72]
  assign _T_523 = _T_213 ? _T_175 : 16'h0; // @[Mux.scala 27:72]
  assign _T_524 = _T_214 ? _T_190 : 16'h0; // @[Mux.scala 27:72]
  assign _T_525 = _T_215 ? reg_mscratch : 32'h0; // @[Mux.scala 27:72]
  assign _T_526 = _T_216 ? reg_mepc : 32'h0; // @[Mux.scala 27:72]
  assign _T_527 = _T_217 ? reg_mtval : 32'h0; // @[Mux.scala 27:72]
  assign _T_528 = _T_218 ? reg_mcause : 32'h0; // @[Mux.scala 27:72]
  assign _T_530 = _T_220 ? _T_204 : 32'h0; // @[Mux.scala 27:72]
  assign _T_531 = _T_221 ? reg_dpc : 32'h0; // @[Mux.scala 27:72]
  assign _T_532 = _T_222 ? reg_dscratch : 32'h0; // @[Mux.scala 27:72]
  assign _T_533 = _T_223 ? reg_medeleg : 32'h0; // @[Mux.scala 27:72]
  assign _T_534 = _T_224 ? _T_17 : 40'h0; // @[Mux.scala 27:72]
  assign _T_535 = _T_225 ? _T_17 : 40'h0; // @[Mux.scala 27:72]
  assign _T_536 = _T_226 ? _T_19 : 40'h0; // @[Mux.scala 27:72]
  assign _T_537 = _T_227 ? _T_19 : 40'h0; // @[Mux.scala 27:72]
  assign _T_538 = _T_228 ? _T_21 : 40'h0; // @[Mux.scala 27:72]
  assign _T_539 = _T_229 ? _T_21 : 40'h0; // @[Mux.scala 27:72]
  assign _T_540 = _T_230 ? _T_23 : 40'h0; // @[Mux.scala 27:72]
  assign _T_541 = _T_231 ? _T_23 : 40'h0; // @[Mux.scala 27:72]
  assign _T_542 = _T_232 ? _T_25 : 40'h0; // @[Mux.scala 27:72]
  assign _T_543 = _T_233 ? _T_25 : 40'h0; // @[Mux.scala 27:72]
  assign _T_544 = _T_234 ? _T_27 : 40'h0; // @[Mux.scala 27:72]
  assign _T_545 = _T_235 ? _T_27 : 40'h0; // @[Mux.scala 27:72]
  assign _T_546 = _T_236 ? _T_29 : 40'h0; // @[Mux.scala 27:72]
  assign _T_547 = _T_237 ? _T_29 : 40'h0; // @[Mux.scala 27:72]
  assign _T_548 = _T_238 ? _T_31 : 40'h0; // @[Mux.scala 27:72]
  assign _T_549 = _T_239 ? _T_31 : 40'h0; // @[Mux.scala 27:72]
  assign _T_550 = _T_240 ? _T_33 : 40'h0; // @[Mux.scala 27:72]
  assign _T_551 = _T_241 ? _T_33 : 40'h0; // @[Mux.scala 27:72]
  assign _T_552 = _T_242 ? _T_35 : 40'h0; // @[Mux.scala 27:72]
  assign _T_553 = _T_243 ? _T_35 : 40'h0; // @[Mux.scala 27:72]
  assign _T_554 = _T_244 ? _T_37 : 40'h0; // @[Mux.scala 27:72]
  assign _T_555 = _T_245 ? _T_37 : 40'h0; // @[Mux.scala 27:72]
  assign _T_556 = _T_246 ? _T_39 : 40'h0; // @[Mux.scala 27:72]
  assign _T_557 = _T_247 ? _T_39 : 40'h0; // @[Mux.scala 27:72]
  assign _T_558 = _T_248 ? _T_41 : 40'h0; // @[Mux.scala 27:72]
  assign _T_559 = _T_249 ? _T_41 : 40'h0; // @[Mux.scala 27:72]
  assign _T_560 = _T_250 ? _T_43 : 40'h0; // @[Mux.scala 27:72]
  assign _T_561 = _T_251 ? _T_43 : 40'h0; // @[Mux.scala 27:72]
  assign _T_562 = _T_252 ? _T_45 : 40'h0; // @[Mux.scala 27:72]
  assign _T_563 = _T_253 ? _T_45 : 40'h0; // @[Mux.scala 27:72]
  assign _T_564 = _T_254 ? _T_47 : 40'h0; // @[Mux.scala 27:72]
  assign _T_565 = _T_255 ? _T_47 : 40'h0; // @[Mux.scala 27:72]
  assign _T_566 = _T_256 ? _T_49 : 40'h0; // @[Mux.scala 27:72]
  assign _T_567 = _T_257 ? _T_49 : 40'h0; // @[Mux.scala 27:72]
  assign _T_568 = _T_258 ? _T_51 : 40'h0; // @[Mux.scala 27:72]
  assign _T_569 = _T_259 ? _T_51 : 40'h0; // @[Mux.scala 27:72]
  assign _T_570 = _T_260 ? _T_53 : 40'h0; // @[Mux.scala 27:72]
  assign _T_571 = _T_261 ? _T_53 : 40'h0; // @[Mux.scala 27:72]
  assign _T_572 = _T_262 ? _T_55 : 40'h0; // @[Mux.scala 27:72]
  assign _T_573 = _T_263 ? _T_55 : 40'h0; // @[Mux.scala 27:72]
  assign _T_574 = _T_264 ? _T_57 : 40'h0; // @[Mux.scala 27:72]
  assign _T_575 = _T_265 ? _T_57 : 40'h0; // @[Mux.scala 27:72]
  assign _T_576 = _T_266 ? _T_59 : 40'h0; // @[Mux.scala 27:72]
  assign _T_577 = _T_267 ? _T_59 : 40'h0; // @[Mux.scala 27:72]
  assign _T_578 = _T_268 ? _T_61 : 40'h0; // @[Mux.scala 27:72]
  assign _T_579 = _T_269 ? _T_61 : 40'h0; // @[Mux.scala 27:72]
  assign _T_580 = _T_270 ? _T_63 : 40'h0; // @[Mux.scala 27:72]
  assign _T_581 = _T_271 ? _T_63 : 40'h0; // @[Mux.scala 27:72]
  assign _T_582 = _T_272 ? _T_65 : 40'h0; // @[Mux.scala 27:72]
  assign _T_583 = _T_273 ? _T_65 : 40'h0; // @[Mux.scala 27:72]
  assign _T_584 = _T_274 ? _T_67 : 40'h0; // @[Mux.scala 27:72]
  assign _T_585 = _T_275 ? _T_67 : 40'h0; // @[Mux.scala 27:72]
  assign _T_586 = _T_276 ? _T_69 : 40'h0; // @[Mux.scala 27:72]
  assign _T_587 = _T_277 ? _T_69 : 40'h0; // @[Mux.scala 27:72]
  assign _T_588 = _T_278 ? _T_71 : 40'h0; // @[Mux.scala 27:72]
  assign _T_589 = _T_279 ? _T_71 : 40'h0; // @[Mux.scala 27:72]
  assign _T_590 = _T_280 ? _T_73 : 40'h0; // @[Mux.scala 27:72]
  assign _T_591 = _T_281 ? _T_73 : 40'h0; // @[Mux.scala 27:72]
  assign _T_592 = _T_282 ? _T_75 : 40'h0; // @[Mux.scala 27:72]
  assign _T_593 = _T_283 ? _T_75 : 40'h0; // @[Mux.scala 27:72]
  assign _T_594 = _T_284 ? _T_77 : 40'h0; // @[Mux.scala 27:72]
  assign _T_595 = _T_285 ? _T_77 : 40'h0; // @[Mux.scala 27:72]
  assign _T_596 = _T_286 ? _T_79 : 40'h0; // @[Mux.scala 27:72]
  assign _T_597 = _T_287 ? _T_79 : 40'h0; // @[Mux.scala 27:72]
  assign _T_600 = _T_515 | _T_516; // @[Mux.scala 27:72]
  assign _GEN_151 = {{48'd0}, _T_517}; // @[Mux.scala 27:72]
  assign _T_601 = _T_600 | _GEN_151; // @[Mux.scala 27:72]
  assign _GEN_152 = {{55'd0}, _T_520}; // @[Mux.scala 27:72]
  assign _T_604 = _T_601 | _GEN_152; // @[Mux.scala 27:72]
  assign _GEN_153 = {{29'd0}, _T_521}; // @[Mux.scala 27:72]
  assign _T_605 = _T_604 | _GEN_153; // @[Mux.scala 27:72]
  assign _GEN_154 = {{55'd0}, _T_522}; // @[Mux.scala 27:72]
  assign _T_606 = _T_605 | _GEN_154; // @[Mux.scala 27:72]
  assign _GEN_155 = {{48'd0}, _T_523}; // @[Mux.scala 27:72]
  assign _T_607 = _T_606 | _GEN_155; // @[Mux.scala 27:72]
  assign _GEN_156 = {{48'd0}, _T_524}; // @[Mux.scala 27:72]
  assign _T_608 = _T_607 | _GEN_156; // @[Mux.scala 27:72]
  assign _GEN_157 = {{32'd0}, _T_525}; // @[Mux.scala 27:72]
  assign _T_609 = _T_608 | _GEN_157; // @[Mux.scala 27:72]
  assign _GEN_158 = {{32'd0}, _T_526}; // @[Mux.scala 27:72]
  assign _T_610 = _T_609 | _GEN_158; // @[Mux.scala 27:72]
  assign _GEN_159 = {{32'd0}, _T_527}; // @[Mux.scala 27:72]
  assign _T_611 = _T_610 | _GEN_159; // @[Mux.scala 27:72]
  assign _GEN_160 = {{32'd0}, _T_528}; // @[Mux.scala 27:72]
  assign _T_612 = _T_611 | _GEN_160; // @[Mux.scala 27:72]
  assign _GEN_161 = {{32'd0}, _T_530}; // @[Mux.scala 27:72]
  assign _T_614 = _T_612 | _GEN_161; // @[Mux.scala 27:72]
  assign _GEN_162 = {{32'd0}, _T_531}; // @[Mux.scala 27:72]
  assign _T_615 = _T_614 | _GEN_162; // @[Mux.scala 27:72]
  assign _GEN_163 = {{32'd0}, _T_532}; // @[Mux.scala 27:72]
  assign _T_616 = _T_615 | _GEN_163; // @[Mux.scala 27:72]
  assign _GEN_164 = {{32'd0}, _T_533}; // @[Mux.scala 27:72]
  assign _T_617 = _T_616 | _GEN_164; // @[Mux.scala 27:72]
  assign _GEN_165 = {{24'd0}, _T_534}; // @[Mux.scala 27:72]
  assign _T_618 = _T_617 | _GEN_165; // @[Mux.scala 27:72]
  assign _GEN_166 = {{24'd0}, _T_535}; // @[Mux.scala 27:72]
  assign _T_619 = _T_618 | _GEN_166; // @[Mux.scala 27:72]
  assign _GEN_167 = {{24'd0}, _T_536}; // @[Mux.scala 27:72]
  assign _T_620 = _T_619 | _GEN_167; // @[Mux.scala 27:72]
  assign _GEN_168 = {{24'd0}, _T_537}; // @[Mux.scala 27:72]
  assign _T_621 = _T_620 | _GEN_168; // @[Mux.scala 27:72]
  assign _GEN_169 = {{24'd0}, _T_538}; // @[Mux.scala 27:72]
  assign _T_622 = _T_621 | _GEN_169; // @[Mux.scala 27:72]
  assign _GEN_170 = {{24'd0}, _T_539}; // @[Mux.scala 27:72]
  assign _T_623 = _T_622 | _GEN_170; // @[Mux.scala 27:72]
  assign _GEN_171 = {{24'd0}, _T_540}; // @[Mux.scala 27:72]
  assign _T_624 = _T_623 | _GEN_171; // @[Mux.scala 27:72]
  assign _GEN_172 = {{24'd0}, _T_541}; // @[Mux.scala 27:72]
  assign _T_625 = _T_624 | _GEN_172; // @[Mux.scala 27:72]
  assign _GEN_173 = {{24'd0}, _T_542}; // @[Mux.scala 27:72]
  assign _T_626 = _T_625 | _GEN_173; // @[Mux.scala 27:72]
  assign _GEN_174 = {{24'd0}, _T_543}; // @[Mux.scala 27:72]
  assign _T_627 = _T_626 | _GEN_174; // @[Mux.scala 27:72]
  assign _GEN_175 = {{24'd0}, _T_544}; // @[Mux.scala 27:72]
  assign _T_628 = _T_627 | _GEN_175; // @[Mux.scala 27:72]
  assign _GEN_176 = {{24'd0}, _T_545}; // @[Mux.scala 27:72]
  assign _T_629 = _T_628 | _GEN_176; // @[Mux.scala 27:72]
  assign _GEN_177 = {{24'd0}, _T_546}; // @[Mux.scala 27:72]
  assign _T_630 = _T_629 | _GEN_177; // @[Mux.scala 27:72]
  assign _GEN_178 = {{24'd0}, _T_547}; // @[Mux.scala 27:72]
  assign _T_631 = _T_630 | _GEN_178; // @[Mux.scala 27:72]
  assign _GEN_179 = {{24'd0}, _T_548}; // @[Mux.scala 27:72]
  assign _T_632 = _T_631 | _GEN_179; // @[Mux.scala 27:72]
  assign _GEN_180 = {{24'd0}, _T_549}; // @[Mux.scala 27:72]
  assign _T_633 = _T_632 | _GEN_180; // @[Mux.scala 27:72]
  assign _GEN_181 = {{24'd0}, _T_550}; // @[Mux.scala 27:72]
  assign _T_634 = _T_633 | _GEN_181; // @[Mux.scala 27:72]
  assign _GEN_182 = {{24'd0}, _T_551}; // @[Mux.scala 27:72]
  assign _T_635 = _T_634 | _GEN_182; // @[Mux.scala 27:72]
  assign _GEN_183 = {{24'd0}, _T_552}; // @[Mux.scala 27:72]
  assign _T_636 = _T_635 | _GEN_183; // @[Mux.scala 27:72]
  assign _GEN_184 = {{24'd0}, _T_553}; // @[Mux.scala 27:72]
  assign _T_637 = _T_636 | _GEN_184; // @[Mux.scala 27:72]
  assign _GEN_185 = {{24'd0}, _T_554}; // @[Mux.scala 27:72]
  assign _T_638 = _T_637 | _GEN_185; // @[Mux.scala 27:72]
  assign _GEN_186 = {{24'd0}, _T_555}; // @[Mux.scala 27:72]
  assign _T_639 = _T_638 | _GEN_186; // @[Mux.scala 27:72]
  assign _GEN_187 = {{24'd0}, _T_556}; // @[Mux.scala 27:72]
  assign _T_640 = _T_639 | _GEN_187; // @[Mux.scala 27:72]
  assign _GEN_188 = {{24'd0}, _T_557}; // @[Mux.scala 27:72]
  assign _T_641 = _T_640 | _GEN_188; // @[Mux.scala 27:72]
  assign _GEN_189 = {{24'd0}, _T_558}; // @[Mux.scala 27:72]
  assign _T_642 = _T_641 | _GEN_189; // @[Mux.scala 27:72]
  assign _GEN_190 = {{24'd0}, _T_559}; // @[Mux.scala 27:72]
  assign _T_643 = _T_642 | _GEN_190; // @[Mux.scala 27:72]
  assign _GEN_191 = {{24'd0}, _T_560}; // @[Mux.scala 27:72]
  assign _T_644 = _T_643 | _GEN_191; // @[Mux.scala 27:72]
  assign _GEN_192 = {{24'd0}, _T_561}; // @[Mux.scala 27:72]
  assign _T_645 = _T_644 | _GEN_192; // @[Mux.scala 27:72]
  assign _GEN_193 = {{24'd0}, _T_562}; // @[Mux.scala 27:72]
  assign _T_646 = _T_645 | _GEN_193; // @[Mux.scala 27:72]
  assign _GEN_194 = {{24'd0}, _T_563}; // @[Mux.scala 27:72]
  assign _T_647 = _T_646 | _GEN_194; // @[Mux.scala 27:72]
  assign _GEN_195 = {{24'd0}, _T_564}; // @[Mux.scala 27:72]
  assign _T_648 = _T_647 | _GEN_195; // @[Mux.scala 27:72]
  assign _GEN_196 = {{24'd0}, _T_565}; // @[Mux.scala 27:72]
  assign _T_649 = _T_648 | _GEN_196; // @[Mux.scala 27:72]
  assign _GEN_197 = {{24'd0}, _T_566}; // @[Mux.scala 27:72]
  assign _T_650 = _T_649 | _GEN_197; // @[Mux.scala 27:72]
  assign _GEN_198 = {{24'd0}, _T_567}; // @[Mux.scala 27:72]
  assign _T_651 = _T_650 | _GEN_198; // @[Mux.scala 27:72]
  assign _GEN_199 = {{24'd0}, _T_568}; // @[Mux.scala 27:72]
  assign _T_652 = _T_651 | _GEN_199; // @[Mux.scala 27:72]
  assign _GEN_200 = {{24'd0}, _T_569}; // @[Mux.scala 27:72]
  assign _T_653 = _T_652 | _GEN_200; // @[Mux.scala 27:72]
  assign _GEN_201 = {{24'd0}, _T_570}; // @[Mux.scala 27:72]
  assign _T_654 = _T_653 | _GEN_201; // @[Mux.scala 27:72]
  assign _GEN_202 = {{24'd0}, _T_571}; // @[Mux.scala 27:72]
  assign _T_655 = _T_654 | _GEN_202; // @[Mux.scala 27:72]
  assign _GEN_203 = {{24'd0}, _T_572}; // @[Mux.scala 27:72]
  assign _T_656 = _T_655 | _GEN_203; // @[Mux.scala 27:72]
  assign _GEN_204 = {{24'd0}, _T_573}; // @[Mux.scala 27:72]
  assign _T_657 = _T_656 | _GEN_204; // @[Mux.scala 27:72]
  assign _GEN_205 = {{24'd0}, _T_574}; // @[Mux.scala 27:72]
  assign _T_658 = _T_657 | _GEN_205; // @[Mux.scala 27:72]
  assign _GEN_206 = {{24'd0}, _T_575}; // @[Mux.scala 27:72]
  assign _T_659 = _T_658 | _GEN_206; // @[Mux.scala 27:72]
  assign _GEN_207 = {{24'd0}, _T_576}; // @[Mux.scala 27:72]
  assign _T_660 = _T_659 | _GEN_207; // @[Mux.scala 27:72]
  assign _GEN_208 = {{24'd0}, _T_577}; // @[Mux.scala 27:72]
  assign _T_661 = _T_660 | _GEN_208; // @[Mux.scala 27:72]
  assign _GEN_209 = {{24'd0}, _T_578}; // @[Mux.scala 27:72]
  assign _T_662 = _T_661 | _GEN_209; // @[Mux.scala 27:72]
  assign _GEN_210 = {{24'd0}, _T_579}; // @[Mux.scala 27:72]
  assign _T_663 = _T_662 | _GEN_210; // @[Mux.scala 27:72]
  assign _GEN_211 = {{24'd0}, _T_580}; // @[Mux.scala 27:72]
  assign _T_664 = _T_663 | _GEN_211; // @[Mux.scala 27:72]
  assign _GEN_212 = {{24'd0}, _T_581}; // @[Mux.scala 27:72]
  assign _T_665 = _T_664 | _GEN_212; // @[Mux.scala 27:72]
  assign _GEN_213 = {{24'd0}, _T_582}; // @[Mux.scala 27:72]
  assign _T_666 = _T_665 | _GEN_213; // @[Mux.scala 27:72]
  assign _GEN_214 = {{24'd0}, _T_583}; // @[Mux.scala 27:72]
  assign _T_667 = _T_666 | _GEN_214; // @[Mux.scala 27:72]
  assign _GEN_215 = {{24'd0}, _T_584}; // @[Mux.scala 27:72]
  assign _T_668 = _T_667 | _GEN_215; // @[Mux.scala 27:72]
  assign _GEN_216 = {{24'd0}, _T_585}; // @[Mux.scala 27:72]
  assign _T_669 = _T_668 | _GEN_216; // @[Mux.scala 27:72]
  assign _GEN_217 = {{24'd0}, _T_586}; // @[Mux.scala 27:72]
  assign _T_670 = _T_669 | _GEN_217; // @[Mux.scala 27:72]
  assign _GEN_218 = {{24'd0}, _T_587}; // @[Mux.scala 27:72]
  assign _T_671 = _T_670 | _GEN_218; // @[Mux.scala 27:72]
  assign _GEN_219 = {{24'd0}, _T_588}; // @[Mux.scala 27:72]
  assign _T_672 = _T_671 | _GEN_219; // @[Mux.scala 27:72]
  assign _GEN_220 = {{24'd0}, _T_589}; // @[Mux.scala 27:72]
  assign _T_673 = _T_672 | _GEN_220; // @[Mux.scala 27:72]
  assign _GEN_221 = {{24'd0}, _T_590}; // @[Mux.scala 27:72]
  assign _T_674 = _T_673 | _GEN_221; // @[Mux.scala 27:72]
  assign _GEN_222 = {{24'd0}, _T_591}; // @[Mux.scala 27:72]
  assign _T_675 = _T_674 | _GEN_222; // @[Mux.scala 27:72]
  assign _GEN_223 = {{24'd0}, _T_592}; // @[Mux.scala 27:72]
  assign _T_676 = _T_675 | _GEN_223; // @[Mux.scala 27:72]
  assign _GEN_224 = {{24'd0}, _T_593}; // @[Mux.scala 27:72]
  assign _T_677 = _T_676 | _GEN_224; // @[Mux.scala 27:72]
  assign _GEN_225 = {{24'd0}, _T_594}; // @[Mux.scala 27:72]
  assign _T_678 = _T_677 | _GEN_225; // @[Mux.scala 27:72]
  assign _GEN_226 = {{24'd0}, _T_595}; // @[Mux.scala 27:72]
  assign _T_679 = _T_678 | _GEN_226; // @[Mux.scala 27:72]
  assign _GEN_227 = {{24'd0}, _T_596}; // @[Mux.scala 27:72]
  assign _T_680 = _T_679 | _GEN_227; // @[Mux.scala 27:72]
  assign _GEN_228 = {{24'd0}, _T_597}; // @[Mux.scala 27:72]
  assign _T_681 = _T_680 | _GEN_228; // @[Mux.scala 27:72]
  assign _T_703 = {{3'd0}, wdata};
  assign _T_765 = {wdata[7:0],_T_17[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_21 = _T_225 ? {{1'd0}, _T_765} : _T_18; // @[csr.scala 390:29]
  assign _T_767 = {_T_17[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_22 = _T_224 ? {{1'd0}, _T_767} : _GEN_21; // @[csr.scala 391:29]
  assign _T_770 = {wdata[7:0],_T_19[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_23 = _T_227 ? {{1'd0}, _T_770} : _T_20; // @[csr.scala 390:29]
  assign _T_772 = {_T_19[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_24 = _T_226 ? {{1'd0}, _T_772} : _GEN_23; // @[csr.scala 391:29]
  assign _T_775 = {wdata[7:0],_T_21[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_25 = _T_229 ? {{1'd0}, _T_775} : _T_22; // @[csr.scala 390:29]
  assign _T_777 = {_T_21[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_26 = _T_228 ? {{1'd0}, _T_777} : _GEN_25; // @[csr.scala 391:29]
  assign _T_780 = {wdata[7:0],_T_23[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_27 = _T_231 ? {{1'd0}, _T_780} : _T_24; // @[csr.scala 390:29]
  assign _T_782 = {_T_23[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_28 = _T_230 ? {{1'd0}, _T_782} : _GEN_27; // @[csr.scala 391:29]
  assign _T_785 = {wdata[7:0],_T_25[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_29 = _T_233 ? {{1'd0}, _T_785} : _T_26; // @[csr.scala 390:29]
  assign _T_787 = {_T_25[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_30 = _T_232 ? {{1'd0}, _T_787} : _GEN_29; // @[csr.scala 391:29]
  assign _T_790 = {wdata[7:0],_T_27[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_31 = _T_235 ? {{1'd0}, _T_790} : _T_28; // @[csr.scala 390:29]
  assign _T_792 = {_T_27[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_32 = _T_234 ? {{1'd0}, _T_792} : _GEN_31; // @[csr.scala 391:29]
  assign _T_795 = {wdata[7:0],_T_29[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_33 = _T_237 ? {{1'd0}, _T_795} : _T_30; // @[csr.scala 390:29]
  assign _T_797 = {_T_29[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_34 = _T_236 ? {{1'd0}, _T_797} : _GEN_33; // @[csr.scala 391:29]
  assign _T_800 = {wdata[7:0],_T_31[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_35 = _T_239 ? {{1'd0}, _T_800} : _T_32; // @[csr.scala 390:29]
  assign _T_802 = {_T_31[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_36 = _T_238 ? {{1'd0}, _T_802} : _GEN_35; // @[csr.scala 391:29]
  assign _T_805 = {wdata[7:0],_T_33[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_37 = _T_241 ? {{1'd0}, _T_805} : _T_34; // @[csr.scala 390:29]
  assign _T_807 = {_T_33[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_38 = _T_240 ? {{1'd0}, _T_807} : _GEN_37; // @[csr.scala 391:29]
  assign _T_810 = {wdata[7:0],_T_35[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_39 = _T_243 ? {{1'd0}, _T_810} : _T_36; // @[csr.scala 390:29]
  assign _T_812 = {_T_35[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_40 = _T_242 ? {{1'd0}, _T_812} : _GEN_39; // @[csr.scala 391:29]
  assign _T_815 = {wdata[7:0],_T_37[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_41 = _T_245 ? {{1'd0}, _T_815} : _T_38; // @[csr.scala 390:29]
  assign _T_817 = {_T_37[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_42 = _T_244 ? {{1'd0}, _T_817} : _GEN_41; // @[csr.scala 391:29]
  assign _T_820 = {wdata[7:0],_T_39[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_43 = _T_247 ? {{1'd0}, _T_820} : _T_40; // @[csr.scala 390:29]
  assign _T_822 = {_T_39[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_44 = _T_246 ? {{1'd0}, _T_822} : _GEN_43; // @[csr.scala 391:29]
  assign _T_825 = {wdata[7:0],_T_41[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_45 = _T_249 ? {{1'd0}, _T_825} : _T_42; // @[csr.scala 390:29]
  assign _T_827 = {_T_41[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_46 = _T_248 ? {{1'd0}, _T_827} : _GEN_45; // @[csr.scala 391:29]
  assign _T_830 = {wdata[7:0],_T_43[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_47 = _T_251 ? {{1'd0}, _T_830} : _T_44; // @[csr.scala 390:29]
  assign _T_832 = {_T_43[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_48 = _T_250 ? {{1'd0}, _T_832} : _GEN_47; // @[csr.scala 391:29]
  assign _T_835 = {wdata[7:0],_T_45[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_49 = _T_253 ? {{1'd0}, _T_835} : _T_46; // @[csr.scala 390:29]
  assign _T_837 = {_T_45[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_50 = _T_252 ? {{1'd0}, _T_837} : _GEN_49; // @[csr.scala 391:29]
  assign _T_840 = {wdata[7:0],_T_47[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_51 = _T_255 ? {{1'd0}, _T_840} : _T_48; // @[csr.scala 390:29]
  assign _T_842 = {_T_47[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_52 = _T_254 ? {{1'd0}, _T_842} : _GEN_51; // @[csr.scala 391:29]
  assign _T_845 = {wdata[7:0],_T_49[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_53 = _T_257 ? {{1'd0}, _T_845} : _T_50; // @[csr.scala 390:29]
  assign _T_847 = {_T_49[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_54 = _T_256 ? {{1'd0}, _T_847} : _GEN_53; // @[csr.scala 391:29]
  assign _T_850 = {wdata[7:0],_T_51[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_55 = _T_259 ? {{1'd0}, _T_850} : _T_52; // @[csr.scala 390:29]
  assign _T_852 = {_T_51[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_56 = _T_258 ? {{1'd0}, _T_852} : _GEN_55; // @[csr.scala 391:29]
  assign _T_855 = {wdata[7:0],_T_53[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_57 = _T_261 ? {{1'd0}, _T_855} : _T_54; // @[csr.scala 390:29]
  assign _T_857 = {_T_53[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_58 = _T_260 ? {{1'd0}, _T_857} : _GEN_57; // @[csr.scala 391:29]
  assign _T_860 = {wdata[7:0],_T_55[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_59 = _T_263 ? {{1'd0}, _T_860} : _T_56; // @[csr.scala 390:29]
  assign _T_862 = {_T_55[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_60 = _T_262 ? {{1'd0}, _T_862} : _GEN_59; // @[csr.scala 391:29]
  assign _T_865 = {wdata[7:0],_T_57[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_61 = _T_265 ? {{1'd0}, _T_865} : _T_58; // @[csr.scala 390:29]
  assign _T_867 = {_T_57[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_62 = _T_264 ? {{1'd0}, _T_867} : _GEN_61; // @[csr.scala 391:29]
  assign _T_870 = {wdata[7:0],_T_59[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_63 = _T_267 ? {{1'd0}, _T_870} : _T_60; // @[csr.scala 390:29]
  assign _T_872 = {_T_59[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_64 = _T_266 ? {{1'd0}, _T_872} : _GEN_63; // @[csr.scala 391:29]
  assign _T_875 = {wdata[7:0],_T_61[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_65 = _T_269 ? {{1'd0}, _T_875} : _T_62; // @[csr.scala 390:29]
  assign _T_877 = {_T_61[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_66 = _T_268 ? {{1'd0}, _T_877} : _GEN_65; // @[csr.scala 391:29]
  assign _T_880 = {wdata[7:0],_T_63[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_67 = _T_271 ? {{1'd0}, _T_880} : _T_64; // @[csr.scala 390:29]
  assign _T_882 = {_T_63[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_68 = _T_270 ? {{1'd0}, _T_882} : _GEN_67; // @[csr.scala 391:29]
  assign _T_885 = {wdata[7:0],_T_65[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_69 = _T_273 ? {{1'd0}, _T_885} : _T_66; // @[csr.scala 390:29]
  assign _T_887 = {_T_65[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_70 = _T_272 ? {{1'd0}, _T_887} : _GEN_69; // @[csr.scala 391:29]
  assign _T_890 = {wdata[7:0],_T_67[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_71 = _T_275 ? {{1'd0}, _T_890} : _T_68; // @[csr.scala 390:29]
  assign _T_892 = {_T_67[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_72 = _T_274 ? {{1'd0}, _T_892} : _GEN_71; // @[csr.scala 391:29]
  assign _T_895 = {wdata[7:0],_T_69[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_73 = _T_277 ? {{1'd0}, _T_895} : _T_70; // @[csr.scala 390:29]
  assign _T_897 = {_T_69[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_74 = _T_276 ? {{1'd0}, _T_897} : _GEN_73; // @[csr.scala 391:29]
  assign _T_900 = {wdata[7:0],_T_71[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_75 = _T_279 ? {{1'd0}, _T_900} : _T_72; // @[csr.scala 390:29]
  assign _T_902 = {_T_71[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_76 = _T_278 ? {{1'd0}, _T_902} : _GEN_75; // @[csr.scala 391:29]
  assign _T_905 = {wdata[7:0],_T_73[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_77 = _T_281 ? {{1'd0}, _T_905} : _T_74; // @[csr.scala 390:29]
  assign _T_907 = {_T_73[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_78 = _T_280 ? {{1'd0}, _T_907} : _GEN_77; // @[csr.scala 391:29]
  assign _T_910 = {wdata[7:0],_T_75[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_79 = _T_283 ? {{1'd0}, _T_910} : _T_76; // @[csr.scala 390:29]
  assign _T_912 = {_T_75[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_80 = _T_282 ? {{1'd0}, _T_912} : _GEN_79; // @[csr.scala 391:29]
  assign _T_915 = {wdata[7:0],_T_77[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_81 = _T_285 ? {{1'd0}, _T_915} : _T_78; // @[csr.scala 390:29]
  assign _T_917 = {_T_77[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_82 = _T_284 ? {{1'd0}, _T_917} : _GEN_81; // @[csr.scala 391:29]
  assign _T_920 = {wdata[7:0],_T_79[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_83 = _T_287 ? {{1'd0}, _T_920} : _T_80; // @[csr.scala 390:29]
  assign _T_922 = {_T_79[39:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_84 = _T_286 ? {{1'd0}, _T_922} : _GEN_83; // @[csr.scala 391:29]
  assign _T_925 = {wdata,_T_9[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_85 = _T_288 ? _T_925 : {{57'd0}, _T_4}; // @[csr.scala 390:29]
  assign _T_928 = {_T_9[63:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_87 = _T_205 ? _T_928 : _GEN_85; // @[csr.scala 391:29]
  assign _T_932 = {wdata,_T_16[31:0]}; // @[Cat.scala 29:58]
  assign _GEN_89 = _T_289 ? _T_932 : {{57'd0}, _T_11}; // @[csr.scala 390:29]
  assign _T_935 = {_T_16[63:32],wdata}; // @[Cat.scala 29:58]
  assign _GEN_91 = _T_206 ? _T_935 : _GEN_89; // @[csr.scala 391:29]
  assign _T_938 = {{2'd0}, wdata[31:2]}; // @[csr.scala 372:78]
  assign _GEN_230 = {_T_938, 2'h0}; // @[csr.scala 372:86]
  assign _T_939 = {{1'd0}, _GEN_230}; // @[csr.scala 372:86]
  assign _GEN_95 = _T_216 ? _T_939 : {{3'd0}, _GEN_13}; // @[csr.scala 372:40]
  assign _T_940 = wdata & 32'h8000001f; // @[csr.scala 374:62]
  assign _GEN_107 = wen ? _GEN_22 : _T_18; // @[csr.scala 335:14]
  assign _GEN_108 = wen ? _GEN_24 : _T_20; // @[csr.scala 335:14]
  assign _GEN_109 = wen ? _GEN_26 : _T_22; // @[csr.scala 335:14]
  assign _GEN_110 = wen ? _GEN_28 : _T_24; // @[csr.scala 335:14]
  assign _GEN_111 = wen ? _GEN_30 : _T_26; // @[csr.scala 335:14]
  assign _GEN_112 = wen ? _GEN_32 : _T_28; // @[csr.scala 335:14]
  assign _GEN_113 = wen ? _GEN_34 : _T_30; // @[csr.scala 335:14]
  assign _GEN_114 = wen ? _GEN_36 : _T_32; // @[csr.scala 335:14]
  assign _GEN_115 = wen ? _GEN_38 : _T_34; // @[csr.scala 335:14]
  assign _GEN_116 = wen ? _GEN_40 : _T_36; // @[csr.scala 335:14]
  assign _GEN_117 = wen ? _GEN_42 : _T_38; // @[csr.scala 335:14]
  assign _GEN_118 = wen ? _GEN_44 : _T_40; // @[csr.scala 335:14]
  assign _GEN_119 = wen ? _GEN_46 : _T_42; // @[csr.scala 335:14]
  assign _GEN_120 = wen ? _GEN_48 : _T_44; // @[csr.scala 335:14]
  assign _GEN_121 = wen ? _GEN_50 : _T_46; // @[csr.scala 335:14]
  assign _GEN_122 = wen ? _GEN_52 : _T_48; // @[csr.scala 335:14]
  assign _GEN_123 = wen ? _GEN_54 : _T_50; // @[csr.scala 335:14]
  assign _GEN_124 = wen ? _GEN_56 : _T_52; // @[csr.scala 335:14]
  assign _GEN_125 = wen ? _GEN_58 : _T_54; // @[csr.scala 335:14]
  assign _GEN_126 = wen ? _GEN_60 : _T_56; // @[csr.scala 335:14]
  assign _GEN_127 = wen ? _GEN_62 : _T_58; // @[csr.scala 335:14]
  assign _GEN_128 = wen ? _GEN_64 : _T_60; // @[csr.scala 335:14]
  assign _GEN_129 = wen ? _GEN_66 : _T_62; // @[csr.scala 335:14]
  assign _GEN_130 = wen ? _GEN_68 : _T_64; // @[csr.scala 335:14]
  assign _GEN_131 = wen ? _GEN_70 : _T_66; // @[csr.scala 335:14]
  assign _GEN_132 = wen ? _GEN_72 : _T_68; // @[csr.scala 335:14]
  assign _GEN_133 = wen ? _GEN_74 : _T_70; // @[csr.scala 335:14]
  assign _GEN_134 = wen ? _GEN_76 : _T_72; // @[csr.scala 335:14]
  assign _GEN_135 = wen ? _GEN_78 : _T_74; // @[csr.scala 335:14]
  assign _GEN_136 = wen ? _GEN_80 : _T_76; // @[csr.scala 335:14]
  assign _GEN_137 = wen ? _GEN_82 : _T_78; // @[csr.scala 335:14]
  assign _GEN_138 = wen ? _GEN_84 : _T_80; // @[csr.scala 335:14]
  assign _GEN_139 = wen ? _GEN_87 : {{57'd0}, _T_4}; // @[csr.scala 335:14]
  assign _GEN_141 = wen ? _GEN_91 : {{57'd0}, _T_11}; // @[csr.scala 335:14]
  assign _GEN_145 = wen ? _GEN_95 : {{3'd0}, _GEN_13}; // @[csr.scala 335:14]
  assign io_rw_rdata = _T_681[31:0]; // @[csr.scala 333:15]
  assign io_eret = _T_497 | insn_ret; // @[csr.scala 282:11]
  assign io_status_debug = 1'h0; // @[csr.scala 280:13]
  assign io_status_prv = 2'h3; // @[csr.scala 280:13]
  assign io_status_sd = 1'h0; // @[csr.scala 280:13]
  assign io_status_zero1 = 8'h0; // @[csr.scala 280:13]
  assign io_status_tsr = 1'h0; // @[csr.scala 280:13]
  assign io_status_tw = 1'h0; // @[csr.scala 280:13]
  assign io_status_tvm = 1'h0; // @[csr.scala 280:13]
  assign io_status_mxr = 1'h0; // @[csr.scala 280:13]
  assign io_status_sum = 1'h0; // @[csr.scala 280:13]
  assign io_status_mprv = 1'h0; // @[csr.scala 280:13]
  assign io_status_xs = 2'h0; // @[csr.scala 280:13]
  assign io_status_fs = 2'h0; // @[csr.scala 280:13]
  assign io_status_mpp = 2'h3; // @[csr.scala 280:13]
  assign io_status_hpp = 2'h0; // @[csr.scala 280:13]
  assign io_status_spp = 1'h0; // @[csr.scala 280:13]
  assign io_status_mpie = reg_mstatus_mpie; // @[csr.scala 280:13]
  assign io_status_hpie = 1'h0; // @[csr.scala 280:13]
  assign io_status_spie = 1'h0; // @[csr.scala 280:13]
  assign io_status_upie = 1'h0; // @[csr.scala 280:13]
  assign io_status_mie = reg_mstatus_mie; // @[csr.scala 280:13]
  assign io_status_hie = 1'h0; // @[csr.scala 280:13]
  assign io_status_sie = 1'h0; // @[csr.scala 280:13]
  assign io_status_uie = 1'h0; // @[csr.scala 280:13]
  assign io_evec = _T_510 ? reg_mepc : _GEN_6; // @[csr.scala 298:11 csr.scala 304:13 csr.scala 312:13]
  assign io_time = _T_9[31:0]; // @[csr.scala 329:11]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_mstatus_mpie = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  reg_mstatus_mie = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  reg_mepc = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  reg_mcause = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  reg_mtval = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  reg_mscratch = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  reg_medeleg = _RAND_6[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  reg_mip_mtip = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  reg_mip_msip = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  reg_mie_mtip = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  reg_mie_msip = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_3 = _RAND_11[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {2{`RANDOM}};
  _T_5 = _RAND_12[57:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_10 = _RAND_13[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {2{`RANDOM}};
  _T_12 = _RAND_14[57:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {2{`RANDOM}};
  _T_17 = _RAND_15[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {2{`RANDOM}};
  _T_19 = _RAND_16[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {2{`RANDOM}};
  _T_21 = _RAND_17[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {2{`RANDOM}};
  _T_23 = _RAND_18[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {2{`RANDOM}};
  _T_25 = _RAND_19[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {2{`RANDOM}};
  _T_27 = _RAND_20[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {2{`RANDOM}};
  _T_29 = _RAND_21[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {2{`RANDOM}};
  _T_31 = _RAND_22[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {2{`RANDOM}};
  _T_33 = _RAND_23[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {2{`RANDOM}};
  _T_35 = _RAND_24[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {2{`RANDOM}};
  _T_37 = _RAND_25[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {2{`RANDOM}};
  _T_39 = _RAND_26[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {2{`RANDOM}};
  _T_41 = _RAND_27[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {2{`RANDOM}};
  _T_43 = _RAND_28[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {2{`RANDOM}};
  _T_45 = _RAND_29[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {2{`RANDOM}};
  _T_47 = _RAND_30[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {2{`RANDOM}};
  _T_49 = _RAND_31[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {2{`RANDOM}};
  _T_51 = _RAND_32[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {2{`RANDOM}};
  _T_53 = _RAND_33[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {2{`RANDOM}};
  _T_55 = _RAND_34[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {2{`RANDOM}};
  _T_57 = _RAND_35[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {2{`RANDOM}};
  _T_59 = _RAND_36[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {2{`RANDOM}};
  _T_61 = _RAND_37[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {2{`RANDOM}};
  _T_63 = _RAND_38[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {2{`RANDOM}};
  _T_65 = _RAND_39[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {2{`RANDOM}};
  _T_67 = _RAND_40[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {2{`RANDOM}};
  _T_69 = _RAND_41[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {2{`RANDOM}};
  _T_71 = _RAND_42[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {2{`RANDOM}};
  _T_73 = _RAND_43[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {2{`RANDOM}};
  _T_75 = _RAND_44[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {2{`RANDOM}};
  _T_77 = _RAND_45[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {2{`RANDOM}};
  _T_79 = _RAND_46[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  reg_dpc = _RAND_47[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  reg_dscratch = _RAND_48[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  reg_dcsr_ebreakm = _RAND_49[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  reg_dcsr_step = _RAND_50[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      reg_mstatus_mpie <= 1'h0;
    end else if (wen) begin
      if (_T_211) begin
        reg_mstatus_mpie <= _T_703[7];
      end else begin
        reg_mstatus_mpie <= _GEN_8;
      end
    end else begin
      reg_mstatus_mpie <= _GEN_8;
    end
    if (reset) begin
      reg_mstatus_mie <= 1'h0;
    end else if (wen) begin
      if (_T_211) begin
        reg_mstatus_mie <= _T_703[3];
      end else if (_T_510) begin
        reg_mstatus_mie <= reg_mstatus_mpie;
      end
    end else if (_T_510) begin
      reg_mstatus_mie <= reg_mstatus_mpie;
    end
    reg_mepc <= _GEN_145[31:0];
    if (wen) begin
      if (_T_218) begin
        reg_mcause <= _T_940;
      end else if (insn_break) begin
        reg_mcause <= 32'h3;
      end else if (insn_call) begin
        reg_mcause <= 32'hb;
      end else if (io_exception) begin
        reg_mcause <= 32'h2;
      end
    end else if (insn_break) begin
      reg_mcause <= 32'h3;
    end else if (insn_call) begin
      reg_mcause <= 32'hb;
    end else if (io_exception) begin
      reg_mcause <= 32'h2;
    end
    if (wen) begin
      if (_T_217) begin
        reg_mtval <= wdata;
      end
    end
    if (wen) begin
      if (_T_215) begin
        reg_mscratch <= wdata;
      end
    end
    if (wen) begin
      if (_T_223) begin
        reg_medeleg <= wdata;
      end
    end
    if (reset) begin
      reg_mip_mtip <= 1'h0;
    end else begin
      reg_mip_mtip <= 1'h1;
    end
    if (reset) begin
      reg_mip_msip <= 1'h0;
    end else if (wen) begin
      if (_T_213) begin
        reg_mip_msip <= wdata[3];
      end
    end
    if (reset) begin
      reg_mie_mtip <= 1'h0;
    end else if (wen) begin
      if (_T_214) begin
        reg_mie_mtip <= wdata[7];
      end
    end
    if (reset) begin
      reg_mie_msip <= 1'h0;
    end else if (wen) begin
      if (_T_214) begin
        reg_mie_msip <= wdata[3];
      end
    end
    if (reset) begin
      _T_3 <= 6'h0;
    end else begin
      _T_3 <= _GEN_139[5:0];
    end
    if (reset) begin
      _T_5 <= 58'h0;
    end else if (wen) begin
      if (_T_205) begin
        _T_5 <= _T_928[63:6];
      end else if (_T_288) begin
        _T_5 <= _T_925[63:6];
      end else if (_T_4[6]) begin
        _T_5 <= _T_8;
      end
    end else if (_T_4[6]) begin
      _T_5 <= _T_8;
    end
    if (reset) begin
      _T_10 <= 6'h0;
    end else begin
      _T_10 <= _GEN_141[5:0];
    end
    if (reset) begin
      _T_12 <= 58'h0;
    end else if (wen) begin
      if (_T_206) begin
        _T_12 <= _T_935[63:6];
      end else if (_T_289) begin
        _T_12 <= _T_932[63:6];
      end else if (_T_11[6]) begin
        _T_12 <= _T_15;
      end
    end else if (_T_11[6]) begin
      _T_12 <= _T_15;
    end
    _T_17 <= _GEN_107[39:0];
    _T_19 <= _GEN_108[39:0];
    _T_21 <= _GEN_109[39:0];
    _T_23 <= _GEN_110[39:0];
    _T_25 <= _GEN_111[39:0];
    _T_27 <= _GEN_112[39:0];
    _T_29 <= _GEN_113[39:0];
    _T_31 <= _GEN_114[39:0];
    _T_33 <= _GEN_115[39:0];
    _T_35 <= _GEN_116[39:0];
    _T_37 <= _GEN_117[39:0];
    _T_39 <= _GEN_118[39:0];
    _T_41 <= _GEN_119[39:0];
    _T_43 <= _GEN_120[39:0];
    _T_45 <= _GEN_121[39:0];
    _T_47 <= _GEN_122[39:0];
    _T_49 <= _GEN_123[39:0];
    _T_51 <= _GEN_124[39:0];
    _T_53 <= _GEN_125[39:0];
    _T_55 <= _GEN_126[39:0];
    _T_57 <= _GEN_127[39:0];
    _T_59 <= _GEN_128[39:0];
    _T_61 <= _GEN_129[39:0];
    _T_63 <= _GEN_130[39:0];
    _T_65 <= _GEN_131[39:0];
    _T_67 <= _GEN_132[39:0];
    _T_69 <= _GEN_133[39:0];
    _T_71 <= _GEN_134[39:0];
    _T_73 <= _GEN_135[39:0];
    _T_75 <= _GEN_136[39:0];
    _T_77 <= _GEN_137[39:0];
    _T_79 <= _GEN_138[39:0];
    if (wen) begin
      if (_T_221) begin
        reg_dpc <= wdata;
      end
    end
    if (wen) begin
      if (_T_222) begin
        reg_dscratch <= wdata;
      end
    end
    if (reset) begin
      reg_dcsr_ebreakm <= 1'h0;
    end else if (wen) begin
      if (_T_220) begin
        reg_dcsr_ebreakm <= wdata[15];
      end
    end
    if (reset) begin
      reg_dcsr_step <= 1'h0;
    end else if (wen) begin
      if (_T_220) begin
        reg_dcsr_step <= wdata[2];
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_504) begin
          $fwrite(32'h80000002,"Assertion failed: these conditions must be mutually exclusive\n    at csr.scala:290 assert(PopCount(insn_ret :: io.exception :: Nil) <= 1, \"these conditions must be mutually exclusive\")\n"); // @[csr.scala 290:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_504) begin
          $fatal; // @[csr.scala 290:9]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module DatPath(
  input         clock,
  input         reset,
  input  [4:0]  io_ddpath_addr,
  input  [31:0] io_ddpath_wdata,
  output [31:0] io_ddpath_rdata,
  output [31:0] io_imem_req_bits_addr,
  input  [31:0] io_imem_resp_bits_data,
  output        io_dmem_req_valid,
  output [31:0] io_dmem_req_bits_addr,
  output [31:0] io_dmem_req_bits_data,
  output        io_dmem_req_bits_fcn,
  output [2:0]  io_dmem_req_bits_typ,
  input  [31:0] io_dmem_resp_bits_data,
  input         io_ctl_dec_stall,
  input         io_ctl_full_stall,
  input  [1:0]  io_ctl_exe_pc_sel,
  input  [3:0]  io_ctl_br_type,
  input         io_ctl_if_kill,
  input         io_ctl_dec_kill,
  input  [1:0]  io_ctl_op1_sel,
  input  [2:0]  io_ctl_op2_sel,
  input  [3:0]  io_ctl_alu_fun,
  input  [1:0]  io_ctl_wb_sel,
  input         io_ctl_rf_wen,
  input         io_ctl_mem_val,
  input  [1:0]  io_ctl_mem_fcn,
  input  [2:0]  io_ctl_mem_typ,
  input  [2:0]  io_ctl_csr_cmd,
  input         io_ctl_fencei,
  input         io_ctl_pipeline_kill,
  input         io_ctl_mem_exception,
  output [31:0] io_dat_dec_inst,
  output        io_dat_exe_br_eq,
  output        io_dat_exe_br_lt,
  output        io_dat_exe_br_ltu,
  output [3:0]  io_dat_exe_br_type,
  output        io_dat_mem_ctrl_dmem_val,
  output        io_dat_csr_eret
);
  wire  regfile_clock; // @[dpath.scala 164:24]
  wire [4:0] regfile_io_rs1_addr; // @[dpath.scala 164:24]
  wire [31:0] regfile_io_rs1_data; // @[dpath.scala 164:24]
  wire [4:0] regfile_io_rs2_addr; // @[dpath.scala 164:24]
  wire [31:0] regfile_io_rs2_data; // @[dpath.scala 164:24]
  wire [4:0] regfile_io_dm_addr; // @[dpath.scala 164:24]
  wire [31:0] regfile_io_dm_rdata; // @[dpath.scala 164:24]
  wire [31:0] regfile_io_dm_wdata; // @[dpath.scala 164:24]
  wire [4:0] regfile_io_waddr; // @[dpath.scala 164:24]
  wire [31:0] regfile_io_wdata; // @[dpath.scala 164:24]
  wire  regfile_io_wen; // @[dpath.scala 164:24]
  wire  csr_clock; // @[dpath.scala 368:20]
  wire  csr_reset; // @[dpath.scala 368:20]
  wire [2:0] csr_io_rw_cmd; // @[dpath.scala 368:20]
  wire [31:0] csr_io_rw_rdata; // @[dpath.scala 368:20]
  wire [31:0] csr_io_rw_wdata; // @[dpath.scala 368:20]
  wire  csr_io_eret; // @[dpath.scala 368:20]
  wire [11:0] csr_io_decode_csr; // @[dpath.scala 368:20]
  wire  csr_io_status_debug; // @[dpath.scala 368:20]
  wire [1:0] csr_io_status_prv; // @[dpath.scala 368:20]
  wire  csr_io_status_sd; // @[dpath.scala 368:20]
  wire [7:0] csr_io_status_zero1; // @[dpath.scala 368:20]
  wire  csr_io_status_tsr; // @[dpath.scala 368:20]
  wire  csr_io_status_tw; // @[dpath.scala 368:20]
  wire  csr_io_status_tvm; // @[dpath.scala 368:20]
  wire  csr_io_status_mxr; // @[dpath.scala 368:20]
  wire  csr_io_status_sum; // @[dpath.scala 368:20]
  wire  csr_io_status_mprv; // @[dpath.scala 368:20]
  wire [1:0] csr_io_status_xs; // @[dpath.scala 368:20]
  wire [1:0] csr_io_status_fs; // @[dpath.scala 368:20]
  wire [1:0] csr_io_status_mpp; // @[dpath.scala 368:20]
  wire [1:0] csr_io_status_hpp; // @[dpath.scala 368:20]
  wire  csr_io_status_spp; // @[dpath.scala 368:20]
  wire  csr_io_status_mpie; // @[dpath.scala 368:20]
  wire  csr_io_status_hpie; // @[dpath.scala 368:20]
  wire  csr_io_status_spie; // @[dpath.scala 368:20]
  wire  csr_io_status_upie; // @[dpath.scala 368:20]
  wire  csr_io_status_mie; // @[dpath.scala 368:20]
  wire  csr_io_status_hie; // @[dpath.scala 368:20]
  wire  csr_io_status_sie; // @[dpath.scala 368:20]
  wire  csr_io_status_uie; // @[dpath.scala 368:20]
  wire [31:0] csr_io_evec; // @[dpath.scala 368:20]
  wire  csr_io_exception; // @[dpath.scala 368:20]
  wire  csr_io_retire; // @[dpath.scala 368:20]
  wire [31:0] csr_io_pc; // @[dpath.scala 368:20]
  wire [31:0] csr_io_time; // @[dpath.scala 368:20]
  reg [31:0] if_reg_pc; // @[dpath.scala 52:39]
  reg [31:0] _RAND_0;
  reg  dec_reg_valid; // @[dpath.scala 55:39]
  reg [31:0] _RAND_1;
  reg [31:0] dec_reg_inst; // @[dpath.scala 56:39]
  reg [31:0] _RAND_2;
  reg [31:0] dec_reg_pc; // @[dpath.scala 57:39]
  reg [31:0] _RAND_3;
  reg  exe_reg_valid; // @[dpath.scala 60:39]
  reg [31:0] _RAND_4;
  reg [31:0] exe_reg_inst; // @[dpath.scala 61:39]
  reg [31:0] _RAND_5;
  reg [31:0] exe_reg_pc; // @[dpath.scala 62:39]
  reg [31:0] _RAND_6;
  reg [4:0] exe_reg_wbaddr; // @[dpath.scala 63:35]
  reg [31:0] _RAND_7;
  reg [4:0] exe_reg_rs1_addr; // @[dpath.scala 64:35]
  reg [31:0] _RAND_8;
  reg [4:0] exe_reg_rs2_addr; // @[dpath.scala 65:35]
  reg [31:0] _RAND_9;
  reg [31:0] exe_alu_op1; // @[dpath.scala 66:35]
  reg [31:0] _RAND_10;
  reg [31:0] brjmp_offset; // @[dpath.scala 67:35]
  reg [31:0] _RAND_11;
  reg [31:0] exe_reg_rs2_data; // @[dpath.scala 68:35]
  reg [31:0] _RAND_12;
  reg [3:0] exe_reg_ctrl_br_type; // @[dpath.scala 69:39]
  reg [31:0] _RAND_13;
  reg [3:0] exe_reg_ctrl_alu_fun; // @[dpath.scala 71:35]
  reg [31:0] _RAND_14;
  reg [1:0] exe_reg_ctrl_wb_sel; // @[dpath.scala 72:35]
  reg [31:0] _RAND_15;
  reg  exe_reg_ctrl_rf_wen; // @[dpath.scala 73:39]
  reg [31:0] _RAND_16;
  reg  exe_reg_ctrl_mem_val; // @[dpath.scala 74:39]
  reg [31:0] _RAND_17;
  reg  exe_reg_ctrl_mem_fcn; // @[dpath.scala 75:39]
  reg [31:0] _RAND_18;
  reg [2:0] exe_reg_ctrl_mem_typ; // @[dpath.scala 76:39]
  reg [31:0] _RAND_19;
  reg [2:0] exe_reg_ctrl_csr_cmd; // @[dpath.scala 77:39]
  reg [31:0] _RAND_20;
  reg  mem_reg_valid; // @[dpath.scala 80:39]
  reg [31:0] _RAND_21;
  reg [31:0] mem_reg_pc; // @[dpath.scala 81:35]
  reg [31:0] _RAND_22;
  reg [31:0] mem_reg_inst; // @[dpath.scala 82:35]
  reg [31:0] _RAND_23;
  reg [31:0] mem_reg_alu_out; // @[dpath.scala 83:35]
  reg [31:0] _RAND_24;
  reg [4:0] mem_reg_wbaddr; // @[dpath.scala 84:35]
  reg [31:0] _RAND_25;
  reg [4:0] mem_reg_rs1_addr; // @[dpath.scala 85:35]
  reg [31:0] _RAND_26;
  reg [4:0] mem_reg_rs2_addr; // @[dpath.scala 86:35]
  reg [31:0] _RAND_27;
  reg [31:0] mem_reg_op1_data; // @[dpath.scala 87:35]
  reg [31:0] _RAND_28;
  reg [31:0] mem_reg_op2_data; // @[dpath.scala 88:35]
  reg [31:0] _RAND_29;
  reg [31:0] mem_reg_rs2_data; // @[dpath.scala 89:35]
  reg [31:0] _RAND_30;
  reg  mem_reg_ctrl_rf_wen; // @[dpath.scala 90:39]
  reg [31:0] _RAND_31;
  reg  mem_reg_ctrl_mem_val; // @[dpath.scala 91:39]
  reg [31:0] _RAND_32;
  reg  mem_reg_ctrl_mem_fcn; // @[dpath.scala 92:39]
  reg [31:0] _RAND_33;
  reg [2:0] mem_reg_ctrl_mem_typ; // @[dpath.scala 93:39]
  reg [31:0] _RAND_34;
  reg [1:0] mem_reg_ctrl_wb_sel; // @[dpath.scala 94:35]
  reg [31:0] _RAND_35;
  reg [2:0] mem_reg_ctrl_csr_cmd; // @[dpath.scala 95:39]
  reg [31:0] _RAND_36;
  reg  wb_reg_valid; // @[dpath.scala 98:39]
  reg [31:0] _RAND_37;
  reg [4:0] wb_reg_wbaddr; // @[dpath.scala 99:35]
  reg [31:0] _RAND_38;
  reg [31:0] wb_reg_wbdata; // @[dpath.scala 100:35]
  reg [31:0] _RAND_39;
  reg  wb_reg_ctrl_rf_wen; // @[dpath.scala 101:39]
  reg [31:0] _RAND_40;
  wire  _T; // @[dpath.scala 111:11]
  wire  _T_1; // @[dpath.scala 111:32]
  wire  _T_2; // @[dpath.scala 111:29]
  wire  _T_3; // @[dpath.scala 111:52]
  wire  _T_11; // @[dpath.scala 124:45]
  wire  _T_12; // @[dpath.scala 124:24]
  wire  _T_14; // @[dpath.scala 124:54]
  wire  _T_16; // @[dpath.scala 125:28]
  wire  _T_17; // @[dpath.scala 125:53]
  wire  _T_18; // @[dpath.scala 125:50]
  wire [31:0] if_pc_plus4; // @[dpath.scala 116:33]
  wire  _T_6; // @[dpath.scala 119:40]
  wire [31:0] exe_brjmp_target; // @[dpath.scala 330:38]
  wire  _T_7; // @[dpath.scala 120:40]
  wire [31:0] exe_adder_out; // @[dpath.scala 310:37]
  wire [31:0] exception_target; // @[dpath.scala 109:34 dpath.scala 377:21]
  wire [4:0] dec_rs1_addr; // @[dpath.scala 158:35]
  wire [4:0] dec_rs2_addr; // @[dpath.scala 159:35]
  wire [4:0] dec_wbaddr; // @[dpath.scala 160:35]
  wire [11:0] imm_itype; // @[dpath.scala 181:33]
  wire [11:0] imm_stype; // @[Cat.scala 29:58]
  wire [11:0] imm_sbtype; // @[Cat.scala 29:58]
  wire [19:0] imm_utype; // @[dpath.scala 184:33]
  wire [19:0] imm_ujtype; // @[Cat.scala 29:58]
  wire [31:0] imm_z; // @[Cat.scala 29:58]
  wire [19:0] _T_40; // @[Bitwise.scala 72:12]
  wire [31:0] imm_itype_sext; // @[Cat.scala 29:58]
  wire [19:0] _T_43; // @[Bitwise.scala 72:12]
  wire [31:0] imm_stype_sext; // @[Cat.scala 29:58]
  wire [18:0] _T_46; // @[Bitwise.scala 72:12]
  wire [31:0] imm_sbtype_sext; // @[Cat.scala 29:58]
  wire [31:0] imm_utype_sext; // @[Cat.scala 29:58]
  wire [10:0] _T_51; // @[Bitwise.scala 72:12]
  wire [31:0] imm_ujtype_sext; // @[Cat.scala 29:58]
  wire  _T_53; // @[dpath.scala 198:32]
  wire  _T_54; // @[dpath.scala 199:32]
  wire  _T_55; // @[dpath.scala 200:32]
  wire  _T_56; // @[dpath.scala 201:32]
  wire  _T_57; // @[dpath.scala 202:32]
  wire  _T_58; // @[dpath.scala 203:32]
  wire  _T_64; // @[dpath.scala 243:44]
  wire  _T_65; // @[dpath.scala 244:44]
  wire  _T_69; // @[dpath.scala 251:28]
  wire  _T_70; // @[dpath.scala 251:51]
  wire [1:0] _GEN_15; // @[dpath.scala 278:7]
  wire [31:0] dec_rs2_data; // @[dpath.scala 214:27 dpath.scala 246:20]
  wire [1:0] _GEN_33; // @[dpath.scala 265:4]
  wire [1:0] _GEN_42; // @[dpath.scala 252:4]
  wire [4:0] alu_shamt; // @[dpath.scala 309:35]
  wire  _T_76; // @[dpath.scala 314:41]
  wire  _T_77; // @[dpath.scala 315:41]
  wire [31:0] _T_79; // @[dpath.scala 315:71]
  wire  _T_80; // @[dpath.scala 316:41]
  wire [31:0] _T_81; // @[dpath.scala 316:71]
  wire  _T_82; // @[dpath.scala 317:41]
  wire [31:0] _T_83; // @[dpath.scala 317:71]
  wire  _T_84; // @[dpath.scala 318:41]
  wire [31:0] _T_85; // @[dpath.scala 318:71]
  wire  _T_86; // @[dpath.scala 319:41]
  wire  _T_89; // @[dpath.scala 319:80]
  wire  _T_90; // @[dpath.scala 320:41]
  wire  _T_91; // @[dpath.scala 320:71]
  wire  _T_92; // @[dpath.scala 321:41]
  wire [62:0] _GEN_91; // @[dpath.scala 321:72]
  wire [62:0] _T_93; // @[dpath.scala 321:72]
  wire  _T_95; // @[dpath.scala 322:41]
  wire [31:0] _T_98; // @[dpath.scala 322:100]
  wire  _T_99; // @[dpath.scala 323:41]
  wire [31:0] _T_100; // @[dpath.scala 323:71]
  wire  _T_101; // @[dpath.scala 324:41]
  wire  _T_102; // @[dpath.scala 325:41]
  wire [31:0] exe_pc_plus4; // @[dpath.scala 333:38]
  wire  _T_120; // @[dpath.scala 348:57]
  wire  _T_123; // @[dpath.scala 388:40]
  wire  _T_124; // @[dpath.scala 389:40]
  wire  _T_125; // @[dpath.scala 390:40]
  wire  _T_126; // @[dpath.scala 391:40]
  wire  _T_132; // @[dpath.scala 400:48]
  wire  _T_133; // @[dpath.scala 400:45]
  wire  _T_134; // @[dpath.scala 403:34]
  wire  _GEN_87; // @[dpath.scala 399:4]
  wire  _GEN_90; // @[dpath.scala 399:4]
  reg [31:0] wb_reg_inst; // @[dpath.scala 432:29]
  reg [31:0] _RAND_41;
  wire [31:0] _T_140; // @[dpath.scala 435:18]
  reg [31:0] _T_141; // @[dpath.scala 437:14]
  reg [31:0] _RAND_42;
  reg [4:0] _T_142; // @[dpath.scala 441:14]
  reg [31:0] _RAND_43;
  reg [31:0] _T_143; // @[dpath.scala 442:14]
  reg [31:0] _RAND_44;
  reg [4:0] _T_144; // @[dpath.scala 443:14]
  reg [31:0] _RAND_45;
  reg [31:0] _T_145; // @[dpath.scala 444:14]
  reg [31:0] _RAND_46;
  wire [7:0] _T_146; // @[Mux.scala 98:16]
  wire [7:0] _T_147; // @[Mux.scala 98:16]
  wire [7:0] _T_148; // @[Mux.scala 98:16]
  wire  _T_149; // @[Mux.scala 80:60]
  wire [7:0] _T_150; // @[Mux.scala 80:57]
  wire  _T_151; // @[Mux.scala 80:60]
  wire [7:0] _T_152; // @[Mux.scala 80:57]
  wire  _T_153; // @[Mux.scala 80:60]
  wire [7:0] _T_154; // @[Mux.scala 80:57]
  wire [7:0] _T_155; // @[dpath.scala 455:10]
  wire  _T_157; // @[dpath.scala 434:10]
  RegisterFile regfile ( // @[dpath.scala 164:24]
    .clock(regfile_clock),
    .io_rs1_addr(regfile_io_rs1_addr),
    .io_rs1_data(regfile_io_rs1_data),
    .io_rs2_addr(regfile_io_rs2_addr),
    .io_rs2_data(regfile_io_rs2_data),
    .io_dm_addr(regfile_io_dm_addr),
    .io_dm_rdata(regfile_io_dm_rdata),
    .io_dm_wdata(regfile_io_dm_wdata),
    .io_waddr(regfile_io_waddr),
    .io_wdata(regfile_io_wdata),
    .io_wen(regfile_io_wen)
  );
  CSRFile csr ( // @[dpath.scala 368:20]
    .clock(csr_clock),
    .reset(csr_reset),
    .io_rw_cmd(csr_io_rw_cmd),
    .io_rw_rdata(csr_io_rw_rdata),
    .io_rw_wdata(csr_io_rw_wdata),
    .io_eret(csr_io_eret),
    .io_decode_csr(csr_io_decode_csr),
    .io_status_debug(csr_io_status_debug),
    .io_status_prv(csr_io_status_prv),
    .io_status_sd(csr_io_status_sd),
    .io_status_zero1(csr_io_status_zero1),
    .io_status_tsr(csr_io_status_tsr),
    .io_status_tw(csr_io_status_tw),
    .io_status_tvm(csr_io_status_tvm),
    .io_status_mxr(csr_io_status_mxr),
    .io_status_sum(csr_io_status_sum),
    .io_status_mprv(csr_io_status_mprv),
    .io_status_xs(csr_io_status_xs),
    .io_status_fs(csr_io_status_fs),
    .io_status_mpp(csr_io_status_mpp),
    .io_status_hpp(csr_io_status_hpp),
    .io_status_spp(csr_io_status_spp),
    .io_status_mpie(csr_io_status_mpie),
    .io_status_hpie(csr_io_status_hpie),
    .io_status_spie(csr_io_status_spie),
    .io_status_upie(csr_io_status_upie),
    .io_status_mie(csr_io_status_mie),
    .io_status_hie(csr_io_status_hie),
    .io_status_sie(csr_io_status_sie),
    .io_status_uie(csr_io_status_uie),
    .io_evec(csr_io_evec),
    .io_exception(csr_io_exception),
    .io_retire(csr_io_retire),
    .io_pc(csr_io_pc),
    .io_time(csr_io_time)
  );
  assign _T = ~io_ctl_dec_stall; // @[dpath.scala 111:11]
  assign _T_1 = ~io_ctl_full_stall; // @[dpath.scala 111:32]
  assign _T_2 = _T & _T_1; // @[dpath.scala 111:29]
  assign _T_3 = _T_2 | io_ctl_pipeline_kill; // @[dpath.scala 111:52]
  assign _T_11 = io_ctl_exe_pc_sel == 2'h0; // @[dpath.scala 124:45]
  assign _T_12 = io_ctl_fencei & _T_11; // @[dpath.scala 124:24]
  assign _T_14 = _T_12 & _T; // @[dpath.scala 124:54]
  assign _T_16 = _T_14 & _T_1; // @[dpath.scala 125:28]
  assign _T_17 = ~io_ctl_pipeline_kill; // @[dpath.scala 125:53]
  assign _T_18 = _T_16 & _T_17; // @[dpath.scala 125:50]
  assign if_pc_plus4 = if_reg_pc + 32'h4; // @[dpath.scala 116:33]
  assign _T_6 = io_ctl_exe_pc_sel == 2'h1; // @[dpath.scala 119:40]
  assign exe_brjmp_target = exe_reg_pc + brjmp_offset; // @[dpath.scala 330:38]
  assign _T_7 = io_ctl_exe_pc_sel == 2'h2; // @[dpath.scala 120:40]
  assign exe_adder_out = exe_alu_op1 + brjmp_offset; // @[dpath.scala 310:37]
  assign exception_target = csr_io_evec; // @[dpath.scala 109:34 dpath.scala 377:21]
  assign dec_rs1_addr = dec_reg_inst[19:15]; // @[dpath.scala 158:35]
  assign dec_rs2_addr = dec_reg_inst[24:20]; // @[dpath.scala 159:35]
  assign dec_wbaddr = dec_reg_inst[11:7]; // @[dpath.scala 160:35]
  assign imm_itype = dec_reg_inst[31:20]; // @[dpath.scala 181:33]
  assign imm_stype = {dec_reg_inst[31:25],dec_wbaddr}; // @[Cat.scala 29:58]
  assign imm_sbtype = {dec_reg_inst[31],dec_reg_inst[7],dec_reg_inst[30:25],dec_reg_inst[11:8]}; // @[Cat.scala 29:58]
  assign imm_utype = dec_reg_inst[31:12]; // @[dpath.scala 184:33]
  assign imm_ujtype = {dec_reg_inst[31],dec_reg_inst[19:12],dec_reg_inst[20],dec_reg_inst[30:21]}; // @[Cat.scala 29:58]
  assign imm_z = {27'h0,dec_rs1_addr}; // @[Cat.scala 29:58]
  assign _T_40 = imm_itype[11] ? 20'hfffff : 20'h0; // @[Bitwise.scala 72:12]
  assign imm_itype_sext = {_T_40,imm_itype}; // @[Cat.scala 29:58]
  assign _T_43 = imm_stype[11] ? 20'hfffff : 20'h0; // @[Bitwise.scala 72:12]
  assign imm_stype_sext = {_T_43,dec_reg_inst[31:25],dec_wbaddr}; // @[Cat.scala 29:58]
  assign _T_46 = imm_sbtype[11] ? 19'h7ffff : 19'h0; // @[Bitwise.scala 72:12]
  assign imm_sbtype_sext = {_T_46,dec_reg_inst[31],dec_reg_inst[7],dec_reg_inst[30:25],dec_reg_inst[11:8],1'h0}; // @[Cat.scala 29:58]
  assign imm_utype_sext = {imm_utype,12'h0}; // @[Cat.scala 29:58]
  assign _T_51 = imm_ujtype[19] ? 11'h7ff : 11'h0; // @[Bitwise.scala 72:12]
  assign imm_ujtype_sext = {_T_51,dec_reg_inst[31],dec_reg_inst[19:12],dec_reg_inst[20],dec_reg_inst[30:21],1'h0}; // @[Cat.scala 29:58]
  assign _T_53 = io_ctl_op2_sel == 3'h0; // @[dpath.scala 198:32]
  assign _T_54 = io_ctl_op2_sel == 3'h1; // @[dpath.scala 199:32]
  assign _T_55 = io_ctl_op2_sel == 3'h2; // @[dpath.scala 200:32]
  assign _T_56 = io_ctl_op2_sel == 3'h3; // @[dpath.scala 201:32]
  assign _T_57 = io_ctl_op2_sel == 3'h4; // @[dpath.scala 202:32]
  assign _T_58 = io_ctl_op2_sel == 3'h5; // @[dpath.scala 203:32]
  assign _T_64 = io_ctl_op1_sel == 2'h2; // @[dpath.scala 243:44]
  assign _T_65 = io_ctl_op1_sel == 2'h1; // @[dpath.scala 244:44]
  assign _T_69 = io_ctl_dec_stall & _T_1; // @[dpath.scala 251:28]
  assign _T_70 = _T_69 | io_ctl_pipeline_kill; // @[dpath.scala 251:51]
  assign _GEN_15 = io_ctl_dec_kill ? 2'h0 : io_ctl_mem_fcn; // @[dpath.scala 278:7]
  assign dec_rs2_data = regfile_io_rs2_data; // @[dpath.scala 214:27 dpath.scala 246:20]
  assign _GEN_33 = _T_2 ? _GEN_15 : {{1'd0}, exe_reg_ctrl_mem_fcn}; // @[dpath.scala 265:4]
  assign _GEN_42 = _T_70 ? 2'h0 : _GEN_33; // @[dpath.scala 252:4]
  assign alu_shamt = brjmp_offset[4:0]; // @[dpath.scala 309:35]
  assign _T_76 = exe_reg_ctrl_alu_fun == 4'h0; // @[dpath.scala 314:41]
  assign _T_77 = exe_reg_ctrl_alu_fun == 4'h1; // @[dpath.scala 315:41]
  assign _T_79 = exe_alu_op1 - brjmp_offset; // @[dpath.scala 315:71]
  assign _T_80 = exe_reg_ctrl_alu_fun == 4'h5; // @[dpath.scala 316:41]
  assign _T_81 = exe_alu_op1 & brjmp_offset; // @[dpath.scala 316:71]
  assign _T_82 = exe_reg_ctrl_alu_fun == 4'h6; // @[dpath.scala 317:41]
  assign _T_83 = exe_alu_op1 | brjmp_offset; // @[dpath.scala 317:71]
  assign _T_84 = exe_reg_ctrl_alu_fun == 4'h7; // @[dpath.scala 318:41]
  assign _T_85 = exe_alu_op1 ^ brjmp_offset; // @[dpath.scala 318:71]
  assign _T_86 = exe_reg_ctrl_alu_fun == 4'h8; // @[dpath.scala 319:41]
  assign _T_89 = $signed(exe_alu_op1) < $signed(brjmp_offset); // @[dpath.scala 319:80]
  assign _T_90 = exe_reg_ctrl_alu_fun == 4'h9; // @[dpath.scala 320:41]
  assign _T_91 = exe_alu_op1 < brjmp_offset; // @[dpath.scala 320:71]
  assign _T_92 = exe_reg_ctrl_alu_fun == 4'h2; // @[dpath.scala 321:41]
  assign _GEN_91 = {{31'd0}, exe_alu_op1}; // @[dpath.scala 321:72]
  assign _T_93 = _GEN_91 << alu_shamt; // @[dpath.scala 321:72]
  assign _T_95 = exe_reg_ctrl_alu_fun == 4'h4; // @[dpath.scala 322:41]
  assign _T_98 = $signed(exe_alu_op1) >>> alu_shamt; // @[dpath.scala 322:100]
  assign _T_99 = exe_reg_ctrl_alu_fun == 4'h3; // @[dpath.scala 323:41]
  assign _T_100 = exe_alu_op1 >> alu_shamt; // @[dpath.scala 323:71]
  assign _T_101 = exe_reg_ctrl_alu_fun == 4'ha; // @[dpath.scala 324:41]
  assign _T_102 = exe_reg_ctrl_alu_fun == 4'hb; // @[dpath.scala 325:41]
  assign exe_pc_plus4 = exe_reg_pc + 32'h4; // @[dpath.scala 333:38]
  assign _T_120 = exe_reg_ctrl_wb_sel == 2'h2; // @[dpath.scala 348:57]
  assign _T_123 = mem_reg_ctrl_wb_sel == 2'h0; // @[dpath.scala 388:40]
  assign _T_124 = mem_reg_ctrl_wb_sel == 2'h2; // @[dpath.scala 389:40]
  assign _T_125 = mem_reg_ctrl_wb_sel == 2'h1; // @[dpath.scala 390:40]
  assign _T_126 = mem_reg_ctrl_wb_sel == 2'h3; // @[dpath.scala 391:40]
  assign _T_132 = ~io_ctl_mem_exception; // @[dpath.scala 400:48]
  assign _T_133 = mem_reg_valid & _T_132; // @[dpath.scala 400:45]
  assign _T_134 = io_ctl_mem_exception ? 1'h0 : mem_reg_ctrl_rf_wen; // @[dpath.scala 403:34]
  assign _GEN_87 = _T_1 & _T_133; // @[dpath.scala 399:4]
  assign _GEN_90 = _T_1 & _T_134; // @[dpath.scala 399:4]
  assign _T_140 = csr_io_time; // @[dpath.scala 435:18]
  assign _T_146 = io_ctl_dec_stall ? 8'h53 : 8'h20; // @[Mux.scala 98:16]
  assign _T_147 = io_ctl_full_stall ? 8'h46 : _T_146; // @[Mux.scala 98:16]
  assign _T_148 = io_ctl_pipeline_kill ? 8'h4b : _T_147; // @[Mux.scala 98:16]
  assign _T_149 = 2'h2 == io_ctl_exe_pc_sel; // @[Mux.scala 80:60]
  assign _T_150 = _T_149 ? 8'h52 : 8'h42; // @[Mux.scala 80:57]
  assign _T_151 = 2'h3 == io_ctl_exe_pc_sel; // @[Mux.scala 80:60]
  assign _T_152 = _T_151 ? 8'h45 : _T_150; // @[Mux.scala 80:57]
  assign _T_153 = 2'h0 == io_ctl_exe_pc_sel; // @[Mux.scala 80:60]
  assign _T_154 = _T_153 ? 8'h20 : _T_152; // @[Mux.scala 80:57]
  assign _T_155 = csr_io_exception ? 8'h58 : 8'h20; // @[dpath.scala 455:10]
  assign _T_157 = ~reset; // @[dpath.scala 434:10]
  assign io_ddpath_rdata = regfile_io_dm_rdata; // @[dpath.scala 175:20]
  assign io_imem_req_bits_addr = if_reg_pc; // @[dpath.scala 131:26]
  assign io_dmem_req_valid = mem_reg_ctrl_mem_val; // @[dpath.scala 426:26]
  assign io_dmem_req_bits_addr = mem_reg_alu_out; // @[dpath.scala 427:26]
  assign io_dmem_req_bits_data = mem_reg_rs2_data; // @[dpath.scala 430:26]
  assign io_dmem_req_bits_fcn = mem_reg_ctrl_mem_fcn; // @[dpath.scala 428:26]
  assign io_dmem_req_bits_typ = mem_reg_ctrl_mem_typ; // @[dpath.scala 429:26]
  assign io_dat_dec_inst = dec_reg_inst; // @[dpath.scala 417:22]
  assign io_dat_exe_br_eq = exe_alu_op1 == exe_reg_rs2_data; // @[dpath.scala 418:22]
  assign io_dat_exe_br_lt = $signed(exe_alu_op1) < $signed(exe_reg_rs2_data); // @[dpath.scala 419:22]
  assign io_dat_exe_br_ltu = exe_alu_op1 < exe_reg_rs2_data; // @[dpath.scala 420:22]
  assign io_dat_exe_br_type = exe_reg_ctrl_br_type; // @[dpath.scala 421:22]
  assign io_dat_mem_ctrl_dmem_val = mem_reg_ctrl_mem_val; // @[dpath.scala 423:29]
  assign io_dat_csr_eret = csr_io_eret; // @[dpath.scala 379:20]
  assign regfile_clock = clock;
  assign regfile_io_rs1_addr = dec_reg_inst[19:15]; // @[dpath.scala 165:24]
  assign regfile_io_rs2_addr = dec_reg_inst[24:20]; // @[dpath.scala 166:24]
  assign regfile_io_dm_addr = io_ddpath_addr; // @[dpath.scala 174:23]
  assign regfile_io_dm_wdata = io_ddpath_wdata; // @[dpath.scala 177:24]
  assign regfile_io_waddr = wb_reg_wbaddr; // @[dpath.scala 169:21]
  assign regfile_io_wdata = wb_reg_wbdata; // @[dpath.scala 170:21]
  assign regfile_io_wen = wb_reg_ctrl_rf_wen; // @[dpath.scala 171:21]
  assign csr_clock = clock;
  assign csr_reset = reset;
  assign csr_io_rw_cmd = mem_reg_ctrl_csr_cmd; // @[dpath.scala 372:20]
  assign csr_io_rw_wdata = mem_reg_alu_out; // @[dpath.scala 371:20]
  assign csr_io_decode_csr = mem_reg_inst[31:20]; // @[dpath.scala 370:23]
  assign csr_io_exception = io_ctl_mem_exception; // @[dpath.scala 375:21]
  assign csr_io_retire = wb_reg_valid; // @[dpath.scala 374:21]
  assign csr_io_pc = mem_reg_pc; // @[dpath.scala 376:21]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  if_reg_pc = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  dec_reg_valid = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  dec_reg_inst = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  dec_reg_pc = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  exe_reg_valid = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  exe_reg_inst = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  exe_reg_pc = _RAND_6[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  exe_reg_wbaddr = _RAND_7[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  exe_reg_rs1_addr = _RAND_8[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  exe_reg_rs2_addr = _RAND_9[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  exe_alu_op1 = _RAND_10[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  brjmp_offset = _RAND_11[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  exe_reg_rs2_data = _RAND_12[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  exe_reg_ctrl_br_type = _RAND_13[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  exe_reg_ctrl_alu_fun = _RAND_14[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  exe_reg_ctrl_wb_sel = _RAND_15[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  exe_reg_ctrl_rf_wen = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  exe_reg_ctrl_mem_val = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  exe_reg_ctrl_mem_fcn = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  exe_reg_ctrl_mem_typ = _RAND_19[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  exe_reg_ctrl_csr_cmd = _RAND_20[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  mem_reg_valid = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  mem_reg_pc = _RAND_22[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  mem_reg_inst = _RAND_23[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  mem_reg_alu_out = _RAND_24[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  mem_reg_wbaddr = _RAND_25[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  mem_reg_rs1_addr = _RAND_26[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  mem_reg_rs2_addr = _RAND_27[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  mem_reg_op1_data = _RAND_28[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  mem_reg_op2_data = _RAND_29[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  mem_reg_rs2_data = _RAND_30[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  mem_reg_ctrl_rf_wen = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  mem_reg_ctrl_mem_val = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  mem_reg_ctrl_mem_fcn = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  mem_reg_ctrl_mem_typ = _RAND_34[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  mem_reg_ctrl_wb_sel = _RAND_35[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  mem_reg_ctrl_csr_cmd = _RAND_36[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  wb_reg_valid = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  wb_reg_wbaddr = _RAND_38[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  wb_reg_wbdata = _RAND_39[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  wb_reg_ctrl_rf_wen = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  wb_reg_inst = _RAND_41[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  _T_141 = _RAND_42[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  _T_142 = _RAND_43[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  _T_143 = _RAND_44[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  _T_144 = _RAND_45[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  _T_145 = _RAND_46[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      if_reg_pc <= 32'h80000000;
    end else if (_T_3) begin
      if (!(_T_18)) begin
        if (_T_11) begin
          if_reg_pc <= if_pc_plus4;
        end else if (_T_6) begin
          if_reg_pc <= exe_brjmp_target;
        end else if (_T_7) begin
          if_reg_pc <= exe_adder_out;
        end else begin
          if_reg_pc <= exception_target;
        end
      end
    end
    if (reset) begin
      dec_reg_valid <= 1'h0;
    end else if (io_ctl_pipeline_kill) begin
      dec_reg_valid <= 1'h0;
    end else if (_T_2) begin
      if (io_ctl_if_kill) begin
        dec_reg_valid <= 1'h0;
      end else begin
        dec_reg_valid <= 1'h1;
      end
    end
    if (reset) begin
      dec_reg_inst <= 32'h4033;
    end else if (io_ctl_pipeline_kill) begin
      dec_reg_inst <= 32'h4033;
    end else if (_T_2) begin
      if (io_ctl_if_kill) begin
        dec_reg_inst <= 32'h4033;
      end else begin
        dec_reg_inst <= io_imem_resp_bits_data;
      end
    end
    if (reset) begin
      dec_reg_pc <= 32'h0;
    end else if (!(io_ctl_pipeline_kill)) begin
      if (_T_2) begin
        dec_reg_pc <= if_reg_pc;
      end
    end
    if (reset) begin
      exe_reg_valid <= 1'h0;
    end else if (_T_70) begin
      exe_reg_valid <= 1'h0;
    end else if (_T_2) begin
      if (io_ctl_dec_kill) begin
        exe_reg_valid <= 1'h0;
      end else begin
        exe_reg_valid <= dec_reg_valid;
      end
    end
    if (reset) begin
      exe_reg_inst <= 32'h4033;
    end else if (_T_70) begin
      exe_reg_inst <= 32'h4033;
    end else if (_T_2) begin
      if (io_ctl_dec_kill) begin
        exe_reg_inst <= 32'h4033;
      end else begin
        exe_reg_inst <= dec_reg_inst;
      end
    end
    if (reset) begin
      exe_reg_pc <= 32'h0;
    end else if (!(_T_70)) begin
      if (_T_2) begin
        exe_reg_pc <= dec_reg_pc;
      end
    end
    if (_T_70) begin
      exe_reg_wbaddr <= 5'h0;
    end else if (_T_2) begin
      if (io_ctl_dec_kill) begin
        exe_reg_wbaddr <= 5'h0;
      end else begin
        exe_reg_wbaddr <= dec_wbaddr;
      end
    end
    if (!(_T_70)) begin
      if (_T_2) begin
        exe_reg_rs1_addr <= dec_rs1_addr;
      end
    end
    if (!(_T_70)) begin
      if (_T_2) begin
        exe_reg_rs2_addr <= dec_rs2_addr;
      end
    end
    if (!(_T_70)) begin
      if (_T_2) begin
        if (_T_64) begin
          exe_alu_op1 <= imm_z;
        end else if (_T_65) begin
          exe_alu_op1 <= dec_reg_pc;
        end else begin
          exe_alu_op1 <= regfile_io_rs1_data;
        end
      end
    end
    if (!(_T_70)) begin
      if (_T_2) begin
        if (_T_53) begin
          brjmp_offset <= regfile_io_rs2_data;
        end else if (_T_54) begin
          brjmp_offset <= imm_itype_sext;
        end else if (_T_55) begin
          brjmp_offset <= imm_stype_sext;
        end else if (_T_56) begin
          brjmp_offset <= imm_sbtype_sext;
        end else if (_T_57) begin
          brjmp_offset <= imm_utype_sext;
        end else if (_T_58) begin
          brjmp_offset <= imm_ujtype_sext;
        end else begin
          brjmp_offset <= 32'h0;
        end
      end
    end
    if (!(_T_70)) begin
      if (_T_2) begin
        exe_reg_rs2_data <= dec_rs2_data;
      end
    end
    if (reset) begin
      exe_reg_ctrl_br_type <= 4'h0;
    end else if (_T_70) begin
      exe_reg_ctrl_br_type <= 4'h0;
    end else if (_T_2) begin
      if (io_ctl_dec_kill) begin
        exe_reg_ctrl_br_type <= 4'h0;
      end else begin
        exe_reg_ctrl_br_type <= io_ctl_br_type;
      end
    end
    if (!(_T_70)) begin
      if (_T_2) begin
        exe_reg_ctrl_alu_fun <= io_ctl_alu_fun;
      end
    end
    if (!(_T_70)) begin
      if (_T_2) begin
        exe_reg_ctrl_wb_sel <= io_ctl_wb_sel;
      end
    end
    if (reset) begin
      exe_reg_ctrl_rf_wen <= 1'h0;
    end else if (_T_70) begin
      exe_reg_ctrl_rf_wen <= 1'h0;
    end else if (_T_2) begin
      if (io_ctl_dec_kill) begin
        exe_reg_ctrl_rf_wen <= 1'h0;
      end else begin
        exe_reg_ctrl_rf_wen <= io_ctl_rf_wen;
      end
    end
    if (reset) begin
      exe_reg_ctrl_mem_val <= 1'h0;
    end else if (_T_70) begin
      exe_reg_ctrl_mem_val <= 1'h0;
    end else if (_T_2) begin
      if (io_ctl_dec_kill) begin
        exe_reg_ctrl_mem_val <= 1'h0;
      end else begin
        exe_reg_ctrl_mem_val <= io_ctl_mem_val;
      end
    end
    if (reset) begin
      exe_reg_ctrl_mem_fcn <= 1'h0;
    end else begin
      exe_reg_ctrl_mem_fcn <= _GEN_42[0];
    end
    if (reset) begin
      exe_reg_ctrl_mem_typ <= 3'h0;
    end else if (!(_T_70)) begin
      if (_T_2) begin
        if (!(io_ctl_dec_kill)) begin
          exe_reg_ctrl_mem_typ <= io_ctl_mem_typ;
        end
      end
    end
    if (reset) begin
      exe_reg_ctrl_csr_cmd <= 3'h0;
    end else if (_T_70) begin
      exe_reg_ctrl_csr_cmd <= 3'h0;
    end else if (_T_2) begin
      if (io_ctl_dec_kill) begin
        exe_reg_ctrl_csr_cmd <= 3'h0;
      end else begin
        exe_reg_ctrl_csr_cmd <= io_ctl_csr_cmd;
      end
    end
    if (reset) begin
      mem_reg_valid <= 1'h0;
    end else if (io_ctl_pipeline_kill) begin
      mem_reg_valid <= 1'h0;
    end else if (_T_1) begin
      mem_reg_valid <= exe_reg_valid;
    end
    if (!(io_ctl_pipeline_kill)) begin
      if (_T_1) begin
        mem_reg_pc <= exe_reg_pc;
      end
    end
    if (io_ctl_pipeline_kill) begin
      mem_reg_inst <= 32'h4033;
    end else if (_T_1) begin
      mem_reg_inst <= exe_reg_inst;
    end
    if (!(io_ctl_pipeline_kill)) begin
      if (_T_1) begin
        if (_T_120) begin
          mem_reg_alu_out <= exe_pc_plus4;
        end else if (_T_76) begin
          mem_reg_alu_out <= exe_adder_out;
        end else if (_T_77) begin
          mem_reg_alu_out <= _T_79;
        end else if (_T_80) begin
          mem_reg_alu_out <= _T_81;
        end else if (_T_82) begin
          mem_reg_alu_out <= _T_83;
        end else if (_T_84) begin
          mem_reg_alu_out <= _T_85;
        end else if (_T_86) begin
          mem_reg_alu_out <= {{31'd0}, _T_89};
        end else if (_T_90) begin
          mem_reg_alu_out <= {{31'd0}, _T_91};
        end else if (_T_92) begin
          mem_reg_alu_out <= _T_93[31:0];
        end else if (_T_95) begin
          mem_reg_alu_out <= _T_98;
        end else if (_T_99) begin
          mem_reg_alu_out <= _T_100;
        end else if (_T_101) begin
          mem_reg_alu_out <= exe_alu_op1;
        end else if (_T_102) begin
          mem_reg_alu_out <= brjmp_offset;
        end else begin
          mem_reg_alu_out <= exe_reg_inst;
        end
      end
    end
    if (!(io_ctl_pipeline_kill)) begin
      if (_T_1) begin
        mem_reg_wbaddr <= exe_reg_wbaddr;
      end
    end
    if (!(io_ctl_pipeline_kill)) begin
      if (_T_1) begin
        mem_reg_rs1_addr <= exe_reg_rs1_addr;
      end
    end
    if (!(io_ctl_pipeline_kill)) begin
      if (_T_1) begin
        mem_reg_rs2_addr <= exe_reg_rs2_addr;
      end
    end
    if (!(io_ctl_pipeline_kill)) begin
      if (_T_1) begin
        mem_reg_op1_data <= exe_alu_op1;
      end
    end
    if (!(io_ctl_pipeline_kill)) begin
      if (_T_1) begin
        mem_reg_op2_data <= brjmp_offset;
      end
    end
    if (!(io_ctl_pipeline_kill)) begin
      if (_T_1) begin
        mem_reg_rs2_data <= exe_reg_rs2_data;
      end
    end
    if (reset) begin
      mem_reg_ctrl_rf_wen <= 1'h0;
    end else if (io_ctl_pipeline_kill) begin
      mem_reg_ctrl_rf_wen <= 1'h0;
    end else if (_T_1) begin
      mem_reg_ctrl_rf_wen <= exe_reg_ctrl_rf_wen;
    end
    if (reset) begin
      mem_reg_ctrl_mem_val <= 1'h0;
    end else if (io_ctl_pipeline_kill) begin
      mem_reg_ctrl_mem_val <= 1'h0;
    end else if (_T_1) begin
      mem_reg_ctrl_mem_val <= exe_reg_ctrl_mem_val;
    end
    if (reset) begin
      mem_reg_ctrl_mem_fcn <= 1'h0;
    end else if (!(io_ctl_pipeline_kill)) begin
      if (_T_1) begin
        mem_reg_ctrl_mem_fcn <= exe_reg_ctrl_mem_fcn;
      end
    end
    if (reset) begin
      mem_reg_ctrl_mem_typ <= 3'h0;
    end else if (!(io_ctl_pipeline_kill)) begin
      if (_T_1) begin
        mem_reg_ctrl_mem_typ <= exe_reg_ctrl_mem_typ;
      end
    end
    if (!(io_ctl_pipeline_kill)) begin
      if (_T_1) begin
        mem_reg_ctrl_wb_sel <= exe_reg_ctrl_wb_sel;
      end
    end
    if (reset) begin
      mem_reg_ctrl_csr_cmd <= 3'h0;
    end else if (io_ctl_pipeline_kill) begin
      mem_reg_ctrl_csr_cmd <= 3'h0;
    end else if (_T_1) begin
      mem_reg_ctrl_csr_cmd <= exe_reg_ctrl_csr_cmd;
    end
    if (reset) begin
      wb_reg_valid <= 1'h0;
    end else begin
      wb_reg_valid <= _GEN_87;
    end
    if (_T_1) begin
      wb_reg_wbaddr <= mem_reg_wbaddr;
    end
    if (_T_1) begin
      if (_T_123) begin
        wb_reg_wbdata <= mem_reg_alu_out;
      end else if (_T_124) begin
        wb_reg_wbdata <= mem_reg_alu_out;
      end else if (_T_125) begin
        wb_reg_wbdata <= io_dmem_resp_bits_data;
      end else if (_T_126) begin
        wb_reg_wbdata <= csr_io_rw_rdata;
      end else begin
        wb_reg_wbdata <= mem_reg_alu_out;
      end
    end
    if (reset) begin
      wb_reg_ctrl_rf_wen <= 1'h0;
    end else begin
      wb_reg_ctrl_rf_wen <= _GEN_90;
    end
    wb_reg_inst <= mem_reg_inst;
    _T_141 <= mem_reg_pc;
    _T_142 <= mem_reg_rs1_addr;
    _T_143 <= mem_reg_op1_data;
    _T_144 <= mem_reg_rs2_addr;
    _T_145 <= mem_reg_op2_data;
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_157) begin
          $fwrite(32'h80000002,"Cyc= %d [%d] pc=[%x] W[r%d=%x][%d] Op1=[r%d][%x] Op2=[r%d][%x] inst=[%x] %c%c%c DASM(%x)\n",_T_140,csr_io_retire,_T_141,wb_reg_wbaddr,wb_reg_wbdata,wb_reg_ctrl_rf_wen,_T_142,_T_143,_T_144,_T_145,wb_reg_inst,_T_148,_T_154,_T_155,wb_reg_inst); // @[dpath.scala 434:10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module Core(
  input         clock,
  input         reset,
  input  [4:0]  io_ddpath_addr,
  input  [31:0] io_ddpath_wdata,
  output [31:0] io_ddpath_rdata,
  output [31:0] io_imem_req_bits_addr,
  input  [31:0] io_imem_resp_bits_data,
  output        io_dmem_req_valid,
  output [31:0] io_dmem_req_bits_addr,
  output [31:0] io_dmem_req_bits_data,
  output        io_dmem_req_bits_fcn,
  output [2:0]  io_dmem_req_bits_typ,
  input         io_dmem_resp_valid,
  input  [31:0] io_dmem_resp_bits_data
);
  wire  c_clock; // @[core.scala 22:19]
  wire  c_reset; // @[core.scala 22:19]
  wire  c_io_dmem_resp_valid; // @[core.scala 22:19]
  wire [31:0] c_io_dat_dec_inst; // @[core.scala 22:19]
  wire  c_io_dat_exe_br_eq; // @[core.scala 22:19]
  wire  c_io_dat_exe_br_lt; // @[core.scala 22:19]
  wire  c_io_dat_exe_br_ltu; // @[core.scala 22:19]
  wire [3:0] c_io_dat_exe_br_type; // @[core.scala 22:19]
  wire  c_io_dat_mem_ctrl_dmem_val; // @[core.scala 22:19]
  wire  c_io_dat_csr_eret; // @[core.scala 22:19]
  wire  c_io_ctl_dec_stall; // @[core.scala 22:19]
  wire  c_io_ctl_full_stall; // @[core.scala 22:19]
  wire [1:0] c_io_ctl_exe_pc_sel; // @[core.scala 22:19]
  wire [3:0] c_io_ctl_br_type; // @[core.scala 22:19]
  wire  c_io_ctl_if_kill; // @[core.scala 22:19]
  wire  c_io_ctl_dec_kill; // @[core.scala 22:19]
  wire [1:0] c_io_ctl_op1_sel; // @[core.scala 22:19]
  wire [2:0] c_io_ctl_op2_sel; // @[core.scala 22:19]
  wire [3:0] c_io_ctl_alu_fun; // @[core.scala 22:19]
  wire [1:0] c_io_ctl_wb_sel; // @[core.scala 22:19]
  wire  c_io_ctl_rf_wen; // @[core.scala 22:19]
  wire  c_io_ctl_mem_val; // @[core.scala 22:19]
  wire [1:0] c_io_ctl_mem_fcn; // @[core.scala 22:19]
  wire [2:0] c_io_ctl_mem_typ; // @[core.scala 22:19]
  wire [2:0] c_io_ctl_csr_cmd; // @[core.scala 22:19]
  wire  c_io_ctl_fencei; // @[core.scala 22:19]
  wire  c_io_ctl_pipeline_kill; // @[core.scala 22:19]
  wire  c_io_ctl_mem_exception; // @[core.scala 22:19]
  wire  d_clock; // @[core.scala 23:19]
  wire  d_reset; // @[core.scala 23:19]
  wire [4:0] d_io_ddpath_addr; // @[core.scala 23:19]
  wire [31:0] d_io_ddpath_wdata; // @[core.scala 23:19]
  wire [31:0] d_io_ddpath_rdata; // @[core.scala 23:19]
  wire [31:0] d_io_imem_req_bits_addr; // @[core.scala 23:19]
  wire [31:0] d_io_imem_resp_bits_data; // @[core.scala 23:19]
  wire  d_io_dmem_req_valid; // @[core.scala 23:19]
  wire [31:0] d_io_dmem_req_bits_addr; // @[core.scala 23:19]
  wire [31:0] d_io_dmem_req_bits_data; // @[core.scala 23:19]
  wire  d_io_dmem_req_bits_fcn; // @[core.scala 23:19]
  wire [2:0] d_io_dmem_req_bits_typ; // @[core.scala 23:19]
  wire [31:0] d_io_dmem_resp_bits_data; // @[core.scala 23:19]
  wire  d_io_ctl_dec_stall; // @[core.scala 23:19]
  wire  d_io_ctl_full_stall; // @[core.scala 23:19]
  wire [1:0] d_io_ctl_exe_pc_sel; // @[core.scala 23:19]
  wire [3:0] d_io_ctl_br_type; // @[core.scala 23:19]
  wire  d_io_ctl_if_kill; // @[core.scala 23:19]
  wire  d_io_ctl_dec_kill; // @[core.scala 23:19]
  wire [1:0] d_io_ctl_op1_sel; // @[core.scala 23:19]
  wire [2:0] d_io_ctl_op2_sel; // @[core.scala 23:19]
  wire [3:0] d_io_ctl_alu_fun; // @[core.scala 23:19]
  wire [1:0] d_io_ctl_wb_sel; // @[core.scala 23:19]
  wire  d_io_ctl_rf_wen; // @[core.scala 23:19]
  wire  d_io_ctl_mem_val; // @[core.scala 23:19]
  wire [1:0] d_io_ctl_mem_fcn; // @[core.scala 23:19]
  wire [2:0] d_io_ctl_mem_typ; // @[core.scala 23:19]
  wire [2:0] d_io_ctl_csr_cmd; // @[core.scala 23:19]
  wire  d_io_ctl_fencei; // @[core.scala 23:19]
  wire  d_io_ctl_pipeline_kill; // @[core.scala 23:19]
  wire  d_io_ctl_mem_exception; // @[core.scala 23:19]
  wire [31:0] d_io_dat_dec_inst; // @[core.scala 23:19]
  wire  d_io_dat_exe_br_eq; // @[core.scala 23:19]
  wire  d_io_dat_exe_br_lt; // @[core.scala 23:19]
  wire  d_io_dat_exe_br_ltu; // @[core.scala 23:19]
  wire [3:0] d_io_dat_exe_br_type; // @[core.scala 23:19]
  wire  d_io_dat_mem_ctrl_dmem_val; // @[core.scala 23:19]
  wire  d_io_dat_csr_eret; // @[core.scala 23:19]
  CtlPath c ( // @[core.scala 22:19]
    .clock(c_clock),
    .reset(c_reset),
    .io_dmem_resp_valid(c_io_dmem_resp_valid),
    .io_dat_dec_inst(c_io_dat_dec_inst),
    .io_dat_exe_br_eq(c_io_dat_exe_br_eq),
    .io_dat_exe_br_lt(c_io_dat_exe_br_lt),
    .io_dat_exe_br_ltu(c_io_dat_exe_br_ltu),
    .io_dat_exe_br_type(c_io_dat_exe_br_type),
    .io_dat_mem_ctrl_dmem_val(c_io_dat_mem_ctrl_dmem_val),
    .io_dat_csr_eret(c_io_dat_csr_eret),
    .io_ctl_dec_stall(c_io_ctl_dec_stall),
    .io_ctl_full_stall(c_io_ctl_full_stall),
    .io_ctl_exe_pc_sel(c_io_ctl_exe_pc_sel),
    .io_ctl_br_type(c_io_ctl_br_type),
    .io_ctl_if_kill(c_io_ctl_if_kill),
    .io_ctl_dec_kill(c_io_ctl_dec_kill),
    .io_ctl_op1_sel(c_io_ctl_op1_sel),
    .io_ctl_op2_sel(c_io_ctl_op2_sel),
    .io_ctl_alu_fun(c_io_ctl_alu_fun),
    .io_ctl_wb_sel(c_io_ctl_wb_sel),
    .io_ctl_rf_wen(c_io_ctl_rf_wen),
    .io_ctl_mem_val(c_io_ctl_mem_val),
    .io_ctl_mem_fcn(c_io_ctl_mem_fcn),
    .io_ctl_mem_typ(c_io_ctl_mem_typ),
    .io_ctl_csr_cmd(c_io_ctl_csr_cmd),
    .io_ctl_fencei(c_io_ctl_fencei),
    .io_ctl_pipeline_kill(c_io_ctl_pipeline_kill),
    .io_ctl_mem_exception(c_io_ctl_mem_exception)
  );
  DatPath d ( // @[core.scala 23:19]
    .clock(d_clock),
    .reset(d_reset),
    .io_ddpath_addr(d_io_ddpath_addr),
    .io_ddpath_wdata(d_io_ddpath_wdata),
    .io_ddpath_rdata(d_io_ddpath_rdata),
    .io_imem_req_bits_addr(d_io_imem_req_bits_addr),
    .io_imem_resp_bits_data(d_io_imem_resp_bits_data),
    .io_dmem_req_valid(d_io_dmem_req_valid),
    .io_dmem_req_bits_addr(d_io_dmem_req_bits_addr),
    .io_dmem_req_bits_data(d_io_dmem_req_bits_data),
    .io_dmem_req_bits_fcn(d_io_dmem_req_bits_fcn),
    .io_dmem_req_bits_typ(d_io_dmem_req_bits_typ),
    .io_dmem_resp_bits_data(d_io_dmem_resp_bits_data),
    .io_ctl_dec_stall(d_io_ctl_dec_stall),
    .io_ctl_full_stall(d_io_ctl_full_stall),
    .io_ctl_exe_pc_sel(d_io_ctl_exe_pc_sel),
    .io_ctl_br_type(d_io_ctl_br_type),
    .io_ctl_if_kill(d_io_ctl_if_kill),
    .io_ctl_dec_kill(d_io_ctl_dec_kill),
    .io_ctl_op1_sel(d_io_ctl_op1_sel),
    .io_ctl_op2_sel(d_io_ctl_op2_sel),
    .io_ctl_alu_fun(d_io_ctl_alu_fun),
    .io_ctl_wb_sel(d_io_ctl_wb_sel),
    .io_ctl_rf_wen(d_io_ctl_rf_wen),
    .io_ctl_mem_val(d_io_ctl_mem_val),
    .io_ctl_mem_fcn(d_io_ctl_mem_fcn),
    .io_ctl_mem_typ(d_io_ctl_mem_typ),
    .io_ctl_csr_cmd(d_io_ctl_csr_cmd),
    .io_ctl_fencei(d_io_ctl_fencei),
    .io_ctl_pipeline_kill(d_io_ctl_pipeline_kill),
    .io_ctl_mem_exception(d_io_ctl_mem_exception),
    .io_dat_dec_inst(d_io_dat_dec_inst),
    .io_dat_exe_br_eq(d_io_dat_exe_br_eq),
    .io_dat_exe_br_lt(d_io_dat_exe_br_lt),
    .io_dat_exe_br_ltu(d_io_dat_exe_br_ltu),
    .io_dat_exe_br_type(d_io_dat_exe_br_type),
    .io_dat_mem_ctrl_dmem_val(d_io_dat_mem_ctrl_dmem_val),
    .io_dat_csr_eret(d_io_dat_csr_eret)
  );
  assign io_ddpath_rdata = d_io_ddpath_rdata; // @[core.scala 35:16]
  assign io_imem_req_bits_addr = d_io_imem_req_bits_addr; // @[core.scala 28:12 core.scala 29:12]
  assign io_dmem_req_valid = d_io_dmem_req_valid; // @[core.scala 32:12 core.scala 33:12]
  assign io_dmem_req_bits_addr = d_io_dmem_req_bits_addr; // @[core.scala 32:12 core.scala 33:12]
  assign io_dmem_req_bits_data = d_io_dmem_req_bits_data; // @[core.scala 32:12 core.scala 33:12]
  assign io_dmem_req_bits_fcn = d_io_dmem_req_bits_fcn; // @[core.scala 32:12 core.scala 33:12]
  assign io_dmem_req_bits_typ = d_io_dmem_req_bits_typ; // @[core.scala 32:12 core.scala 33:12]
  assign c_clock = clock;
  assign c_reset = reset;
  assign c_io_dmem_resp_valid = io_dmem_resp_valid; // @[core.scala 32:12]
  assign c_io_dat_dec_inst = d_io_dat_dec_inst; // @[core.scala 26:14]
  assign c_io_dat_exe_br_eq = d_io_dat_exe_br_eq; // @[core.scala 26:14]
  assign c_io_dat_exe_br_lt = d_io_dat_exe_br_lt; // @[core.scala 26:14]
  assign c_io_dat_exe_br_ltu = d_io_dat_exe_br_ltu; // @[core.scala 26:14]
  assign c_io_dat_exe_br_type = d_io_dat_exe_br_type; // @[core.scala 26:14]
  assign c_io_dat_mem_ctrl_dmem_val = d_io_dat_mem_ctrl_dmem_val; // @[core.scala 26:14]
  assign c_io_dat_csr_eret = d_io_dat_csr_eret; // @[core.scala 26:14]
  assign d_clock = clock;
  assign d_reset = reset;
  assign d_io_ddpath_addr = io_ddpath_addr; // @[core.scala 35:16]
  assign d_io_ddpath_wdata = io_ddpath_wdata; // @[core.scala 35:16]
  assign d_io_imem_resp_bits_data = io_imem_resp_bits_data; // @[core.scala 29:12]
  assign d_io_dmem_resp_bits_data = io_dmem_resp_bits_data; // @[core.scala 33:12]
  assign d_io_ctl_dec_stall = c_io_ctl_dec_stall; // @[core.scala 25:14]
  assign d_io_ctl_full_stall = c_io_ctl_full_stall; // @[core.scala 25:14]
  assign d_io_ctl_exe_pc_sel = c_io_ctl_exe_pc_sel; // @[core.scala 25:14]
  assign d_io_ctl_br_type = c_io_ctl_br_type; // @[core.scala 25:14]
  assign d_io_ctl_if_kill = c_io_ctl_if_kill; // @[core.scala 25:14]
  assign d_io_ctl_dec_kill = c_io_ctl_dec_kill; // @[core.scala 25:14]
  assign d_io_ctl_op1_sel = c_io_ctl_op1_sel; // @[core.scala 25:14]
  assign d_io_ctl_op2_sel = c_io_ctl_op2_sel; // @[core.scala 25:14]
  assign d_io_ctl_alu_fun = c_io_ctl_alu_fun; // @[core.scala 25:14]
  assign d_io_ctl_wb_sel = c_io_ctl_wb_sel; // @[core.scala 25:14]
  assign d_io_ctl_rf_wen = c_io_ctl_rf_wen; // @[core.scala 25:14]
  assign d_io_ctl_mem_val = c_io_ctl_mem_val; // @[core.scala 25:14]
  assign d_io_ctl_mem_fcn = c_io_ctl_mem_fcn; // @[core.scala 25:14]
  assign d_io_ctl_mem_typ = c_io_ctl_mem_typ; // @[core.scala 25:14]
  assign d_io_ctl_csr_cmd = c_io_ctl_csr_cmd; // @[core.scala 25:14]
  assign d_io_ctl_fencei = c_io_ctl_fencei; // @[core.scala 25:14]
  assign d_io_ctl_pipeline_kill = c_io_ctl_pipeline_kill; // @[core.scala 25:14]
  assign d_io_ctl_mem_exception = c_io_ctl_mem_exception; // @[core.scala 25:14]
endmodule
module AsyncScratchPadMemory(
  input         clock,
  input         io_core_ports_0_req_valid,
  input  [31:0] io_core_ports_0_req_bits_addr,
  input  [31:0] io_core_ports_0_req_bits_data,
  input         io_core_ports_0_req_bits_fcn,
  input  [2:0]  io_core_ports_0_req_bits_typ,
  output        io_core_ports_0_resp_valid,
  output [31:0] io_core_ports_0_resp_bits_data,
  input  [31:0] io_core_ports_1_req_bits_addr,
  output [31:0] io_core_ports_1_resp_bits_data,
  input         io_debug_port_req_valid,
  input  [31:0] io_debug_port_req_bits_addr,
  input  [31:0] io_debug_port_req_bits_data,
  input         io_debug_port_req_bits_fcn,
  output        io_debug_port_resp_valid,
  output [31:0] io_debug_port_resp_bits_data
);
  wire [20:0] async_data_dataInstr_0_addr; // @[memory.scala 115:27]
  wire [31:0] async_data_dataInstr_0_data; // @[memory.scala 115:27]
  wire [20:0] async_data_dataInstr_1_addr; // @[memory.scala 115:27]
  wire [31:0] async_data_dataInstr_1_data; // @[memory.scala 115:27]
  wire [20:0] async_data_hw_addr; // @[memory.scala 115:27]
  wire [31:0] async_data_hw_data; // @[memory.scala 115:27]
  wire [3:0] async_data_hw_mask; // @[memory.scala 115:27]
  wire  async_data_hw_en; // @[memory.scala 115:27]
  wire [20:0] async_data_dw_addr; // @[memory.scala 115:27]
  wire [31:0] async_data_dw_data; // @[memory.scala 115:27]
  wire [3:0] async_data_dw_mask; // @[memory.scala 115:27]
  wire  async_data_dw_en; // @[memory.scala 115:27]
  wire [20:0] async_data_hr_addr; // @[memory.scala 115:27]
  wire [31:0] async_data_hr_data; // @[memory.scala 115:27]
  wire  async_data_clk; // @[memory.scala 115:27]
  wire  _T; // @[memory.scala 130:17]
  wire [23:0] _T_3; // @[Bitwise.scala 72:12]
  wire [31:0] _T_5; // @[Cat.scala 29:58]
  wire  _T_6; // @[memory.scala 131:17]
  wire [15:0] _T_9; // @[Bitwise.scala 72:12]
  wire [31:0] _T_11; // @[Cat.scala 29:58]
  wire  _T_12; // @[memory.scala 132:17]
  wire [31:0] _T_15; // @[Cat.scala 29:58]
  wire  _T_16; // @[memory.scala 133:17]
  wire [31:0] _T_19; // @[Cat.scala 29:58]
  wire [31:0] _T_20; // @[Mux.scala 98:16]
  wire [31:0] _T_21; // @[Mux.scala 98:16]
  wire [31:0] _T_22; // @[Mux.scala 98:16]
  wire [4:0] _T_29; // @[memory.scala 138:86]
  wire [62:0] _GEN_6; // @[memory.scala 138:67]
  wire [62:0] _T_30; // @[memory.scala 138:67]
  wire [31:0] _T_32; // @[Cat.scala 29:58]
  wire [3:0] _T_35; // @[memory.scala 140:58]
  wire [4:0] _T_38; // @[memory.scala 141:57]
  wire [4:0] _T_39; // @[memory.scala 141:34]
  wire [4:0] _T_40; // @[memory.scala 140:35]
  AsyncReadMem async_data ( // @[memory.scala 115:27]
    .dataInstr_0_addr(async_data_dataInstr_0_addr),
    .dataInstr_0_data(async_data_dataInstr_0_data),
    .dataInstr_1_addr(async_data_dataInstr_1_addr),
    .dataInstr_1_data(async_data_dataInstr_1_data),
    .hw_addr(async_data_hw_addr),
    .hw_data(async_data_hw_data),
    .hw_mask(async_data_hw_mask),
    .hw_en(async_data_hw_en),
    .dw_addr(async_data_dw_addr),
    .dw_data(async_data_dw_data),
    .dw_mask(async_data_dw_mask),
    .dw_en(async_data_dw_en),
    .hr_addr(async_data_hr_addr),
    .hr_data(async_data_hr_data),
    .clk(async_data_clk)
  );
  assign _T = io_core_ports_0_req_bits_typ == 3'h1; // @[memory.scala 130:17]
  assign _T_3 = async_data_dataInstr_0_data[7] ? 24'hffffff : 24'h0; // @[Bitwise.scala 72:12]
  assign _T_5 = {_T_3,async_data_dataInstr_0_data[7:0]}; // @[Cat.scala 29:58]
  assign _T_6 = io_core_ports_0_req_bits_typ == 3'h2; // @[memory.scala 131:17]
  assign _T_9 = async_data_dataInstr_0_data[15] ? 16'hffff : 16'h0; // @[Bitwise.scala 72:12]
  assign _T_11 = {_T_9,async_data_dataInstr_0_data[15:0]}; // @[Cat.scala 29:58]
  assign _T_12 = io_core_ports_0_req_bits_typ == 3'h5; // @[memory.scala 132:17]
  assign _T_15 = {24'h0,async_data_dataInstr_0_data[7:0]}; // @[Cat.scala 29:58]
  assign _T_16 = io_core_ports_0_req_bits_typ == 3'h6; // @[memory.scala 133:17]
  assign _T_19 = {16'h0,async_data_dataInstr_0_data[15:0]}; // @[Cat.scala 29:58]
  assign _T_20 = _T_16 ? _T_19 : async_data_dataInstr_0_data; // @[Mux.scala 98:16]
  assign _T_21 = _T_12 ? _T_15 : _T_20; // @[Mux.scala 98:16]
  assign _T_22 = _T_6 ? _T_11 : _T_21; // @[Mux.scala 98:16]
  assign _T_29 = {io_core_ports_0_req_bits_addr[1:0], 3'h0}; // @[memory.scala 138:86]
  assign _GEN_6 = {{31'd0}, io_core_ports_0_req_bits_data}; // @[memory.scala 138:67]
  assign _T_30 = _GEN_6 << _T_29; // @[memory.scala 138:67]
  assign _T_32 = {io_core_ports_0_req_bits_addr[31:2],2'h0}; // @[Cat.scala 29:58]
  assign _T_35 = 4'h1 << io_core_ports_0_req_bits_addr[1:0]; // @[memory.scala 140:58]
  assign _T_38 = 5'h3 << io_core_ports_0_req_bits_addr[1:0]; // @[memory.scala 141:57]
  assign _T_39 = _T_6 ? _T_38 : 5'hf; // @[memory.scala 141:34]
  assign _T_40 = _T ? {{1'd0}, _T_35} : _T_39; // @[memory.scala 140:35]
  assign io_core_ports_0_resp_valid = io_core_ports_0_req_valid; // @[memory.scala 119:35]
  assign io_core_ports_0_resp_bits_data = _T ? _T_5 : _T_22; // @[memory.scala 129:40]
  assign io_core_ports_1_resp_bits_data = async_data_dataInstr_1_data; // @[memory.scala 147:43]
  assign io_debug_port_resp_valid = io_debug_port_req_valid; // @[memory.scala 153:29]
  assign io_debug_port_resp_bits_data = async_data_hr_data; // @[memory.scala 156:33]
  assign async_data_dataInstr_0_addr = io_core_ports_0_req_bits_addr[20:0]; // @[memory.scala 121:39]
  assign async_data_dataInstr_1_addr = io_core_ports_1_req_bits_addr[20:0]; // @[memory.scala 121:39]
  assign async_data_hw_addr = io_debug_port_req_bits_addr[20:0]; // @[memory.scala 160:29]
  assign async_data_hw_data = io_debug_port_req_bits_data; // @[memory.scala 161:29]
  assign async_data_hw_mask = 4'hf; // @[memory.scala 162:29]
  assign async_data_hw_en = io_debug_port_req_bits_fcn; // @[memory.scala 157:24]
  assign async_data_dw_addr = _T_32[20:0]; // @[memory.scala 139:29]
  assign async_data_dw_data = _T_30[31:0]; // @[memory.scala 138:29]
  assign async_data_dw_mask = _T_40[3:0]; // @[memory.scala 140:29]
  assign async_data_dw_en = io_core_ports_0_req_bits_fcn; // @[memory.scala 135:24]
  assign async_data_hr_addr = io_debug_port_req_bits_addr[20:0]; // @[memory.scala 155:26]
  assign async_data_clk = clock; // @[memory.scala 116:22]
endmodule
module DebugModule(
  input         clock,
  input         reset,
  output        io_dmi_req_ready,
  input         io_dmi_req_valid,
  input  [1:0]  io_dmi_req_bits_op,
  input  [6:0]  io_dmi_req_bits_addr,
  input  [31:0] io_dmi_req_bits_data,
  output        io_dmi_resp_valid,
  output [31:0] io_dmi_resp_bits_data,
  output [4:0]  io_ddpath_addr,
  output [31:0] io_ddpath_wdata,
  input  [31:0] io_ddpath_rdata,
  output        io_debugmem_req_valid,
  output [31:0] io_debugmem_req_bits_addr,
  output [31:0] io_debugmem_req_bits_data,
  output        io_debugmem_req_bits_fcn,
  input         io_debugmem_resp_valid,
  input  [31:0] io_debugmem_resp_bits_data,
  output        io_resetcore
);
  reg  dmstatus_allrunning; // @[debug.scala 121:25]
  reg [31:0] _RAND_0;
  reg  dmstatus_allhalted; // @[debug.scala 121:25]
  reg [31:0] _RAND_1;
  reg  sbcs_sbsingleread; // @[debug.scala 129:21]
  reg [31:0] _RAND_2;
  reg [2:0] sbcs_sbaccess; // @[debug.scala 129:21]
  reg [31:0] _RAND_3;
  reg  sbcs_sbautoincrement; // @[debug.scala 129:21]
  reg [31:0] _RAND_4;
  reg  sbcs_sbautoread; // @[debug.scala 129:21]
  reg [31:0] _RAND_5;
  reg [2:0] sbcs_sberror; // @[debug.scala 129:21]
  reg [31:0] _RAND_6;
  reg [2:0] abstractcs_cmderr; // @[debug.scala 134:27]
  reg [31:0] _RAND_7;
  reg  command_postexec; // @[debug.scala 135:20]
  reg [31:0] _RAND_8;
  reg  command_transfer; // @[debug.scala 135:20]
  reg [31:0] _RAND_9;
  reg  command_write; // @[debug.scala 135:20]
  reg [31:0] _RAND_10;
  reg [15:0] command_regno; // @[debug.scala 135:20]
  reg [31:0] _RAND_11;
  reg  dmcontrol_haltreq; // @[debug.scala 136:22]
  reg [31:0] _RAND_12;
  reg  dmcontrol_resumereq; // @[debug.scala 136:22]
  reg [31:0] _RAND_13;
  reg  dmcontrol_hartreset; // @[debug.scala 136:22]
  reg [31:0] _RAND_14;
  reg  dmcontrol_ndmreset; // @[debug.scala 136:22]
  reg [31:0] _RAND_15;
  reg  dmcontrol_dmactive; // @[debug.scala 136:22]
  reg [31:0] _RAND_16;
  reg [31:0] data0; // @[debug.scala 138:18]
  reg [31:0] _RAND_17;
  reg [31:0] data1; // @[debug.scala 139:18]
  reg [31:0] _RAND_18;
  reg [31:0] data2; // @[debug.scala 140:18]
  reg [31:0] _RAND_19;
  reg [31:0] sbaddr; // @[debug.scala 141:19]
  reg [31:0] _RAND_20;
  reg [31:0] sbdata; // @[debug.scala 142:19]
  reg [31:0] _RAND_21;
  reg  memreadfire; // @[debug.scala 143:28]
  reg [31:0] _RAND_22;
  reg  coreresetval; // @[debug.scala 144:29]
  reg [31:0] _RAND_23;
  wire [31:0] _T_6; // @[debug.scala 147:47]
  wire [31:0] _T_14; // @[debug.scala 148:45]
  wire [31:0] _T_30; // @[debug.scala 149:44]
  wire [31:0] _T_37; // @[debug.scala 150:41]
  wire [31:0] _T_48; // @[debug.scala 163:35]
  wire  _T_49; // @[debug.scala 166:79]
  wire  _T_50; // @[debug.scala 166:79]
  wire  _T_51; // @[debug.scala 166:79]
  wire  _T_52; // @[debug.scala 166:79]
  wire  _T_53; // @[debug.scala 166:79]
  wire  _T_56; // @[debug.scala 166:79]
  wire  _T_57; // @[debug.scala 166:79]
  wire  _T_58; // @[debug.scala 166:79]
  wire  _T_65; // @[debug.scala 166:79]
  wire  _T_66; // @[debug.scala 166:79]
  wire  _T_67; // @[debug.scala 166:79]
  wire [31:0] _T_68; // @[Mux.scala 27:72]
  wire [31:0] _T_69; // @[Mux.scala 27:72]
  wire [31:0] _T_70; // @[Mux.scala 27:72]
  wire [31:0] _T_71; // @[Mux.scala 27:72]
  wire [20:0] _T_72; // @[Mux.scala 27:72]
  wire [31:0] _T_75; // @[Mux.scala 27:72]
  wire [31:0] _T_76; // @[Mux.scala 27:72]
  wire [31:0] _T_77; // @[Mux.scala 27:72]
  wire [31:0] _T_84; // @[Mux.scala 27:72]
  wire [31:0] _T_85; // @[Mux.scala 27:72]
  wire [31:0] _T_86; // @[Mux.scala 27:72]
  wire [31:0] _T_87; // @[Mux.scala 27:72]
  wire [31:0] _T_88; // @[Mux.scala 27:72]
  wire [31:0] _T_89; // @[Mux.scala 27:72]
  wire [31:0] _GEN_77; // @[Mux.scala 27:72]
  wire [31:0] _T_90; // @[Mux.scala 27:72]
  wire [31:0] _T_93; // @[Mux.scala 27:72]
  wire [31:0] _T_94; // @[Mux.scala 27:72]
  wire [31:0] _T_95; // @[Mux.scala 27:72]
  wire [31:0] _T_102; // @[Mux.scala 27:72]
  wire [31:0] _T_103; // @[Mux.scala 27:72]
  wire  _T_108; // @[debug.scala 172:28]
  wire  _T_109; // @[debug.scala 173:54]
  wire  _T_130; // @[debug.scala 179:29]
  wire [1:0] _GEN_5; // @[debug.scala 179:37]
  wire  _T_156; // @[debug.scala 212:33]
  wire [31:0] _T_158; // @[debug.scala 214:26]
  wire [15:0] _T_159; // @[debug.scala 223:35]
  wire  _T_160; // @[debug.scala 224:46]
  wire  _T_161; // @[debug.scala 224:25]
  wire  _T_163; // @[debug.scala 234:49]
  wire  _T_164; // @[debug.scala 234:8]
  wire  _GEN_63; // @[debug.scala 234:98]
  reg  firstreaddone; // @[debug.scala 239:26]
  reg [31:0] _RAND_24;
  reg  _T_165; // @[debug.scala 241:50]
  reg [31:0] _RAND_25;
  wire  _T_167; // @[debug.scala 243:72]
  wire  _T_168; // @[debug.scala 243:49]
  wire  _T_169; // @[debug.scala 243:119]
  wire  _T_170; // @[debug.scala 243:99]
  wire  _GEN_69; // @[debug.scala 243:137]
  wire  _GEN_70; // @[debug.scala 243:137]
  wire  _T_171; // @[debug.scala 256:20]
  wire  _T_174; // @[debug.scala 268:8]
  wire  _T_175; // @[debug.scala 274:30]
  wire  _T_176; // @[debug.scala 274:43]
  wire  _GEN_76; // @[debug.scala 274:63]
  assign _T_6 = {20'h4000,1'h0,abstractcs_cmderr,8'h1}; // @[debug.scala 147:47]
  assign _T_14 = {dmcontrol_haltreq,dmcontrol_resumereq,dmcontrol_hartreset,3'h0,24'h0,dmcontrol_ndmreset,dmcontrol_dmactive}; // @[debug.scala 148:45]
  assign _T_30 = {18'h0,2'h0,dmstatus_allrunning,1'h0,dmstatus_allhalted,1'h0,2'h2,6'h2}; // @[debug.scala 149:44]
  assign _T_37 = {13'h0,command_postexec,command_transfer,command_write,command_regno}; // @[debug.scala 150:41]
  assign _T_48 = {11'h0,sbcs_sbsingleread,sbcs_sbaccess,sbcs_sbautoincrement,sbcs_sbautoread,sbcs_sberror,12'h404}; // @[debug.scala 163:35]
  assign _T_49 = io_dmi_req_bits_addr == 7'h16; // @[debug.scala 166:79]
  assign _T_50 = io_dmi_req_bits_addr == 7'h10; // @[debug.scala 166:79]
  assign _T_51 = io_dmi_req_bits_addr == 7'h11; // @[debug.scala 166:79]
  assign _T_52 = io_dmi_req_bits_addr == 7'h17; // @[debug.scala 166:79]
  assign _T_53 = io_dmi_req_bits_addr == 7'h12; // @[debug.scala 166:79]
  assign _T_56 = io_dmi_req_bits_addr == 7'h4; // @[debug.scala 166:79]
  assign _T_57 = io_dmi_req_bits_addr == 7'h5; // @[debug.scala 166:79]
  assign _T_58 = io_dmi_req_bits_addr == 7'h6; // @[debug.scala 166:79]
  assign _T_65 = io_dmi_req_bits_addr == 7'h38; // @[debug.scala 166:79]
  assign _T_66 = io_dmi_req_bits_addr == 7'h39; // @[debug.scala 166:79]
  assign _T_67 = io_dmi_req_bits_addr == 7'h3c; // @[debug.scala 166:79]
  assign _T_68 = _T_49 ? _T_6 : 32'h0; // @[Mux.scala 27:72]
  assign _T_69 = _T_50 ? _T_14 : 32'h0; // @[Mux.scala 27:72]
  assign _T_70 = _T_51 ? _T_30 : 32'h0; // @[Mux.scala 27:72]
  assign _T_71 = _T_52 ? _T_37 : 32'h0; // @[Mux.scala 27:72]
  assign _T_72 = _T_53 ? 21'h111bc0 : 21'h0; // @[Mux.scala 27:72]
  assign _T_75 = _T_56 ? data0 : 32'h0; // @[Mux.scala 27:72]
  assign _T_76 = _T_57 ? data1 : 32'h0; // @[Mux.scala 27:72]
  assign _T_77 = _T_58 ? data2 : 32'h0; // @[Mux.scala 27:72]
  assign _T_84 = _T_65 ? _T_48 : 32'h0; // @[Mux.scala 27:72]
  assign _T_85 = _T_66 ? sbaddr : 32'h0; // @[Mux.scala 27:72]
  assign _T_86 = _T_67 ? sbdata : 32'h0; // @[Mux.scala 27:72]
  assign _T_87 = _T_68 | _T_69; // @[Mux.scala 27:72]
  assign _T_88 = _T_87 | _T_70; // @[Mux.scala 27:72]
  assign _T_89 = _T_88 | _T_71; // @[Mux.scala 27:72]
  assign _GEN_77 = {{11'd0}, _T_72}; // @[Mux.scala 27:72]
  assign _T_90 = _T_89 | _GEN_77; // @[Mux.scala 27:72]
  assign _T_93 = _T_90 | _T_75; // @[Mux.scala 27:72]
  assign _T_94 = _T_93 | _T_76; // @[Mux.scala 27:72]
  assign _T_95 = _T_94 | _T_77; // @[Mux.scala 27:72]
  assign _T_102 = _T_95 | _T_84; // @[Mux.scala 27:72]
  assign _T_103 = _T_102 | _T_85; // @[Mux.scala 27:72]
  assign _T_108 = io_dmi_req_bits_op == 2'h2; // @[debug.scala 172:28]
  assign _T_109 = _T_49 & io_dmi_req_valid; // @[debug.scala 173:54]
  assign _T_130 = io_dmi_req_bits_data[22:20] == 3'h2; // @[debug.scala 179:29]
  assign _GEN_5 = _T_130 ? 2'h1 : 2'h2; // @[debug.scala 179:37]
  assign _T_156 = sbcs_sbautoincrement & io_dmi_req_valid; // @[debug.scala 212:33]
  assign _T_158 = sbaddr + 32'h4; // @[debug.scala 214:26]
  assign _T_159 = command_regno & 16'hfff; // @[debug.scala 223:35]
  assign _T_160 = abstractcs_cmderr != 3'h0; // @[debug.scala 224:46]
  assign _T_161 = command_transfer & _T_160; // @[debug.scala 224:25]
  assign _T_163 = _T_67 & _T_108; // @[debug.scala 234:49]
  assign _T_164 = ~_T_163; // @[debug.scala 234:8]
  assign _GEN_63 = _T_164 ? 1'h0 : 1'h1; // @[debug.scala 234:98]
  assign _T_167 = io_dmi_req_bits_op == 2'h1; // @[debug.scala 243:72]
  assign _T_168 = _T_67 & _T_167; // @[debug.scala 243:49]
  assign _T_169 = sbcs_sbautoread & firstreaddone; // @[debug.scala 243:119]
  assign _T_170 = _T_168 | _T_169; // @[debug.scala 243:99]
  assign _GEN_69 = _T_170 | memreadfire; // @[debug.scala 243:137]
  assign _GEN_70 = _T_170 | firstreaddone; // @[debug.scala 243:137]
  assign _T_171 = memreadfire & io_debugmem_resp_valid; // @[debug.scala 256:20]
  assign _T_174 = ~_T_67; // @[debug.scala 268:8]
  assign _T_175 = io_dmi_req_bits_addr == 7'h44; // @[debug.scala 274:30]
  assign _T_176 = _T_175 & io_dmi_req_valid; // @[debug.scala 274:43]
  assign _GEN_76 = _T_176 ? 1'h0 : coreresetval; // @[debug.scala 274:63]
  assign io_dmi_req_ready = io_dmi_req_valid; // @[debug.scala 114:20]
  assign io_dmi_resp_valid = firstreaddone ? _T_165 : io_dmi_req_valid; // @[debug.scala 241:21]
  assign io_dmi_resp_bits_data = _T_103 | _T_86; // @[debug.scala 167:25]
  assign io_ddpath_addr = _T_159[4:0]; // @[debug.scala 223:18]
  assign io_ddpath_wdata = data0; // @[debug.scala 226:23]
  assign io_debugmem_req_valid = io_dmi_req_valid; // @[debug.scala 211:29 debug.scala 246:27]
  assign io_debugmem_req_bits_addr = sbaddr; // @[debug.scala 208:33 debug.scala 244:31]
  assign io_debugmem_req_bits_data = sbdata; // @[debug.scala 209:33]
  assign io_debugmem_req_bits_fcn = _T_170 ? 1'h0 : _GEN_63; // @[debug.scala 210:32 debug.scala 235:30 debug.scala 245:30]
  assign io_resetcore = coreresetval; // @[debug.scala 272:16]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  dmstatus_allrunning = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  dmstatus_allhalted = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  sbcs_sbsingleread = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  sbcs_sbaccess = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  sbcs_sbautoincrement = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  sbcs_sbautoread = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  sbcs_sberror = _RAND_6[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  abstractcs_cmderr = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  command_postexec = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  command_transfer = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  command_write = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  command_regno = _RAND_11[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  dmcontrol_haltreq = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  dmcontrol_resumereq = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  dmcontrol_hartreset = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  dmcontrol_ndmreset = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  dmcontrol_dmactive = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  data0 = _RAND_17[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  data1 = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  data2 = _RAND_19[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  sbaddr = _RAND_20[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  sbdata = _RAND_21[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  memreadfire = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  coreresetval = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  firstreaddone = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  _T_165 = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    dmstatus_allrunning <= dmcontrol_resumereq;
    dmstatus_allhalted <= dmcontrol_haltreq;
    if (_T_108) begin
      if (_T_65) begin
        sbcs_sbsingleread <= io_dmi_req_bits_data[20];
      end
    end
    if (reset) begin
      sbcs_sbaccess <= 3'h2;
    end else if (_T_108) begin
      if (_T_65) begin
        sbcs_sbaccess <= io_dmi_req_bits_data[19:17];
      end
    end
    if (_T_108) begin
      if (_T_65) begin
        sbcs_sbautoincrement <= io_dmi_req_bits_data[16];
      end
    end
    if (_T_108) begin
      if (_T_65) begin
        sbcs_sbautoread <= io_dmi_req_bits_data[15];
      end
    end
    if (_T_108) begin
      if (_T_65) begin
        sbcs_sberror <= io_dmi_req_bits_data[14:12];
      end
    end
    if (_T_161) begin
      abstractcs_cmderr <= 3'h0;
    end else if (_T_108) begin
      if (_T_52) begin
        abstractcs_cmderr <= {{1'd0}, _GEN_5};
      end else if (_T_109) begin
        abstractcs_cmderr <= io_dmi_req_bits_data[10:8];
      end
    end
    if (_T_108) begin
      if (_T_52) begin
        if (_T_130) begin
          command_postexec <= io_dmi_req_bits_data[18];
        end
      end
    end
    if (_T_108) begin
      if (_T_52) begin
        if (_T_130) begin
          command_transfer <= io_dmi_req_bits_data[17];
        end
      end
    end
    if (_T_108) begin
      if (_T_52) begin
        if (_T_130) begin
          command_write <= io_dmi_req_bits_data[16];
        end
      end
    end
    if (_T_108) begin
      if (_T_52) begin
        if (_T_130) begin
          command_regno <= io_dmi_req_bits_data[15:0];
        end
      end
    end
    if (_T_108) begin
      if (_T_50) begin
        dmcontrol_haltreq <= io_dmi_req_bits_data[31];
      end
    end
    if (_T_108) begin
      if (_T_50) begin
        dmcontrol_resumereq <= io_dmi_req_bits_data[30];
      end
    end
    if (_T_108) begin
      if (_T_50) begin
        dmcontrol_hartreset <= io_dmi_req_bits_data[29];
      end
    end
    if (_T_108) begin
      if (_T_50) begin
        dmcontrol_ndmreset <= io_dmi_req_bits_data[1];
      end
    end
    if (_T_108) begin
      if (_T_50) begin
        dmcontrol_dmactive <= io_dmi_req_bits_data[0];
      end
    end
    if (_T_161) begin
      if (command_write) begin
        if (_T_108) begin
          if (_T_56) begin
            data0 <= io_dmi_req_bits_data;
          end
        end
      end else begin
        data0 <= io_ddpath_rdata;
      end
    end else if (_T_108) begin
      if (_T_56) begin
        data0 <= io_dmi_req_bits_data;
      end
    end
    if (_T_108) begin
      if (_T_57) begin
        data1 <= io_dmi_req_bits_data;
      end
    end
    if (_T_108) begin
      if (_T_58) begin
        data2 <= io_dmi_req_bits_data;
      end
    end
    if (_T_171) begin
      if (sbcs_sbautoincrement) begin
        sbaddr <= _T_158;
      end else if (_T_108) begin
        if (_T_67) begin
          if (_T_156) begin
            sbaddr <= _T_158;
          end else if (_T_66) begin
            sbaddr <= io_dmi_req_bits_data;
          end
        end else if (_T_66) begin
          sbaddr <= io_dmi_req_bits_data;
        end
      end
    end else if (_T_108) begin
      if (_T_67) begin
        if (_T_156) begin
          sbaddr <= _T_158;
        end else if (_T_66) begin
          sbaddr <= io_dmi_req_bits_data;
        end
      end else if (_T_66) begin
        sbaddr <= io_dmi_req_bits_data;
      end
    end
    if (_T_171) begin
      sbdata <= io_debugmem_resp_bits_data;
    end else if (_T_170) begin
      if (io_debugmem_resp_valid) begin
        sbdata <= io_debugmem_resp_bits_data;
      end else if (_T_108) begin
        if (_T_67) begin
          sbdata <= io_dmi_req_bits_data;
        end
      end
    end else if (_T_108) begin
      if (_T_67) begin
        sbdata <= io_dmi_req_bits_data;
      end
    end
    if (reset) begin
      memreadfire <= 1'h0;
    end else if (_T_171) begin
      memreadfire <= 1'h0;
    end else begin
      memreadfire <= _GEN_69;
    end
    coreresetval <= reset | _GEN_76;
    if (_T_174) begin
      firstreaddone <= 1'h0;
    end else begin
      firstreaddone <= _GEN_70;
    end
    _T_165 <= io_debugmem_resp_valid;
  end
endmodule
module SodorTile(
  input         clock,
  input         reset,
  output        io_dmi_req_ready,
  input         io_dmi_req_valid,
  input  [1:0]  io_dmi_req_bits_op,
  input  [6:0]  io_dmi_req_bits_addr,
  input  [31:0] io_dmi_req_bits_data,
  output        io_dmi_resp_valid,
  output [31:0] io_dmi_resp_bits_data
);
  wire  core_clock; // @[tile.scala 23:23]
  wire  core_reset; // @[tile.scala 23:23]
  wire [4:0] core_io_ddpath_addr; // @[tile.scala 23:23]
  wire [31:0] core_io_ddpath_wdata; // @[tile.scala 23:23]
  wire [31:0] core_io_ddpath_rdata; // @[tile.scala 23:23]
  wire [31:0] core_io_imem_req_bits_addr; // @[tile.scala 23:23]
  wire [31:0] core_io_imem_resp_bits_data; // @[tile.scala 23:23]
  wire  core_io_dmem_req_valid; // @[tile.scala 23:23]
  wire [31:0] core_io_dmem_req_bits_addr; // @[tile.scala 23:23]
  wire [31:0] core_io_dmem_req_bits_data; // @[tile.scala 23:23]
  wire  core_io_dmem_req_bits_fcn; // @[tile.scala 23:23]
  wire [2:0] core_io_dmem_req_bits_typ; // @[tile.scala 23:23]
  wire  core_io_dmem_resp_valid; // @[tile.scala 23:23]
  wire [31:0] core_io_dmem_resp_bits_data; // @[tile.scala 23:23]
  wire  memory_clock; // @[tile.scala 25:23]
  wire  memory_io_core_ports_0_req_valid; // @[tile.scala 25:23]
  wire [31:0] memory_io_core_ports_0_req_bits_addr; // @[tile.scala 25:23]
  wire [31:0] memory_io_core_ports_0_req_bits_data; // @[tile.scala 25:23]
  wire  memory_io_core_ports_0_req_bits_fcn; // @[tile.scala 25:23]
  wire [2:0] memory_io_core_ports_0_req_bits_typ; // @[tile.scala 25:23]
  wire  memory_io_core_ports_0_resp_valid; // @[tile.scala 25:23]
  wire [31:0] memory_io_core_ports_0_resp_bits_data; // @[tile.scala 25:23]
  wire [31:0] memory_io_core_ports_1_req_bits_addr; // @[tile.scala 25:23]
  wire [31:0] memory_io_core_ports_1_resp_bits_data; // @[tile.scala 25:23]
  wire  memory_io_debug_port_req_valid; // @[tile.scala 25:23]
  wire [31:0] memory_io_debug_port_req_bits_addr; // @[tile.scala 25:23]
  wire [31:0] memory_io_debug_port_req_bits_data; // @[tile.scala 25:23]
  wire  memory_io_debug_port_req_bits_fcn; // @[tile.scala 25:23]
  wire  memory_io_debug_port_resp_valid; // @[tile.scala 25:23]
  wire [31:0] memory_io_debug_port_resp_bits_data; // @[tile.scala 25:23]
  wire  debug_clock; // @[tile.scala 26:22]
  wire  debug_reset; // @[tile.scala 26:22]
  wire  debug_io_dmi_req_ready; // @[tile.scala 26:22]
  wire  debug_io_dmi_req_valid; // @[tile.scala 26:22]
  wire [1:0] debug_io_dmi_req_bits_op; // @[tile.scala 26:22]
  wire [6:0] debug_io_dmi_req_bits_addr; // @[tile.scala 26:22]
  wire [31:0] debug_io_dmi_req_bits_data; // @[tile.scala 26:22]
  wire  debug_io_dmi_resp_valid; // @[tile.scala 26:22]
  wire [31:0] debug_io_dmi_resp_bits_data; // @[tile.scala 26:22]
  wire [4:0] debug_io_ddpath_addr; // @[tile.scala 26:22]
  wire [31:0] debug_io_ddpath_wdata; // @[tile.scala 26:22]
  wire [31:0] debug_io_ddpath_rdata; // @[tile.scala 26:22]
  wire  debug_io_debugmem_req_valid; // @[tile.scala 26:22]
  wire [31:0] debug_io_debugmem_req_bits_addr; // @[tile.scala 26:22]
  wire [31:0] debug_io_debugmem_req_bits_data; // @[tile.scala 26:22]
  wire  debug_io_debugmem_req_bits_fcn; // @[tile.scala 26:22]
  wire  debug_io_debugmem_resp_valid; // @[tile.scala 26:22]
  wire [31:0] debug_io_debugmem_resp_bits_data; // @[tile.scala 26:22]
  wire  debug_io_resetcore; // @[tile.scala 26:22]
  Core core ( // @[tile.scala 23:23]
    .clock(core_clock),
    .reset(core_reset),
    .io_ddpath_addr(core_io_ddpath_addr),
    .io_ddpath_wdata(core_io_ddpath_wdata),
    .io_ddpath_rdata(core_io_ddpath_rdata),
    .io_imem_req_bits_addr(core_io_imem_req_bits_addr),
    .io_imem_resp_bits_data(core_io_imem_resp_bits_data),
    .io_dmem_req_valid(core_io_dmem_req_valid),
    .io_dmem_req_bits_addr(core_io_dmem_req_bits_addr),
    .io_dmem_req_bits_data(core_io_dmem_req_bits_data),
    .io_dmem_req_bits_fcn(core_io_dmem_req_bits_fcn),
    .io_dmem_req_bits_typ(core_io_dmem_req_bits_typ),
    .io_dmem_resp_valid(core_io_dmem_resp_valid),
    .io_dmem_resp_bits_data(core_io_dmem_resp_bits_data)
  );
  AsyncScratchPadMemory memory ( // @[tile.scala 25:23]
    .clock(memory_clock),
    .io_core_ports_0_req_valid(memory_io_core_ports_0_req_valid),
    .io_core_ports_0_req_bits_addr(memory_io_core_ports_0_req_bits_addr),
    .io_core_ports_0_req_bits_data(memory_io_core_ports_0_req_bits_data),
    .io_core_ports_0_req_bits_fcn(memory_io_core_ports_0_req_bits_fcn),
    .io_core_ports_0_req_bits_typ(memory_io_core_ports_0_req_bits_typ),
    .io_core_ports_0_resp_valid(memory_io_core_ports_0_resp_valid),
    .io_core_ports_0_resp_bits_data(memory_io_core_ports_0_resp_bits_data),
    .io_core_ports_1_req_bits_addr(memory_io_core_ports_1_req_bits_addr),
    .io_core_ports_1_resp_bits_data(memory_io_core_ports_1_resp_bits_data),
    .io_debug_port_req_valid(memory_io_debug_port_req_valid),
    .io_debug_port_req_bits_addr(memory_io_debug_port_req_bits_addr),
    .io_debug_port_req_bits_data(memory_io_debug_port_req_bits_data),
    .io_debug_port_req_bits_fcn(memory_io_debug_port_req_bits_fcn),
    .io_debug_port_resp_valid(memory_io_debug_port_resp_valid),
    .io_debug_port_resp_bits_data(memory_io_debug_port_resp_bits_data)
  );
  DebugModule debug ( // @[tile.scala 26:22]
    .clock(debug_clock),
    .reset(debug_reset),
    .io_dmi_req_ready(debug_io_dmi_req_ready),
    .io_dmi_req_valid(debug_io_dmi_req_valid),
    .io_dmi_req_bits_op(debug_io_dmi_req_bits_op),
    .io_dmi_req_bits_addr(debug_io_dmi_req_bits_addr),
    .io_dmi_req_bits_data(debug_io_dmi_req_bits_data),
    .io_dmi_resp_valid(debug_io_dmi_resp_valid),
    .io_dmi_resp_bits_data(debug_io_dmi_resp_bits_data),
    .io_ddpath_addr(debug_io_ddpath_addr),
    .io_ddpath_wdata(debug_io_ddpath_wdata),
    .io_ddpath_rdata(debug_io_ddpath_rdata),
    .io_debugmem_req_valid(debug_io_debugmem_req_valid),
    .io_debugmem_req_bits_addr(debug_io_debugmem_req_bits_addr),
    .io_debugmem_req_bits_data(debug_io_debugmem_req_bits_data),
    .io_debugmem_req_bits_fcn(debug_io_debugmem_req_bits_fcn),
    .io_debugmem_resp_valid(debug_io_debugmem_resp_valid),
    .io_debugmem_resp_bits_data(debug_io_debugmem_resp_bits_data),
    .io_resetcore(debug_io_resetcore)
  );
  assign io_dmi_req_ready = debug_io_dmi_req_ready; // @[tile.scala 35:17]
  assign io_dmi_resp_valid = debug_io_dmi_resp_valid; // @[tile.scala 35:17]
  assign io_dmi_resp_bits_data = debug_io_dmi_resp_bits_data; // @[tile.scala 35:17]
  assign core_clock = clock;
  assign core_reset = debug_io_resetcore | reset; // @[tile.scala 32:15]
  assign core_io_ddpath_addr = debug_io_ddpath_addr; // @[tile.scala 33:20]
  assign core_io_ddpath_wdata = debug_io_ddpath_wdata; // @[tile.scala 33:20]
  assign core_io_imem_resp_bits_data = memory_io_core_ports_1_resp_bits_data; // @[tile.scala 29:17]
  assign core_io_dmem_resp_valid = memory_io_core_ports_0_resp_valid; // @[tile.scala 28:17]
  assign core_io_dmem_resp_bits_data = memory_io_core_ports_0_resp_bits_data; // @[tile.scala 28:17]
  assign memory_clock = clock;
  assign memory_io_core_ports_0_req_valid = core_io_dmem_req_valid; // @[tile.scala 28:17]
  assign memory_io_core_ports_0_req_bits_addr = core_io_dmem_req_bits_addr; // @[tile.scala 28:17]
  assign memory_io_core_ports_0_req_bits_data = core_io_dmem_req_bits_data; // @[tile.scala 28:17]
  assign memory_io_core_ports_0_req_bits_fcn = core_io_dmem_req_bits_fcn; // @[tile.scala 28:17]
  assign memory_io_core_ports_0_req_bits_typ = core_io_dmem_req_bits_typ; // @[tile.scala 28:17]
  assign memory_io_core_ports_1_req_bits_addr = core_io_imem_req_bits_addr; // @[tile.scala 29:17]
  assign memory_io_debug_port_req_valid = debug_io_debugmem_req_valid; // @[tile.scala 30:22]
  assign memory_io_debug_port_req_bits_addr = debug_io_debugmem_req_bits_addr; // @[tile.scala 30:22]
  assign memory_io_debug_port_req_bits_data = debug_io_debugmem_req_bits_data; // @[tile.scala 30:22]
  assign memory_io_debug_port_req_bits_fcn = debug_io_debugmem_req_bits_fcn; // @[tile.scala 30:22]
  assign debug_clock = clock;
  assign debug_reset = reset;
  assign debug_io_dmi_req_valid = io_dmi_req_valid; // @[tile.scala 35:17]
  assign debug_io_dmi_req_bits_op = io_dmi_req_bits_op; // @[tile.scala 35:17]
  assign debug_io_dmi_req_bits_addr = io_dmi_req_bits_addr; // @[tile.scala 35:17]
  assign debug_io_dmi_req_bits_data = io_dmi_req_bits_data; // @[tile.scala 35:17]
  assign debug_io_ddpath_rdata = core_io_ddpath_rdata; // @[tile.scala 33:20]
  assign debug_io_debugmem_resp_valid = memory_io_debug_port_resp_valid; // @[tile.scala 30:22]
  assign debug_io_debugmem_resp_bits_data = memory_io_debug_port_resp_bits_data; // @[tile.scala 30:22]
endmodule
module Top(
  input   clock,
  input   reset,
  output  io_success
);
  wire  tile_clock; // @[top.scala 20:21]
  wire  tile_reset; // @[top.scala 20:21]
  wire  tile_io_dmi_req_ready; // @[top.scala 20:21]
  wire  tile_io_dmi_req_valid; // @[top.scala 20:21]
  wire [1:0] tile_io_dmi_req_bits_op; // @[top.scala 20:21]
  wire [6:0] tile_io_dmi_req_bits_addr; // @[top.scala 20:21]
  wire [31:0] tile_io_dmi_req_bits_data; // @[top.scala 20:21]
  wire  tile_io_dmi_resp_valid; // @[top.scala 20:21]
  wire [31:0] tile_io_dmi_resp_bits_data; // @[top.scala 20:21]
  wire  SimDTM_clk; // @[top.scala 21:20]
  wire  SimDTM_reset; // @[top.scala 21:20]
  wire  SimDTM_debug_req_ready; // @[top.scala 21:20]
  wire  SimDTM_debug_req_valid; // @[top.scala 21:20]
  wire [1:0] SimDTM_debug_req_bits_op; // @[top.scala 21:20]
  wire [6:0] SimDTM_debug_req_bits_addr; // @[top.scala 21:20]
  wire [31:0] SimDTM_debug_req_bits_data; // @[top.scala 21:20]
  wire  SimDTM_debug_resp_ready; // @[top.scala 21:20]
  wire  SimDTM_debug_resp_valid; // @[top.scala 21:20]
  wire [31:0] SimDTM_debug_resp_bits_data; // @[top.scala 21:20]
  wire [1:0] SimDTM_debug_resp_bits_resp; // @[top.scala 21:20]
  wire [31:0] SimDTM_exit; // @[top.scala 21:20]
  wire  _T_2; // @[debug.scala 79:19]
  wire [31:0] _T_3; // @[debug.scala 80:59]
  wire  _T_5; // @[debug.scala 80:13]
  SodorTile tile ( // @[top.scala 20:21]
    .clock(tile_clock),
    .reset(tile_reset),
    .io_dmi_req_ready(tile_io_dmi_req_ready),
    .io_dmi_req_valid(tile_io_dmi_req_valid),
    .io_dmi_req_bits_op(tile_io_dmi_req_bits_op),
    .io_dmi_req_bits_addr(tile_io_dmi_req_bits_addr),
    .io_dmi_req_bits_data(tile_io_dmi_req_bits_data),
    .io_dmi_resp_valid(tile_io_dmi_resp_valid),
    .io_dmi_resp_bits_data(tile_io_dmi_resp_bits_data)
  );
  SimDTM SimDTM ( // @[top.scala 21:20]
    .clk(SimDTM_clk),
    .reset(SimDTM_reset),
    .debug_req_ready(SimDTM_debug_req_ready),
    .debug_req_valid(SimDTM_debug_req_valid),
    .debug_req_bits_op(SimDTM_debug_req_bits_op),
    .debug_req_bits_addr(SimDTM_debug_req_bits_addr),
    .debug_req_bits_data(SimDTM_debug_req_bits_data),
    .debug_resp_ready(SimDTM_debug_resp_ready),
    .debug_resp_valid(SimDTM_debug_resp_valid),
    .debug_resp_bits_data(SimDTM_debug_resp_bits_data),
    .debug_resp_bits_resp(SimDTM_debug_resp_bits_resp),
    .exit(SimDTM_exit)
  );
  assign _T_2 = SimDTM_exit >= 32'h2; // @[debug.scala 79:19]
  assign _T_3 = {{1'd0}, SimDTM_exit[31:1]}; // @[debug.scala 80:59]
  assign _T_5 = ~reset; // @[debug.scala 80:13]
  assign io_success = SimDTM_exit == 32'h1; // @[debug.scala 78:15]
  assign tile_clock = clock;
  assign tile_reset = reset;
  assign tile_io_dmi_req_valid = SimDTM_debug_req_valid; // @[debug.scala 76:11]
  assign tile_io_dmi_req_bits_op = SimDTM_debug_req_bits_op; // @[debug.scala 76:11]
  assign tile_io_dmi_req_bits_addr = SimDTM_debug_req_bits_addr; // @[debug.scala 76:11]
  assign tile_io_dmi_req_bits_data = SimDTM_debug_req_bits_data; // @[debug.scala 76:11]
  assign SimDTM_clk = clock; // @[debug.scala 74:12]
  assign SimDTM_reset = reset; // @[debug.scala 75:14]
  assign SimDTM_debug_req_ready = tile_io_dmi_req_ready; // @[debug.scala 76:11]
  assign SimDTM_debug_resp_valid = tile_io_dmi_resp_valid; // @[debug.scala 76:11]
  assign SimDTM_debug_resp_bits_data = tile_io_dmi_resp_bits_data; // @[debug.scala 76:11]
  assign SimDTM_debug_resp_bits_resp = 2'h0; // @[debug.scala 76:11]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_2 & _T_5) begin
          $fwrite(32'h80000002,"*** FAILED *** (exit code = %d)\n",_T_3); // @[debug.scala 80:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
