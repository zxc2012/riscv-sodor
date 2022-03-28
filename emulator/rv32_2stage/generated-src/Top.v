module CtlPath(
  output        io_dmem_req_valid,
  output        io_dmem_req_bits_fcn,
  output [2:0]  io_dmem_req_bits_typ,
  input         io_dmem_resp_valid,
  input  [31:0] io_dat_inst,
  input         io_dat_br_eq,
  input         io_dat_br_lt,
  input         io_dat_br_ltu,
  input         io_dat_csr_eret,
  output        io_ctl_stall,
  output        io_ctl_if_kill,
  output [2:0]  io_ctl_pc_sel,
  output [1:0]  io_ctl_op1_sel,
  output [2:0]  io_ctl_op2_sel,
  output [4:0]  io_ctl_alu_fun,
  output [1:0]  io_ctl_wb_sel,
  output        io_ctl_rf_wen,
  output [2:0]  io_ctl_csr_cmd,
  output        io_ctl_exception
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
  wire [3:0] cs_br_type; // @[Lookup.scala 33:37]
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
  wire [3:0] _T_303; // @[Lookup.scala 33:37]
  wire [3:0] _T_304; // @[Lookup.scala 33:37]
  wire [3:0] _T_305; // @[Lookup.scala 33:37]
  wire [3:0] _T_306; // @[Lookup.scala 33:37]
  wire [3:0] _T_307; // @[Lookup.scala 33:37]
  wire [3:0] _T_308; // @[Lookup.scala 33:37]
  wire [3:0] _T_309; // @[Lookup.scala 33:37]
  wire [3:0] _T_310; // @[Lookup.scala 33:37]
  wire [3:0] _T_311; // @[Lookup.scala 33:37]
  wire [3:0] _T_312; // @[Lookup.scala 33:37]
  wire [3:0] _T_313; // @[Lookup.scala 33:37]
  wire [3:0] _T_314; // @[Lookup.scala 33:37]
  wire [3:0] _T_315; // @[Lookup.scala 33:37]
  wire [3:0] _T_316; // @[Lookup.scala 33:37]
  wire [3:0] _T_317; // @[Lookup.scala 33:37]
  wire [3:0] _T_318; // @[Lookup.scala 33:37]
  wire [3:0] _T_319; // @[Lookup.scala 33:37]
  wire [3:0] _T_320; // @[Lookup.scala 33:37]
  wire [3:0] _T_321; // @[Lookup.scala 33:37]
  wire [3:0] _T_322; // @[Lookup.scala 33:37]
  wire [3:0] _T_323; // @[Lookup.scala 33:37]
  wire [3:0] _T_324; // @[Lookup.scala 33:37]
  wire [3:0] _T_325; // @[Lookup.scala 33:37]
  wire [3:0] _T_326; // @[Lookup.scala 33:37]
  wire [3:0] _T_327; // @[Lookup.scala 33:37]
  wire [3:0] _T_328; // @[Lookup.scala 33:37]
  wire [3:0] _T_329; // @[Lookup.scala 33:37]
  wire [3:0] _T_330; // @[Lookup.scala 33:37]
  wire [3:0] _T_331; // @[Lookup.scala 33:37]
  wire [3:0] _T_332; // @[Lookup.scala 33:37]
  wire [3:0] _T_333; // @[Lookup.scala 33:37]
  wire [3:0] _T_334; // @[Lookup.scala 33:37]
  wire [3:0] _T_335; // @[Lookup.scala 33:37]
  wire [3:0] _T_336; // @[Lookup.scala 33:37]
  wire [3:0] _T_337; // @[Lookup.scala 33:37]
  wire [3:0] _T_338; // @[Lookup.scala 33:37]
  wire [3:0] _T_339; // @[Lookup.scala 33:37]
  wire [3:0] _T_340; // @[Lookup.scala 33:37]
  wire [3:0] _T_341; // @[Lookup.scala 33:37]
  wire [3:0] _T_342; // @[Lookup.scala 33:37]
  wire [3:0] _T_343; // @[Lookup.scala 33:37]
  wire [3:0] _T_344; // @[Lookup.scala 33:37]
  wire [3:0] cs_alu_fun; // @[Lookup.scala 33:37]
  wire [1:0] _T_352; // @[Lookup.scala 33:37]
  wire [1:0] _T_353; // @[Lookup.scala 33:37]
  wire [1:0] _T_354; // @[Lookup.scala 33:37]
  wire [1:0] _T_355; // @[Lookup.scala 33:37]
  wire [1:0] _T_356; // @[Lookup.scala 33:37]
  wire [1:0] _T_357; // @[Lookup.scala 33:37]
  wire [1:0] _T_358; // @[Lookup.scala 33:37]
  wire [1:0] _T_359; // @[Lookup.scala 33:37]
  wire [1:0] _T_360; // @[Lookup.scala 33:37]
  wire [1:0] _T_361; // @[Lookup.scala 33:37]
  wire [1:0] _T_362; // @[Lookup.scala 33:37]
  wire [1:0] _T_363; // @[Lookup.scala 33:37]
  wire [1:0] _T_364; // @[Lookup.scala 33:37]
  wire [1:0] _T_365; // @[Lookup.scala 33:37]
  wire [1:0] _T_366; // @[Lookup.scala 33:37]
  wire [1:0] _T_367; // @[Lookup.scala 33:37]
  wire [1:0] _T_368; // @[Lookup.scala 33:37]
  wire [1:0] _T_369; // @[Lookup.scala 33:37]
  wire [1:0] _T_370; // @[Lookup.scala 33:37]
  wire [1:0] _T_371; // @[Lookup.scala 33:37]
  wire [1:0] _T_372; // @[Lookup.scala 33:37]
  wire [1:0] _T_373; // @[Lookup.scala 33:37]
  wire [1:0] _T_374; // @[Lookup.scala 33:37]
  wire [1:0] _T_375; // @[Lookup.scala 33:37]
  wire [1:0] _T_376; // @[Lookup.scala 33:37]
  wire [1:0] _T_377; // @[Lookup.scala 33:37]
  wire [1:0] _T_378; // @[Lookup.scala 33:37]
  wire [1:0] _T_379; // @[Lookup.scala 33:37]
  wire [1:0] _T_380; // @[Lookup.scala 33:37]
  wire [1:0] _T_381; // @[Lookup.scala 33:37]
  wire [1:0] _T_382; // @[Lookup.scala 33:37]
  wire [1:0] _T_383; // @[Lookup.scala 33:37]
  wire [1:0] _T_384; // @[Lookup.scala 33:37]
  wire [1:0] _T_385; // @[Lookup.scala 33:37]
  wire [1:0] _T_386; // @[Lookup.scala 33:37]
  wire [1:0] _T_387; // @[Lookup.scala 33:37]
  wire [1:0] _T_388; // @[Lookup.scala 33:37]
  wire [1:0] _T_389; // @[Lookup.scala 33:37]
  wire [1:0] _T_390; // @[Lookup.scala 33:37]
  wire [1:0] _T_391; // @[Lookup.scala 33:37]
  wire [1:0] _T_392; // @[Lookup.scala 33:37]
  wire [1:0] _T_393; // @[Lookup.scala 33:37]
  wire  _T_402; // @[Lookup.scala 33:37]
  wire  _T_403; // @[Lookup.scala 33:37]
  wire  _T_404; // @[Lookup.scala 33:37]
  wire  _T_405; // @[Lookup.scala 33:37]
  wire  _T_406; // @[Lookup.scala 33:37]
  wire  _T_407; // @[Lookup.scala 33:37]
  wire  _T_408; // @[Lookup.scala 33:37]
  wire  _T_409; // @[Lookup.scala 33:37]
  wire  _T_410; // @[Lookup.scala 33:37]
  wire  _T_411; // @[Lookup.scala 33:37]
  wire  _T_412; // @[Lookup.scala 33:37]
  wire  _T_413; // @[Lookup.scala 33:37]
  wire  _T_414; // @[Lookup.scala 33:37]
  wire  _T_415; // @[Lookup.scala 33:37]
  wire  _T_416; // @[Lookup.scala 33:37]
  wire  _T_417; // @[Lookup.scala 33:37]
  wire  _T_418; // @[Lookup.scala 33:37]
  wire  _T_419; // @[Lookup.scala 33:37]
  wire  _T_420; // @[Lookup.scala 33:37]
  wire  _T_421; // @[Lookup.scala 33:37]
  wire  _T_422; // @[Lookup.scala 33:37]
  wire  _T_423; // @[Lookup.scala 33:37]
  wire  _T_424; // @[Lookup.scala 33:37]
  wire  _T_425; // @[Lookup.scala 33:37]
  wire  _T_426; // @[Lookup.scala 33:37]
  wire  _T_427; // @[Lookup.scala 33:37]
  wire  _T_428; // @[Lookup.scala 33:37]
  wire  _T_429; // @[Lookup.scala 33:37]
  wire  _T_430; // @[Lookup.scala 33:37]
  wire  _T_431; // @[Lookup.scala 33:37]
  wire  _T_432; // @[Lookup.scala 33:37]
  wire  _T_433; // @[Lookup.scala 33:37]
  wire  _T_434; // @[Lookup.scala 33:37]
  wire  _T_435; // @[Lookup.scala 33:37]
  wire  _T_436; // @[Lookup.scala 33:37]
  wire  _T_437; // @[Lookup.scala 33:37]
  wire  _T_438; // @[Lookup.scala 33:37]
  wire  _T_439; // @[Lookup.scala 33:37]
  wire  _T_440; // @[Lookup.scala 33:37]
  wire  _T_441; // @[Lookup.scala 33:37]
  wire  _T_442; // @[Lookup.scala 33:37]
  wire  cs0_0; // @[Lookup.scala 33:37]
  wire  _T_444; // @[Lookup.scala 33:37]
  wire  _T_445; // @[Lookup.scala 33:37]
  wire  _T_446; // @[Lookup.scala 33:37]
  wire  _T_447; // @[Lookup.scala 33:37]
  wire  _T_448; // @[Lookup.scala 33:37]
  wire  _T_449; // @[Lookup.scala 33:37]
  wire  _T_450; // @[Lookup.scala 33:37]
  wire  _T_451; // @[Lookup.scala 33:37]
  wire  _T_452; // @[Lookup.scala 33:37]
  wire  _T_453; // @[Lookup.scala 33:37]
  wire  _T_454; // @[Lookup.scala 33:37]
  wire  _T_455; // @[Lookup.scala 33:37]
  wire  _T_456; // @[Lookup.scala 33:37]
  wire  _T_457; // @[Lookup.scala 33:37]
  wire  _T_458; // @[Lookup.scala 33:37]
  wire  _T_459; // @[Lookup.scala 33:37]
  wire  _T_460; // @[Lookup.scala 33:37]
  wire  _T_461; // @[Lookup.scala 33:37]
  wire  _T_462; // @[Lookup.scala 33:37]
  wire  _T_463; // @[Lookup.scala 33:37]
  wire  _T_464; // @[Lookup.scala 33:37]
  wire  _T_465; // @[Lookup.scala 33:37]
  wire  _T_466; // @[Lookup.scala 33:37]
  wire  _T_467; // @[Lookup.scala 33:37]
  wire  _T_468; // @[Lookup.scala 33:37]
  wire  _T_469; // @[Lookup.scala 33:37]
  wire  _T_470; // @[Lookup.scala 33:37]
  wire  _T_471; // @[Lookup.scala 33:37]
  wire  _T_472; // @[Lookup.scala 33:37]
  wire  _T_473; // @[Lookup.scala 33:37]
  wire  _T_474; // @[Lookup.scala 33:37]
  wire  _T_475; // @[Lookup.scala 33:37]
  wire  _T_476; // @[Lookup.scala 33:37]
  wire  _T_477; // @[Lookup.scala 33:37]
  wire  _T_478; // @[Lookup.scala 33:37]
  wire  _T_479; // @[Lookup.scala 33:37]
  wire  _T_480; // @[Lookup.scala 33:37]
  wire  _T_481; // @[Lookup.scala 33:37]
  wire  _T_482; // @[Lookup.scala 33:37]
  wire  _T_483; // @[Lookup.scala 33:37]
  wire  _T_484; // @[Lookup.scala 33:37]
  wire  _T_485; // @[Lookup.scala 33:37]
  wire  _T_486; // @[Lookup.scala 33:37]
  wire  _T_487; // @[Lookup.scala 33:37]
  wire  _T_488; // @[Lookup.scala 33:37]
  wire  _T_489; // @[Lookup.scala 33:37]
  wire  _T_490; // @[Lookup.scala 33:37]
  wire  _T_491; // @[Lookup.scala 33:37]
  wire  cs0_1; // @[Lookup.scala 33:37]
  wire  _T_535; // @[Lookup.scala 33:37]
  wire  _T_536; // @[Lookup.scala 33:37]
  wire  _T_537; // @[Lookup.scala 33:37]
  wire  _T_538; // @[Lookup.scala 33:37]
  wire  _T_539; // @[Lookup.scala 33:37]
  wire  _T_540; // @[Lookup.scala 33:37]
  wire [2:0] _T_583; // @[Lookup.scala 33:37]
  wire [2:0] _T_584; // @[Lookup.scala 33:37]
  wire [2:0] _T_585; // @[Lookup.scala 33:37]
  wire [2:0] _T_586; // @[Lookup.scala 33:37]
  wire [2:0] _T_587; // @[Lookup.scala 33:37]
  wire [2:0] _T_588; // @[Lookup.scala 33:37]
  wire [2:0] _T_589; // @[Lookup.scala 33:37]
  wire [2:0] _T_593; // @[Lookup.scala 33:37]
  wire [2:0] _T_594; // @[Lookup.scala 33:37]
  wire [2:0] _T_595; // @[Lookup.scala 33:37]
  wire [2:0] _T_596; // @[Lookup.scala 33:37]
  wire [2:0] _T_597; // @[Lookup.scala 33:37]
  wire [2:0] _T_598; // @[Lookup.scala 33:37]
  wire [2:0] _T_599; // @[Lookup.scala 33:37]
  wire [2:0] _T_600; // @[Lookup.scala 33:37]
  wire [2:0] _T_601; // @[Lookup.scala 33:37]
  wire [2:0] _T_602; // @[Lookup.scala 33:37]
  wire [2:0] _T_603; // @[Lookup.scala 33:37]
  wire [2:0] _T_604; // @[Lookup.scala 33:37]
  wire [2:0] _T_605; // @[Lookup.scala 33:37]
  wire [2:0] _T_606; // @[Lookup.scala 33:37]
  wire [2:0] _T_607; // @[Lookup.scala 33:37]
  wire [2:0] _T_608; // @[Lookup.scala 33:37]
  wire [2:0] _T_609; // @[Lookup.scala 33:37]
  wire [2:0] _T_610; // @[Lookup.scala 33:37]
  wire [2:0] _T_611; // @[Lookup.scala 33:37]
  wire [2:0] _T_612; // @[Lookup.scala 33:37]
  wire [2:0] _T_613; // @[Lookup.scala 33:37]
  wire [2:0] _T_614; // @[Lookup.scala 33:37]
  wire [2:0] _T_615; // @[Lookup.scala 33:37]
  wire [2:0] _T_616; // @[Lookup.scala 33:37]
  wire [2:0] _T_617; // @[Lookup.scala 33:37]
  wire [2:0] _T_618; // @[Lookup.scala 33:37]
  wire [2:0] _T_619; // @[Lookup.scala 33:37]
  wire [2:0] _T_620; // @[Lookup.scala 33:37]
  wire [2:0] _T_621; // @[Lookup.scala 33:37]
  wire [2:0] _T_622; // @[Lookup.scala 33:37]
  wire [2:0] _T_623; // @[Lookup.scala 33:37]
  wire [2:0] _T_624; // @[Lookup.scala 33:37]
  wire [2:0] _T_625; // @[Lookup.scala 33:37]
  wire [2:0] _T_626; // @[Lookup.scala 33:37]
  wire [2:0] _T_627; // @[Lookup.scala 33:37]
  wire [2:0] _T_628; // @[Lookup.scala 33:37]
  wire [2:0] _T_629; // @[Lookup.scala 33:37]
  wire [2:0] _T_630; // @[Lookup.scala 33:37]
  wire [2:0] _T_631; // @[Lookup.scala 33:37]
  wire [2:0] _T_632; // @[Lookup.scala 33:37]
  wire [2:0] _T_633; // @[Lookup.scala 33:37]
  wire [2:0] _T_634; // @[Lookup.scala 33:37]
  wire [2:0] _T_635; // @[Lookup.scala 33:37]
  wire [2:0] _T_636; // @[Lookup.scala 33:37]
  wire [2:0] _T_637; // @[Lookup.scala 33:37]
  wire [2:0] _T_638; // @[Lookup.scala 33:37]
  wire [2:0] cs0_4; // @[Lookup.scala 33:37]
  wire  _T_639; // @[cpath.scala 120:43]
  wire  _T_640; // @[cpath.scala 122:37]
  wire  _T_641; // @[cpath.scala 123:37]
  wire  _T_642; // @[cpath.scala 123:54]
  wire [2:0] _T_643; // @[cpath.scala 123:53]
  wire  _T_644; // @[cpath.scala 124:37]
  wire [2:0] _T_645; // @[cpath.scala 124:53]
  wire  _T_646; // @[cpath.scala 125:37]
  wire  _T_647; // @[cpath.scala 125:54]
  wire [2:0] _T_648; // @[cpath.scala 125:53]
  wire  _T_649; // @[cpath.scala 126:37]
  wire  _T_650; // @[cpath.scala 126:54]
  wire [2:0] _T_651; // @[cpath.scala 126:53]
  wire  _T_652; // @[cpath.scala 127:37]
  wire [2:0] _T_653; // @[cpath.scala 127:53]
  wire  _T_654; // @[cpath.scala 128:37]
  wire [2:0] _T_655; // @[cpath.scala 128:53]
  wire  _T_656; // @[cpath.scala 129:37]
  wire  _T_657; // @[cpath.scala 130:37]
  wire [2:0] _T_658; // @[cpath.scala 130:25]
  wire [2:0] _T_659; // @[cpath.scala 129:25]
  wire [2:0] _T_660; // @[cpath.scala 128:25]
  wire [2:0] _T_661; // @[cpath.scala 127:25]
  wire [2:0] _T_662; // @[cpath.scala 126:25]
  wire [2:0] _T_663; // @[cpath.scala 125:25]
  wire [2:0] _T_664; // @[cpath.scala 124:25]
  wire [2:0] _T_665; // @[cpath.scala 123:25]
  wire [2:0] _T_666; // @[cpath.scala 122:25]
  wire [2:0] ctrl_pc_sel; // @[cpath.scala 120:25]
  wire  _T_668; // @[cpath.scala 134:52]
  wire  _T_669; // @[cpath.scala 134:78]
  wire  _T_670; // @[cpath.scala 134:75]
  wire  stall; // @[cpath.scala 134:39]
  wire  _T_672; // @[cpath.scala 136:31]
  wire [4:0] rs1_addr; // @[cpath.scala 149:30]
  wire  _T_674; // @[cpath.scala 150:30]
  wire  _T_675; // @[cpath.scala 150:54]
  wire  _T_676; // @[cpath.scala 150:40]
  wire  _T_677; // @[cpath.scala 150:77]
  wire  csr_ren; // @[cpath.scala 150:65]
  wire [2:0] csr_cmd; // @[cpath.scala 151:21]
  assign _T = io_dat_inst & 32'h707f; // @[Lookup.scala 31:38]
  assign _T_1 = 32'h2003 == _T; // @[Lookup.scala 31:38]
  assign _T_3 = 32'h3 == _T; // @[Lookup.scala 31:38]
  assign _T_5 = 32'h4003 == _T; // @[Lookup.scala 31:38]
  assign _T_7 = 32'h1003 == _T; // @[Lookup.scala 31:38]
  assign _T_9 = 32'h5003 == _T; // @[Lookup.scala 31:38]
  assign _T_11 = 32'h2023 == _T; // @[Lookup.scala 31:38]
  assign _T_13 = 32'h23 == _T; // @[Lookup.scala 31:38]
  assign _T_15 = 32'h1023 == _T; // @[Lookup.scala 31:38]
  assign _T_16 = io_dat_inst & 32'h7f; // @[Lookup.scala 31:38]
  assign _T_17 = 32'h17 == _T_16; // @[Lookup.scala 31:38]
  assign _T_19 = 32'h37 == _T_16; // @[Lookup.scala 31:38]
  assign _T_21 = 32'h13 == _T; // @[Lookup.scala 31:38]
  assign _T_23 = 32'h7013 == _T; // @[Lookup.scala 31:38]
  assign _T_25 = 32'h6013 == _T; // @[Lookup.scala 31:38]
  assign _T_27 = 32'h4013 == _T; // @[Lookup.scala 31:38]
  assign _T_29 = 32'h2013 == _T; // @[Lookup.scala 31:38]
  assign _T_31 = 32'h3013 == _T; // @[Lookup.scala 31:38]
  assign _T_32 = io_dat_inst & 32'hfc00707f; // @[Lookup.scala 31:38]
  assign _T_33 = 32'h1013 == _T_32; // @[Lookup.scala 31:38]
  assign _T_35 = 32'h40005013 == _T_32; // @[Lookup.scala 31:38]
  assign _T_37 = 32'h5013 == _T_32; // @[Lookup.scala 31:38]
  assign _T_38 = io_dat_inst & 32'hfe00707f; // @[Lookup.scala 31:38]
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
  assign _T_87 = 32'h73 == io_dat_inst; // @[Lookup.scala 31:38]
  assign _T_89 = 32'h30200073 == io_dat_inst; // @[Lookup.scala 31:38]
  assign _T_91 = 32'h7b200073 == io_dat_inst; // @[Lookup.scala 31:38]
  assign _T_93 = 32'h100073 == io_dat_inst; // @[Lookup.scala 31:38]
  assign _T_95 = 32'h10500073 == io_dat_inst; // @[Lookup.scala 31:38]
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
  assign cs_br_type = _T_1 ? 4'h0 : _T_197; // @[Lookup.scala 33:37]
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
  assign _T_238 = _T_19 ? 2'h1 : _T_237; // @[Lookup.scala 33:37]
  assign _T_239 = _T_17 ? 2'h1 : _T_238; // @[Lookup.scala 33:37]
  assign _T_240 = _T_15 ? 2'h0 : _T_239; // @[Lookup.scala 33:37]
  assign _T_241 = _T_13 ? 2'h0 : _T_240; // @[Lookup.scala 33:37]
  assign _T_242 = _T_11 ? 2'h0 : _T_241; // @[Lookup.scala 33:37]
  assign _T_243 = _T_9 ? 2'h0 : _T_242; // @[Lookup.scala 33:37]
  assign _T_244 = _T_7 ? 2'h0 : _T_243; // @[Lookup.scala 33:37]
  assign _T_245 = _T_5 ? 2'h0 : _T_244; // @[Lookup.scala 33:37]
  assign _T_246 = _T_3 ? 2'h0 : _T_245; // @[Lookup.scala 33:37]
  assign _T_266 = _T_61 ? 3'h2 : 3'h0; // @[Lookup.scala 33:37]
  assign _T_267 = _T_59 ? 3'h0 : _T_266; // @[Lookup.scala 33:37]
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
  assign _T_278 = _T_37 ? 3'h2 : _T_277; // @[Lookup.scala 33:37]
  assign _T_279 = _T_35 ? 3'h2 : _T_278; // @[Lookup.scala 33:37]
  assign _T_280 = _T_33 ? 3'h2 : _T_279; // @[Lookup.scala 33:37]
  assign _T_281 = _T_31 ? 3'h2 : _T_280; // @[Lookup.scala 33:37]
  assign _T_282 = _T_29 ? 3'h2 : _T_281; // @[Lookup.scala 33:37]
  assign _T_283 = _T_27 ? 3'h2 : _T_282; // @[Lookup.scala 33:37]
  assign _T_284 = _T_25 ? 3'h2 : _T_283; // @[Lookup.scala 33:37]
  assign _T_285 = _T_23 ? 3'h2 : _T_284; // @[Lookup.scala 33:37]
  assign _T_286 = _T_21 ? 3'h2 : _T_285; // @[Lookup.scala 33:37]
  assign _T_287 = _T_19 ? 3'h0 : _T_286; // @[Lookup.scala 33:37]
  assign _T_288 = _T_17 ? 3'h1 : _T_287; // @[Lookup.scala 33:37]
  assign _T_289 = _T_15 ? 3'h3 : _T_288; // @[Lookup.scala 33:37]
  assign _T_290 = _T_13 ? 3'h3 : _T_289; // @[Lookup.scala 33:37]
  assign _T_291 = _T_11 ? 3'h3 : _T_290; // @[Lookup.scala 33:37]
  assign _T_292 = _T_9 ? 3'h2 : _T_291; // @[Lookup.scala 33:37]
  assign _T_293 = _T_7 ? 3'h2 : _T_292; // @[Lookup.scala 33:37]
  assign _T_294 = _T_5 ? 3'h2 : _T_293; // @[Lookup.scala 33:37]
  assign _T_295 = _T_3 ? 3'h2 : _T_294; // @[Lookup.scala 33:37]
  assign _T_303 = _T_85 ? 4'hb : 4'h0; // @[Lookup.scala 33:37]
  assign _T_304 = _T_83 ? 4'hb : _T_303; // @[Lookup.scala 33:37]
  assign _T_305 = _T_81 ? 4'hb : _T_304; // @[Lookup.scala 33:37]
  assign _T_306 = _T_79 ? 4'hb : _T_305; // @[Lookup.scala 33:37]
  assign _T_307 = _T_77 ? 4'hb : _T_306; // @[Lookup.scala 33:37]
  assign _T_308 = _T_75 ? 4'hb : _T_307; // @[Lookup.scala 33:37]
  assign _T_309 = _T_73 ? 4'h0 : _T_308; // @[Lookup.scala 33:37]
  assign _T_310 = _T_71 ? 4'h0 : _T_309; // @[Lookup.scala 33:37]
  assign _T_311 = _T_69 ? 4'h0 : _T_310; // @[Lookup.scala 33:37]
  assign _T_312 = _T_67 ? 4'h0 : _T_311; // @[Lookup.scala 33:37]
  assign _T_313 = _T_65 ? 4'h0 : _T_312; // @[Lookup.scala 33:37]
  assign _T_314 = _T_63 ? 4'h0 : _T_313; // @[Lookup.scala 33:37]
  assign _T_315 = _T_61 ? 4'h0 : _T_314; // @[Lookup.scala 33:37]
  assign _T_316 = _T_59 ? 4'h0 : _T_315; // @[Lookup.scala 33:37]
  assign _T_317 = _T_57 ? 4'h4 : _T_316; // @[Lookup.scala 33:37]
  assign _T_318 = _T_55 ? 4'h5 : _T_317; // @[Lookup.scala 33:37]
  assign _T_319 = _T_53 ? 4'h8 : _T_318; // @[Lookup.scala 33:37]
  assign _T_320 = _T_51 ? 4'h7 : _T_319; // @[Lookup.scala 33:37]
  assign _T_321 = _T_49 ? 4'h6 : _T_320; // @[Lookup.scala 33:37]
  assign _T_322 = _T_47 ? 4'ha : _T_321; // @[Lookup.scala 33:37]
  assign _T_323 = _T_45 ? 4'h9 : _T_322; // @[Lookup.scala 33:37]
  assign _T_324 = _T_43 ? 4'h2 : _T_323; // @[Lookup.scala 33:37]
  assign _T_325 = _T_41 ? 4'h1 : _T_324; // @[Lookup.scala 33:37]
  assign _T_326 = _T_39 ? 4'h3 : _T_325; // @[Lookup.scala 33:37]
  assign _T_327 = _T_37 ? 4'h4 : _T_326; // @[Lookup.scala 33:37]
  assign _T_328 = _T_35 ? 4'h5 : _T_327; // @[Lookup.scala 33:37]
  assign _T_329 = _T_33 ? 4'h3 : _T_328; // @[Lookup.scala 33:37]
  assign _T_330 = _T_31 ? 4'ha : _T_329; // @[Lookup.scala 33:37]
  assign _T_331 = _T_29 ? 4'h9 : _T_330; // @[Lookup.scala 33:37]
  assign _T_332 = _T_27 ? 4'h8 : _T_331; // @[Lookup.scala 33:37]
  assign _T_333 = _T_25 ? 4'h7 : _T_332; // @[Lookup.scala 33:37]
  assign _T_334 = _T_23 ? 4'h6 : _T_333; // @[Lookup.scala 33:37]
  assign _T_335 = _T_21 ? 4'h1 : _T_334; // @[Lookup.scala 33:37]
  assign _T_336 = _T_19 ? 4'hb : _T_335; // @[Lookup.scala 33:37]
  assign _T_337 = _T_17 ? 4'h1 : _T_336; // @[Lookup.scala 33:37]
  assign _T_338 = _T_15 ? 4'h1 : _T_337; // @[Lookup.scala 33:37]
  assign _T_339 = _T_13 ? 4'h1 : _T_338; // @[Lookup.scala 33:37]
  assign _T_340 = _T_11 ? 4'h1 : _T_339; // @[Lookup.scala 33:37]
  assign _T_341 = _T_9 ? 4'h1 : _T_340; // @[Lookup.scala 33:37]
  assign _T_342 = _T_7 ? 4'h1 : _T_341; // @[Lookup.scala 33:37]
  assign _T_343 = _T_5 ? 4'h1 : _T_342; // @[Lookup.scala 33:37]
  assign _T_344 = _T_3 ? 4'h1 : _T_343; // @[Lookup.scala 33:37]
  assign cs_alu_fun = _T_1 ? 4'h1 : _T_344; // @[Lookup.scala 33:37]
  assign _T_352 = _T_85 ? 2'h3 : 2'h0; // @[Lookup.scala 33:37]
  assign _T_353 = _T_83 ? 2'h3 : _T_352; // @[Lookup.scala 33:37]
  assign _T_354 = _T_81 ? 2'h3 : _T_353; // @[Lookup.scala 33:37]
  assign _T_355 = _T_79 ? 2'h3 : _T_354; // @[Lookup.scala 33:37]
  assign _T_356 = _T_77 ? 2'h3 : _T_355; // @[Lookup.scala 33:37]
  assign _T_357 = _T_75 ? 2'h3 : _T_356; // @[Lookup.scala 33:37]
  assign _T_358 = _T_73 ? 2'h0 : _T_357; // @[Lookup.scala 33:37]
  assign _T_359 = _T_71 ? 2'h0 : _T_358; // @[Lookup.scala 33:37]
  assign _T_360 = _T_69 ? 2'h0 : _T_359; // @[Lookup.scala 33:37]
  assign _T_361 = _T_67 ? 2'h0 : _T_360; // @[Lookup.scala 33:37]
  assign _T_362 = _T_65 ? 2'h0 : _T_361; // @[Lookup.scala 33:37]
  assign _T_363 = _T_63 ? 2'h0 : _T_362; // @[Lookup.scala 33:37]
  assign _T_364 = _T_61 ? 2'h2 : _T_363; // @[Lookup.scala 33:37]
  assign _T_365 = _T_59 ? 2'h2 : _T_364; // @[Lookup.scala 33:37]
  assign _T_366 = _T_57 ? 2'h0 : _T_365; // @[Lookup.scala 33:37]
  assign _T_367 = _T_55 ? 2'h0 : _T_366; // @[Lookup.scala 33:37]
  assign _T_368 = _T_53 ? 2'h0 : _T_367; // @[Lookup.scala 33:37]
  assign _T_369 = _T_51 ? 2'h0 : _T_368; // @[Lookup.scala 33:37]
  assign _T_370 = _T_49 ? 2'h0 : _T_369; // @[Lookup.scala 33:37]
  assign _T_371 = _T_47 ? 2'h0 : _T_370; // @[Lookup.scala 33:37]
  assign _T_372 = _T_45 ? 2'h0 : _T_371; // @[Lookup.scala 33:37]
  assign _T_373 = _T_43 ? 2'h0 : _T_372; // @[Lookup.scala 33:37]
  assign _T_374 = _T_41 ? 2'h0 : _T_373; // @[Lookup.scala 33:37]
  assign _T_375 = _T_39 ? 2'h0 : _T_374; // @[Lookup.scala 33:37]
  assign _T_376 = _T_37 ? 2'h0 : _T_375; // @[Lookup.scala 33:37]
  assign _T_377 = _T_35 ? 2'h0 : _T_376; // @[Lookup.scala 33:37]
  assign _T_378 = _T_33 ? 2'h0 : _T_377; // @[Lookup.scala 33:37]
  assign _T_379 = _T_31 ? 2'h0 : _T_378; // @[Lookup.scala 33:37]
  assign _T_380 = _T_29 ? 2'h0 : _T_379; // @[Lookup.scala 33:37]
  assign _T_381 = _T_27 ? 2'h0 : _T_380; // @[Lookup.scala 33:37]
  assign _T_382 = _T_25 ? 2'h0 : _T_381; // @[Lookup.scala 33:37]
  assign _T_383 = _T_23 ? 2'h0 : _T_382; // @[Lookup.scala 33:37]
  assign _T_384 = _T_21 ? 2'h0 : _T_383; // @[Lookup.scala 33:37]
  assign _T_385 = _T_19 ? 2'h0 : _T_384; // @[Lookup.scala 33:37]
  assign _T_386 = _T_17 ? 2'h0 : _T_385; // @[Lookup.scala 33:37]
  assign _T_387 = _T_15 ? 2'h0 : _T_386; // @[Lookup.scala 33:37]
  assign _T_388 = _T_13 ? 2'h0 : _T_387; // @[Lookup.scala 33:37]
  assign _T_389 = _T_11 ? 2'h0 : _T_388; // @[Lookup.scala 33:37]
  assign _T_390 = _T_9 ? 2'h1 : _T_389; // @[Lookup.scala 33:37]
  assign _T_391 = _T_7 ? 2'h1 : _T_390; // @[Lookup.scala 33:37]
  assign _T_392 = _T_5 ? 2'h1 : _T_391; // @[Lookup.scala 33:37]
  assign _T_393 = _T_3 ? 2'h1 : _T_392; // @[Lookup.scala 33:37]
  assign _T_402 = _T_83 | _T_85; // @[Lookup.scala 33:37]
  assign _T_403 = _T_81 | _T_402; // @[Lookup.scala 33:37]
  assign _T_404 = _T_79 | _T_403; // @[Lookup.scala 33:37]
  assign _T_405 = _T_77 | _T_404; // @[Lookup.scala 33:37]
  assign _T_406 = _T_75 | _T_405; // @[Lookup.scala 33:37]
  assign _T_407 = _T_73 ? 1'h0 : _T_406; // @[Lookup.scala 33:37]
  assign _T_408 = _T_71 ? 1'h0 : _T_407; // @[Lookup.scala 33:37]
  assign _T_409 = _T_69 ? 1'h0 : _T_408; // @[Lookup.scala 33:37]
  assign _T_410 = _T_67 ? 1'h0 : _T_409; // @[Lookup.scala 33:37]
  assign _T_411 = _T_65 ? 1'h0 : _T_410; // @[Lookup.scala 33:37]
  assign _T_412 = _T_63 ? 1'h0 : _T_411; // @[Lookup.scala 33:37]
  assign _T_413 = _T_61 | _T_412; // @[Lookup.scala 33:37]
  assign _T_414 = _T_59 | _T_413; // @[Lookup.scala 33:37]
  assign _T_415 = _T_57 | _T_414; // @[Lookup.scala 33:37]
  assign _T_416 = _T_55 | _T_415; // @[Lookup.scala 33:37]
  assign _T_417 = _T_53 | _T_416; // @[Lookup.scala 33:37]
  assign _T_418 = _T_51 | _T_417; // @[Lookup.scala 33:37]
  assign _T_419 = _T_49 | _T_418; // @[Lookup.scala 33:37]
  assign _T_420 = _T_47 | _T_419; // @[Lookup.scala 33:37]
  assign _T_421 = _T_45 | _T_420; // @[Lookup.scala 33:37]
  assign _T_422 = _T_43 | _T_421; // @[Lookup.scala 33:37]
  assign _T_423 = _T_41 | _T_422; // @[Lookup.scala 33:37]
  assign _T_424 = _T_39 | _T_423; // @[Lookup.scala 33:37]
  assign _T_425 = _T_37 | _T_424; // @[Lookup.scala 33:37]
  assign _T_426 = _T_35 | _T_425; // @[Lookup.scala 33:37]
  assign _T_427 = _T_33 | _T_426; // @[Lookup.scala 33:37]
  assign _T_428 = _T_31 | _T_427; // @[Lookup.scala 33:37]
  assign _T_429 = _T_29 | _T_428; // @[Lookup.scala 33:37]
  assign _T_430 = _T_27 | _T_429; // @[Lookup.scala 33:37]
  assign _T_431 = _T_25 | _T_430; // @[Lookup.scala 33:37]
  assign _T_432 = _T_23 | _T_431; // @[Lookup.scala 33:37]
  assign _T_433 = _T_21 | _T_432; // @[Lookup.scala 33:37]
  assign _T_434 = _T_19 | _T_433; // @[Lookup.scala 33:37]
  assign _T_435 = _T_17 | _T_434; // @[Lookup.scala 33:37]
  assign _T_436 = _T_15 ? 1'h0 : _T_435; // @[Lookup.scala 33:37]
  assign _T_437 = _T_13 ? 1'h0 : _T_436; // @[Lookup.scala 33:37]
  assign _T_438 = _T_11 ? 1'h0 : _T_437; // @[Lookup.scala 33:37]
  assign _T_439 = _T_9 | _T_438; // @[Lookup.scala 33:37]
  assign _T_440 = _T_7 | _T_439; // @[Lookup.scala 33:37]
  assign _T_441 = _T_5 | _T_440; // @[Lookup.scala 33:37]
  assign _T_442 = _T_3 | _T_441; // @[Lookup.scala 33:37]
  assign cs0_0 = _T_1 | _T_442; // @[Lookup.scala 33:37]
  assign _T_444 = _T_97 ? 1'h0 : _T_99; // @[Lookup.scala 33:37]
  assign _T_445 = _T_95 ? 1'h0 : _T_444; // @[Lookup.scala 33:37]
  assign _T_446 = _T_93 ? 1'h0 : _T_445; // @[Lookup.scala 33:37]
  assign _T_447 = _T_91 ? 1'h0 : _T_446; // @[Lookup.scala 33:37]
  assign _T_448 = _T_89 ? 1'h0 : _T_447; // @[Lookup.scala 33:37]
  assign _T_449 = _T_87 ? 1'h0 : _T_448; // @[Lookup.scala 33:37]
  assign _T_450 = _T_85 ? 1'h0 : _T_449; // @[Lookup.scala 33:37]
  assign _T_451 = _T_83 ? 1'h0 : _T_450; // @[Lookup.scala 33:37]
  assign _T_452 = _T_81 ? 1'h0 : _T_451; // @[Lookup.scala 33:37]
  assign _T_453 = _T_79 ? 1'h0 : _T_452; // @[Lookup.scala 33:37]
  assign _T_454 = _T_77 ? 1'h0 : _T_453; // @[Lookup.scala 33:37]
  assign _T_455 = _T_75 ? 1'h0 : _T_454; // @[Lookup.scala 33:37]
  assign _T_456 = _T_73 ? 1'h0 : _T_455; // @[Lookup.scala 33:37]
  assign _T_457 = _T_71 ? 1'h0 : _T_456; // @[Lookup.scala 33:37]
  assign _T_458 = _T_69 ? 1'h0 : _T_457; // @[Lookup.scala 33:37]
  assign _T_459 = _T_67 ? 1'h0 : _T_458; // @[Lookup.scala 33:37]
  assign _T_460 = _T_65 ? 1'h0 : _T_459; // @[Lookup.scala 33:37]
  assign _T_461 = _T_63 ? 1'h0 : _T_460; // @[Lookup.scala 33:37]
  assign _T_462 = _T_61 ? 1'h0 : _T_461; // @[Lookup.scala 33:37]
  assign _T_463 = _T_59 ? 1'h0 : _T_462; // @[Lookup.scala 33:37]
  assign _T_464 = _T_57 ? 1'h0 : _T_463; // @[Lookup.scala 33:37]
  assign _T_465 = _T_55 ? 1'h0 : _T_464; // @[Lookup.scala 33:37]
  assign _T_466 = _T_53 ? 1'h0 : _T_465; // @[Lookup.scala 33:37]
  assign _T_467 = _T_51 ? 1'h0 : _T_466; // @[Lookup.scala 33:37]
  assign _T_468 = _T_49 ? 1'h0 : _T_467; // @[Lookup.scala 33:37]
  assign _T_469 = _T_47 ? 1'h0 : _T_468; // @[Lookup.scala 33:37]
  assign _T_470 = _T_45 ? 1'h0 : _T_469; // @[Lookup.scala 33:37]
  assign _T_471 = _T_43 ? 1'h0 : _T_470; // @[Lookup.scala 33:37]
  assign _T_472 = _T_41 ? 1'h0 : _T_471; // @[Lookup.scala 33:37]
  assign _T_473 = _T_39 ? 1'h0 : _T_472; // @[Lookup.scala 33:37]
  assign _T_474 = _T_37 ? 1'h0 : _T_473; // @[Lookup.scala 33:37]
  assign _T_475 = _T_35 ? 1'h0 : _T_474; // @[Lookup.scala 33:37]
  assign _T_476 = _T_33 ? 1'h0 : _T_475; // @[Lookup.scala 33:37]
  assign _T_477 = _T_31 ? 1'h0 : _T_476; // @[Lookup.scala 33:37]
  assign _T_478 = _T_29 ? 1'h0 : _T_477; // @[Lookup.scala 33:37]
  assign _T_479 = _T_27 ? 1'h0 : _T_478; // @[Lookup.scala 33:37]
  assign _T_480 = _T_25 ? 1'h0 : _T_479; // @[Lookup.scala 33:37]
  assign _T_481 = _T_23 ? 1'h0 : _T_480; // @[Lookup.scala 33:37]
  assign _T_482 = _T_21 ? 1'h0 : _T_481; // @[Lookup.scala 33:37]
  assign _T_483 = _T_19 ? 1'h0 : _T_482; // @[Lookup.scala 33:37]
  assign _T_484 = _T_17 ? 1'h0 : _T_483; // @[Lookup.scala 33:37]
  assign _T_485 = _T_15 | _T_484; // @[Lookup.scala 33:37]
  assign _T_486 = _T_13 | _T_485; // @[Lookup.scala 33:37]
  assign _T_487 = _T_11 | _T_486; // @[Lookup.scala 33:37]
  assign _T_488 = _T_9 | _T_487; // @[Lookup.scala 33:37]
  assign _T_489 = _T_7 | _T_488; // @[Lookup.scala 33:37]
  assign _T_490 = _T_5 | _T_489; // @[Lookup.scala 33:37]
  assign _T_491 = _T_3 | _T_490; // @[Lookup.scala 33:37]
  assign cs0_1 = _T_1 | _T_491; // @[Lookup.scala 33:37]
  assign _T_535 = _T_13 | _T_15; // @[Lookup.scala 33:37]
  assign _T_536 = _T_11 | _T_535; // @[Lookup.scala 33:37]
  assign _T_537 = _T_9 ? 1'h0 : _T_536; // @[Lookup.scala 33:37]
  assign _T_538 = _T_7 ? 1'h0 : _T_537; // @[Lookup.scala 33:37]
  assign _T_539 = _T_5 ? 1'h0 : _T_538; // @[Lookup.scala 33:37]
  assign _T_540 = _T_3 ? 1'h0 : _T_539; // @[Lookup.scala 33:37]
  assign _T_583 = _T_15 ? 3'h2 : 3'h0; // @[Lookup.scala 33:37]
  assign _T_584 = _T_13 ? 3'h1 : _T_583; // @[Lookup.scala 33:37]
  assign _T_585 = _T_11 ? 3'h3 : _T_584; // @[Lookup.scala 33:37]
  assign _T_586 = _T_9 ? 3'h6 : _T_585; // @[Lookup.scala 33:37]
  assign _T_587 = _T_7 ? 3'h2 : _T_586; // @[Lookup.scala 33:37]
  assign _T_588 = _T_5 ? 3'h5 : _T_587; // @[Lookup.scala 33:37]
  assign _T_589 = _T_3 ? 3'h1 : _T_588; // @[Lookup.scala 33:37]
  assign _T_593 = _T_93 ? 3'h4 : 3'h0; // @[Lookup.scala 33:37]
  assign _T_594 = _T_91 ? 3'h4 : _T_593; // @[Lookup.scala 33:37]
  assign _T_595 = _T_89 ? 3'h4 : _T_594; // @[Lookup.scala 33:37]
  assign _T_596 = _T_87 ? 3'h4 : _T_595; // @[Lookup.scala 33:37]
  assign _T_597 = _T_85 ? 3'h3 : _T_596; // @[Lookup.scala 33:37]
  assign _T_598 = _T_83 ? 3'h3 : _T_597; // @[Lookup.scala 33:37]
  assign _T_599 = _T_81 ? 3'h2 : _T_598; // @[Lookup.scala 33:37]
  assign _T_600 = _T_79 ? 3'h1 : _T_599; // @[Lookup.scala 33:37]
  assign _T_601 = _T_77 ? 3'h2 : _T_600; // @[Lookup.scala 33:37]
  assign _T_602 = _T_75 ? 3'h1 : _T_601; // @[Lookup.scala 33:37]
  assign _T_603 = _T_73 ? 3'h0 : _T_602; // @[Lookup.scala 33:37]
  assign _T_604 = _T_71 ? 3'h0 : _T_603; // @[Lookup.scala 33:37]
  assign _T_605 = _T_69 ? 3'h0 : _T_604; // @[Lookup.scala 33:37]
  assign _T_606 = _T_67 ? 3'h0 : _T_605; // @[Lookup.scala 33:37]
  assign _T_607 = _T_65 ? 3'h0 : _T_606; // @[Lookup.scala 33:37]
  assign _T_608 = _T_63 ? 3'h0 : _T_607; // @[Lookup.scala 33:37]
  assign _T_609 = _T_61 ? 3'h0 : _T_608; // @[Lookup.scala 33:37]
  assign _T_610 = _T_59 ? 3'h0 : _T_609; // @[Lookup.scala 33:37]
  assign _T_611 = _T_57 ? 3'h0 : _T_610; // @[Lookup.scala 33:37]
  assign _T_612 = _T_55 ? 3'h0 : _T_611; // @[Lookup.scala 33:37]
  assign _T_613 = _T_53 ? 3'h0 : _T_612; // @[Lookup.scala 33:37]
  assign _T_614 = _T_51 ? 3'h0 : _T_613; // @[Lookup.scala 33:37]
  assign _T_615 = _T_49 ? 3'h0 : _T_614; // @[Lookup.scala 33:37]
  assign _T_616 = _T_47 ? 3'h0 : _T_615; // @[Lookup.scala 33:37]
  assign _T_617 = _T_45 ? 3'h0 : _T_616; // @[Lookup.scala 33:37]
  assign _T_618 = _T_43 ? 3'h0 : _T_617; // @[Lookup.scala 33:37]
  assign _T_619 = _T_41 ? 3'h0 : _T_618; // @[Lookup.scala 33:37]
  assign _T_620 = _T_39 ? 3'h0 : _T_619; // @[Lookup.scala 33:37]
  assign _T_621 = _T_37 ? 3'h0 : _T_620; // @[Lookup.scala 33:37]
  assign _T_622 = _T_35 ? 3'h0 : _T_621; // @[Lookup.scala 33:37]
  assign _T_623 = _T_33 ? 3'h0 : _T_622; // @[Lookup.scala 33:37]
  assign _T_624 = _T_31 ? 3'h0 : _T_623; // @[Lookup.scala 33:37]
  assign _T_625 = _T_29 ? 3'h0 : _T_624; // @[Lookup.scala 33:37]
  assign _T_626 = _T_27 ? 3'h0 : _T_625; // @[Lookup.scala 33:37]
  assign _T_627 = _T_25 ? 3'h0 : _T_626; // @[Lookup.scala 33:37]
  assign _T_628 = _T_23 ? 3'h0 : _T_627; // @[Lookup.scala 33:37]
  assign _T_629 = _T_21 ? 3'h0 : _T_628; // @[Lookup.scala 33:37]
  assign _T_630 = _T_19 ? 3'h0 : _T_629; // @[Lookup.scala 33:37]
  assign _T_631 = _T_17 ? 3'h0 : _T_630; // @[Lookup.scala 33:37]
  assign _T_632 = _T_15 ? 3'h0 : _T_631; // @[Lookup.scala 33:37]
  assign _T_633 = _T_13 ? 3'h0 : _T_632; // @[Lookup.scala 33:37]
  assign _T_634 = _T_11 ? 3'h0 : _T_633; // @[Lookup.scala 33:37]
  assign _T_635 = _T_9 ? 3'h0 : _T_634; // @[Lookup.scala 33:37]
  assign _T_636 = _T_7 ? 3'h0 : _T_635; // @[Lookup.scala 33:37]
  assign _T_637 = _T_5 ? 3'h0 : _T_636; // @[Lookup.scala 33:37]
  assign _T_638 = _T_3 ? 3'h0 : _T_637; // @[Lookup.scala 33:37]
  assign cs0_4 = _T_1 ? 3'h0 : _T_638; // @[Lookup.scala 33:37]
  assign _T_639 = io_dat_csr_eret | io_ctl_exception; // @[cpath.scala 120:43]
  assign _T_640 = cs_br_type == 4'h0; // @[cpath.scala 122:37]
  assign _T_641 = cs_br_type == 4'h1; // @[cpath.scala 123:37]
  assign _T_642 = ~io_dat_br_eq; // @[cpath.scala 123:54]
  assign _T_643 = _T_642 ? 3'h1 : 3'h0; // @[cpath.scala 123:53]
  assign _T_644 = cs_br_type == 4'h2; // @[cpath.scala 124:37]
  assign _T_645 = io_dat_br_eq ? 3'h1 : 3'h0; // @[cpath.scala 124:53]
  assign _T_646 = cs_br_type == 4'h3; // @[cpath.scala 125:37]
  assign _T_647 = ~io_dat_br_lt; // @[cpath.scala 125:54]
  assign _T_648 = _T_647 ? 3'h1 : 3'h0; // @[cpath.scala 125:53]
  assign _T_649 = cs_br_type == 4'h4; // @[cpath.scala 126:37]
  assign _T_650 = ~io_dat_br_ltu; // @[cpath.scala 126:54]
  assign _T_651 = _T_650 ? 3'h1 : 3'h0; // @[cpath.scala 126:53]
  assign _T_652 = cs_br_type == 4'h5; // @[cpath.scala 127:37]
  assign _T_653 = io_dat_br_lt ? 3'h1 : 3'h0; // @[cpath.scala 127:53]
  assign _T_654 = cs_br_type == 4'h6; // @[cpath.scala 128:37]
  assign _T_655 = io_dat_br_ltu ? 3'h1 : 3'h0; // @[cpath.scala 128:53]
  assign _T_656 = cs_br_type == 4'h7; // @[cpath.scala 129:37]
  assign _T_657 = cs_br_type == 4'h8; // @[cpath.scala 130:37]
  assign _T_658 = _T_657 ? 3'h3 : 3'h0; // @[cpath.scala 130:25]
  assign _T_659 = _T_656 ? 3'h2 : _T_658; // @[cpath.scala 129:25]
  assign _T_660 = _T_654 ? _T_655 : _T_659; // @[cpath.scala 128:25]
  assign _T_661 = _T_652 ? _T_653 : _T_660; // @[cpath.scala 127:25]
  assign _T_662 = _T_649 ? _T_651 : _T_661; // @[cpath.scala 126:25]
  assign _T_663 = _T_646 ? _T_648 : _T_662; // @[cpath.scala 125:25]
  assign _T_664 = _T_644 ? _T_645 : _T_663; // @[cpath.scala 124:25]
  assign _T_665 = _T_641 ? _T_643 : _T_664; // @[cpath.scala 123:25]
  assign _T_666 = _T_640 ? 3'h0 : _T_665; // @[cpath.scala 122:25]
  assign ctrl_pc_sel = _T_639 ? 3'h4 : _T_666; // @[cpath.scala 120:25]
  assign _T_668 = cs0_1 & io_dmem_resp_valid; // @[cpath.scala 134:52]
  assign _T_669 = ~cs0_1; // @[cpath.scala 134:78]
  assign _T_670 = _T_668 | _T_669; // @[cpath.scala 134:75]
  assign stall = ~_T_670; // @[cpath.scala 134:39]
  assign _T_672 = ctrl_pc_sel == 3'h0; // @[cpath.scala 136:31]
  assign rs1_addr = io_dat_inst[19:15]; // @[cpath.scala 149:30]
  assign _T_674 = cs0_4 == 3'h2; // @[cpath.scala 150:30]
  assign _T_675 = cs0_4 == 3'h3; // @[cpath.scala 150:54]
  assign _T_676 = _T_674 | _T_675; // @[cpath.scala 150:40]
  assign _T_677 = rs1_addr == 5'h0; // @[cpath.scala 150:77]
  assign csr_ren = _T_676 & _T_677; // @[cpath.scala 150:65]
  assign csr_cmd = csr_ren ? 3'h5 : cs0_4; // @[cpath.scala 151:21]
  assign io_dmem_req_valid = _T_1 | _T_491; // @[cpath.scala 159:25]
  assign io_dmem_req_bits_fcn = _T_1 ? 1'h0 : _T_540; // @[cpath.scala 160:25]
  assign io_dmem_req_bits_typ = _T_1 ? 3'h3 : _T_589; // @[cpath.scala 161:25]
  assign io_ctl_stall = ~_T_670; // @[cpath.scala 138:22]
  assign io_ctl_if_kill = ~_T_672; // @[cpath.scala 139:22]
  assign io_ctl_pc_sel = _T_639 ? 3'h4 : _T_666; // @[cpath.scala 140:22]
  assign io_ctl_op1_sel = _T_1 ? 2'h0 : _T_246; // @[cpath.scala 141:22]
  assign io_ctl_op2_sel = _T_1 ? 3'h2 : _T_295; // @[cpath.scala 142:22]
  assign io_ctl_alu_fun = {{1'd0}, cs_alu_fun}; // @[cpath.scala 143:22]
  assign io_ctl_wb_sel = _T_1 ? 2'h1 : _T_393; // @[cpath.scala 144:22]
  assign io_ctl_rf_wen = stall ? 1'h0 : cs0_0; // @[cpath.scala 145:22]
  assign io_ctl_csr_cmd = stall ? 3'h0 : csr_cmd; // @[cpath.scala 153:22]
  assign io_ctl_exception = ~cs_val_inst; // @[cpath.scala 164:21]
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
  output [31:0] io_dmem_req_bits_addr,
  output [31:0] io_dmem_req_bits_data,
  input  [31:0] io_dmem_resp_bits_data,
  input         io_ctl_stall,
  input         io_ctl_if_kill,
  input  [2:0]  io_ctl_pc_sel,
  input  [1:0]  io_ctl_op1_sel,
  input  [2:0]  io_ctl_op2_sel,
  input  [4:0]  io_ctl_alu_fun,
  input  [1:0]  io_ctl_wb_sel,
  input         io_ctl_rf_wen,
  input  [2:0]  io_ctl_csr_cmd,
  input         io_ctl_exception,
  output [31:0] io_dat_inst,
  output        io_dat_br_eq,
  output        io_dat_br_lt,
  output        io_dat_br_ltu,
  output        io_dat_csr_eret
);
  reg [31:0] regfile [0:31]; // @[dpath.scala 109:21]
  reg [31:0] _RAND_0;
  wire [31:0] regfile__T_13_data; // @[dpath.scala 109:21]
  wire [4:0] regfile__T_13_addr; // @[dpath.scala 109:21]
  wire [31:0] regfile__T_19_data; // @[dpath.scala 109:21]
  wire [4:0] regfile__T_19_addr; // @[dpath.scala 109:21]
  wire [31:0] regfile__T_21_data; // @[dpath.scala 109:21]
  wire [4:0] regfile__T_21_addr; // @[dpath.scala 109:21]
  wire [31:0] regfile__T_14_data; // @[dpath.scala 109:21]
  wire [4:0] regfile__T_14_addr; // @[dpath.scala 109:21]
  wire  regfile__T_14_mask; // @[dpath.scala 109:21]
  wire  regfile__T_14_en; // @[dpath.scala 109:21]
  wire [31:0] regfile__T_17_data; // @[dpath.scala 109:21]
  wire [4:0] regfile__T_17_addr; // @[dpath.scala 109:21]
  wire  regfile__T_17_mask; // @[dpath.scala 109:21]
  wire  regfile__T_17_en; // @[dpath.scala 109:21]
  wire  csr_clock; // @[dpath.scala 184:20]
  wire  csr_reset; // @[dpath.scala 184:20]
  wire [2:0] csr_io_rw_cmd; // @[dpath.scala 184:20]
  wire [31:0] csr_io_rw_rdata; // @[dpath.scala 184:20]
  wire [31:0] csr_io_rw_wdata; // @[dpath.scala 184:20]
  wire  csr_io_eret; // @[dpath.scala 184:20]
  wire [11:0] csr_io_decode_csr; // @[dpath.scala 184:20]
  wire  csr_io_status_debug; // @[dpath.scala 184:20]
  wire [1:0] csr_io_status_prv; // @[dpath.scala 184:20]
  wire  csr_io_status_sd; // @[dpath.scala 184:20]
  wire [7:0] csr_io_status_zero1; // @[dpath.scala 184:20]
  wire  csr_io_status_tsr; // @[dpath.scala 184:20]
  wire  csr_io_status_tw; // @[dpath.scala 184:20]
  wire  csr_io_status_tvm; // @[dpath.scala 184:20]
  wire  csr_io_status_mxr; // @[dpath.scala 184:20]
  wire  csr_io_status_sum; // @[dpath.scala 184:20]
  wire  csr_io_status_mprv; // @[dpath.scala 184:20]
  wire [1:0] csr_io_status_xs; // @[dpath.scala 184:20]
  wire [1:0] csr_io_status_fs; // @[dpath.scala 184:20]
  wire [1:0] csr_io_status_mpp; // @[dpath.scala 184:20]
  wire [1:0] csr_io_status_hpp; // @[dpath.scala 184:20]
  wire  csr_io_status_spp; // @[dpath.scala 184:20]
  wire  csr_io_status_mpie; // @[dpath.scala 184:20]
  wire  csr_io_status_hpie; // @[dpath.scala 184:20]
  wire  csr_io_status_spie; // @[dpath.scala 184:20]
  wire  csr_io_status_upie; // @[dpath.scala 184:20]
  wire  csr_io_status_mie; // @[dpath.scala 184:20]
  wire  csr_io_status_hie; // @[dpath.scala 184:20]
  wire  csr_io_status_sie; // @[dpath.scala 184:20]
  wire  csr_io_status_uie; // @[dpath.scala 184:20]
  wire [31:0] csr_io_evec; // @[dpath.scala 184:20]
  wire  csr_io_exception; // @[dpath.scala 184:20]
  wire  csr_io_retire; // @[dpath.scala 184:20]
  wire [31:0] csr_io_pc; // @[dpath.scala 184:20]
  wire [31:0] csr_io_time; // @[dpath.scala 184:20]
  reg [31:0] if_reg_pc; // @[dpath.scala 45:27]
  reg [31:0] _RAND_1;
  reg [31:0] exe_reg_pc; // @[dpath.scala 47:34]
  reg [31:0] _RAND_2;
  reg [31:0] exe_reg_pc_plus4; // @[dpath.scala 48:34]
  reg [31:0] _RAND_3;
  reg [31:0] exe_reg_inst; // @[dpath.scala 49:34]
  reg [31:0] _RAND_4;
  reg  exe_reg_valid; // @[dpath.scala 50:34]
  reg [31:0] _RAND_5;
  wire  _T; // @[dpath.scala 60:10]
  wire  _T_2; // @[dpath.scala 68:34]
  wire [31:0] if_pc_plus4; // @[dpath.scala 65:33]
  wire  _T_3; // @[dpath.scala 69:34]
  wire [11:0] imm_b; // @[Cat.scala 29:58]
  wire [18:0] _T_46; // @[Bitwise.scala 72:12]
  wire [31:0] imm_b_sext; // @[Cat.scala 29:58]
  wire [31:0] exe_br_target; // @[dpath.scala 178:38]
  wire  _T_4; // @[dpath.scala 70:34]
  wire [19:0] imm_j; // @[Cat.scala 29:58]
  wire [10:0] _T_51; // @[Bitwise.scala 72:12]
  wire [31:0] imm_j_sext; // @[Cat.scala 29:58]
  wire [31:0] exe_jmp_target; // @[dpath.scala 179:38]
  wire  _T_5; // @[dpath.scala 71:34]
  wire [4:0] exe_rs1_addr; // @[dpath.scala 101:35]
  wire  _T_18; // @[dpath.scala 124:41]
  wire [31:0] exe_rs1_data; // @[dpath.scala 124:26]
  wire [11:0] imm_i; // @[dpath.scala 129:28]
  wire [19:0] _T_40; // @[Bitwise.scala 72:12]
  wire [31:0] imm_i_sext; // @[Cat.scala 29:58]
  wire [31:0] exe_jump_reg_target; // @[dpath.scala 180:50]
  wire  _T_6; // @[dpath.scala 72:34]
  wire [31:0] exception_target; // @[dpath.scala 58:34 dpath.scala 194:21]
  wire [4:0] exe_rs2_addr; // @[dpath.scala 102:35]
  wire [4:0] exe_wbaddr; // @[dpath.scala 103:35]
  wire  _T_12; // @[dpath.scala 106:36]
  wire  exe_wben; // @[dpath.scala 106:33]
  wire  _T_15; // @[dpath.scala 119:34]
  wire  _T_114; // @[dpath.scala 204:34]
  wire  _T_65; // @[dpath.scala 164:35]
  wire  _T_53; // @[dpath.scala 145:32]
  wire  _T_54; // @[dpath.scala 146:32]
  wire [19:0] imm_u; // @[dpath.scala 132:28]
  wire [31:0] imm_u_sext; // @[Cat.scala 29:58]
  wire  _T_55; // @[dpath.scala 147:32]
  wire [31:0] imm_z; // @[Cat.scala 29:58]
  wire [31:0] _T_56; // @[Mux.scala 98:16]
  wire [31:0] _T_57; // @[Mux.scala 98:16]
  wire [31:0] exe_alu_op1; // @[Mux.scala 98:16]
  wire  _T_58; // @[dpath.scala 151:32]
  wire  _T_20; // @[dpath.scala 125:41]
  wire [31:0] exe_rs2_data; // @[dpath.scala 125:26]
  wire  _T_59; // @[dpath.scala 152:32]
  wire  _T_60; // @[dpath.scala 153:32]
  wire  _T_61; // @[dpath.scala 154:32]
  wire [11:0] imm_s; // @[Cat.scala 29:58]
  wire [19:0] _T_43; // @[Bitwise.scala 72:12]
  wire [31:0] imm_s_sext; // @[Cat.scala 29:58]
  wire [31:0] _T_62; // @[Mux.scala 98:16]
  wire [31:0] _T_63; // @[Mux.scala 98:16]
  wire [31:0] _T_64; // @[Mux.scala 98:16]
  wire [31:0] exe_alu_op2; // @[Mux.scala 98:16]
  wire [31:0] _T_67; // @[dpath.scala 164:65]
  wire  _T_68; // @[dpath.scala 165:35]
  wire [31:0] _T_70; // @[dpath.scala 165:65]
  wire  _T_71; // @[dpath.scala 166:35]
  wire [31:0] _T_72; // @[dpath.scala 166:65]
  wire  _T_73; // @[dpath.scala 167:35]
  wire [31:0] _T_74; // @[dpath.scala 167:65]
  wire  _T_75; // @[dpath.scala 168:35]
  wire [31:0] _T_76; // @[dpath.scala 168:65]
  wire  _T_77; // @[dpath.scala 169:35]
  wire [31:0] _T_78; // @[dpath.scala 169:71]
  wire [31:0] _T_79; // @[dpath.scala 169:94]
  wire  _T_80; // @[dpath.scala 169:74]
  wire  _T_81; // @[dpath.scala 170:35]
  wire  _T_82; // @[dpath.scala 170:65]
  wire  _T_83; // @[dpath.scala 171:35]
  wire [4:0] alu_shamt; // @[dpath.scala 161:31]
  wire [62:0] _GEN_17; // @[dpath.scala 171:66]
  wire [62:0] _T_84; // @[dpath.scala 171:66]
  wire  _T_86; // @[dpath.scala 172:35]
  wire [31:0] _T_89; // @[dpath.scala 172:94]
  wire  _T_90; // @[dpath.scala 173:35]
  wire [31:0] _T_91; // @[dpath.scala 173:65]
  wire  _T_92; // @[dpath.scala 174:35]
  wire [31:0] _T_93; // @[Mux.scala 98:16]
  wire [31:0] _T_94; // @[Mux.scala 98:16]
  wire [31:0] _T_95; // @[Mux.scala 98:16]
  wire [31:0] _T_96; // @[Mux.scala 98:16]
  wire [31:0] _T_97; // @[Mux.scala 98:16]
  wire [31:0] _T_98; // @[Mux.scala 98:16]
  wire [31:0] _T_99; // @[Mux.scala 98:16]
  wire [31:0] _T_100; // @[Mux.scala 98:16]
  wire [31:0] _T_101; // @[Mux.scala 98:16]
  wire [31:0] _T_102; // @[Mux.scala 98:16]
  wire [31:0] exe_alu_out; // @[Mux.scala 98:16]
  wire  _T_115; // @[dpath.scala 205:34]
  wire  _T_116; // @[dpath.scala 206:34]
  wire  _T_117; // @[dpath.scala 207:34]
  wire [31:0] _T_118; // @[Mux.scala 98:16]
  wire [31:0] _T_119; // @[Mux.scala 98:16]
  wire [31:0] _T_120; // @[Mux.scala 98:16]
  wire [31:0] exe_wbdata; // @[Mux.scala 98:16]
  wire  _T_111; // @[dpath.scala 191:56]
  wire  _T_112; // @[dpath.scala 191:41]
  wire [31:0] _T_123; // @[dpath.scala 214:41]
  wire [31:0] _T_124; // @[dpath.scala 214:65]
  wire [31:0] _T_127; // @[dpath.scala 225:18]
  wire [7:0] _T_128; // @[Mux.scala 98:16]
  wire [7:0] _T_129; // @[Mux.scala 98:16]
  wire  _T_130; // @[Mux.scala 80:60]
  wire [7:0] _T_131; // @[Mux.scala 80:57]
  wire  _T_132; // @[Mux.scala 80:60]
  wire [7:0] _T_133; // @[Mux.scala 80:57]
  wire  _T_134; // @[Mux.scala 80:60]
  wire [7:0] _T_135; // @[Mux.scala 80:57]
  wire  _T_136; // @[Mux.scala 80:60]
  wire [7:0] _T_137; // @[Mux.scala 80:57]
  wire  _T_138; // @[Mux.scala 80:60]
  wire [7:0] _T_139; // @[Mux.scala 80:57]
  wire [7:0] _T_140; // @[dpath.scala 245:10]
  wire  _T_142; // @[dpath.scala 224:10]
  CSRFile csr ( // @[dpath.scala 184:20]
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
  assign regfile__T_13_addr = io_ddpath_addr;
  assign regfile__T_13_data = regfile[regfile__T_13_addr]; // @[dpath.scala 109:21]
  assign regfile__T_19_addr = exe_reg_inst[19:15];
  assign regfile__T_19_data = regfile[regfile__T_19_addr]; // @[dpath.scala 109:21]
  assign regfile__T_21_addr = exe_reg_inst[24:20];
  assign regfile__T_21_data = regfile[regfile__T_21_addr]; // @[dpath.scala 109:21]
  assign regfile__T_14_data = io_ddpath_wdata;
  assign regfile__T_14_addr = io_ddpath_addr;
  assign regfile__T_14_mask = 1'h1;
  assign regfile__T_14_en = 1'h1;
  assign regfile__T_17_data = _T_114 ? exe_alu_out : _T_120;
  assign regfile__T_17_addr = exe_reg_inst[11:7];
  assign regfile__T_17_mask = 1'h1;
  assign regfile__T_17_en = exe_wben & _T_15;
  assign _T = ~io_ctl_stall; // @[dpath.scala 60:10]
  assign _T_2 = io_ctl_pc_sel == 3'h0; // @[dpath.scala 68:34]
  assign if_pc_plus4 = if_reg_pc + 32'h4; // @[dpath.scala 65:33]
  assign _T_3 = io_ctl_pc_sel == 3'h1; // @[dpath.scala 69:34]
  assign imm_b = {exe_reg_inst[31],exe_reg_inst[7],exe_reg_inst[30:25],exe_reg_inst[11:8]}; // @[Cat.scala 29:58]
  assign _T_46 = imm_b[11] ? 19'h7ffff : 19'h0; // @[Bitwise.scala 72:12]
  assign imm_b_sext = {_T_46,exe_reg_inst[31],exe_reg_inst[7],exe_reg_inst[30:25],exe_reg_inst[11:8],1'h0}; // @[Cat.scala 29:58]
  assign exe_br_target = exe_reg_pc + imm_b_sext; // @[dpath.scala 178:38]
  assign _T_4 = io_ctl_pc_sel == 3'h2; // @[dpath.scala 70:34]
  assign imm_j = {exe_reg_inst[31],exe_reg_inst[19:12],exe_reg_inst[20],exe_reg_inst[30:21]}; // @[Cat.scala 29:58]
  assign _T_51 = imm_j[19] ? 11'h7ff : 11'h0; // @[Bitwise.scala 72:12]
  assign imm_j_sext = {_T_51,exe_reg_inst[31],exe_reg_inst[19:12],exe_reg_inst[20],exe_reg_inst[30:21],1'h0}; // @[Cat.scala 29:58]
  assign exe_jmp_target = exe_reg_pc + imm_j_sext; // @[dpath.scala 179:38]
  assign _T_5 = io_ctl_pc_sel == 3'h3; // @[dpath.scala 71:34]
  assign exe_rs1_addr = exe_reg_inst[19:15]; // @[dpath.scala 101:35]
  assign _T_18 = exe_rs1_addr != 5'h0; // @[dpath.scala 124:41]
  assign exe_rs1_data = _T_18 ? regfile__T_19_data : 32'h0; // @[dpath.scala 124:26]
  assign imm_i = exe_reg_inst[31:20]; // @[dpath.scala 129:28]
  assign _T_40 = imm_i[11] ? 20'hfffff : 20'h0; // @[Bitwise.scala 72:12]
  assign imm_i_sext = {_T_40,imm_i}; // @[Cat.scala 29:58]
  assign exe_jump_reg_target = exe_rs1_data + imm_i_sext; // @[dpath.scala 180:50]
  assign _T_6 = io_ctl_pc_sel == 3'h4; // @[dpath.scala 72:34]
  assign exception_target = csr_io_evec; // @[dpath.scala 58:34 dpath.scala 194:21]
  assign exe_rs2_addr = exe_reg_inst[24:20]; // @[dpath.scala 102:35]
  assign exe_wbaddr = exe_reg_inst[11:7]; // @[dpath.scala 103:35]
  assign _T_12 = ~io_ctl_exception; // @[dpath.scala 106:36]
  assign exe_wben = io_ctl_rf_wen & _T_12; // @[dpath.scala 106:33]
  assign _T_15 = exe_wbaddr != 5'h0; // @[dpath.scala 119:34]
  assign _T_114 = io_ctl_wb_sel == 2'h0; // @[dpath.scala 204:34]
  assign _T_65 = io_ctl_alu_fun == 5'h1; // @[dpath.scala 164:35]
  assign _T_53 = io_ctl_op1_sel == 2'h0; // @[dpath.scala 145:32]
  assign _T_54 = io_ctl_op1_sel == 2'h1; // @[dpath.scala 146:32]
  assign imm_u = exe_reg_inst[31:12]; // @[dpath.scala 132:28]
  assign imm_u_sext = {imm_u,12'h0}; // @[Cat.scala 29:58]
  assign _T_55 = io_ctl_op1_sel == 2'h2; // @[dpath.scala 147:32]
  assign imm_z = {27'h0,exe_rs1_addr}; // @[Cat.scala 29:58]
  assign _T_56 = _T_55 ? imm_z : 32'h0; // @[Mux.scala 98:16]
  assign _T_57 = _T_54 ? imm_u_sext : _T_56; // @[Mux.scala 98:16]
  assign exe_alu_op1 = _T_53 ? exe_rs1_data : _T_57; // @[Mux.scala 98:16]
  assign _T_58 = io_ctl_op2_sel == 3'h0; // @[dpath.scala 151:32]
  assign _T_20 = exe_rs2_addr != 5'h0; // @[dpath.scala 125:41]
  assign exe_rs2_data = _T_20 ? regfile__T_21_data : 32'h0; // @[dpath.scala 125:26]
  assign _T_59 = io_ctl_op2_sel == 3'h1; // @[dpath.scala 152:32]
  assign _T_60 = io_ctl_op2_sel == 3'h2; // @[dpath.scala 153:32]
  assign _T_61 = io_ctl_op2_sel == 3'h3; // @[dpath.scala 154:32]
  assign imm_s = {exe_reg_inst[31:25],exe_wbaddr}; // @[Cat.scala 29:58]
  assign _T_43 = imm_s[11] ? 20'hfffff : 20'h0; // @[Bitwise.scala 72:12]
  assign imm_s_sext = {_T_43,exe_reg_inst[31:25],exe_wbaddr}; // @[Cat.scala 29:58]
  assign _T_62 = _T_61 ? imm_s_sext : 32'h0; // @[Mux.scala 98:16]
  assign _T_63 = _T_60 ? imm_i_sext : _T_62; // @[Mux.scala 98:16]
  assign _T_64 = _T_59 ? exe_reg_pc : _T_63; // @[Mux.scala 98:16]
  assign exe_alu_op2 = _T_58 ? exe_rs2_data : _T_64; // @[Mux.scala 98:16]
  assign _T_67 = exe_alu_op1 + exe_alu_op2; // @[dpath.scala 164:65]
  assign _T_68 = io_ctl_alu_fun == 5'h2; // @[dpath.scala 165:35]
  assign _T_70 = exe_alu_op1 - exe_alu_op2; // @[dpath.scala 165:65]
  assign _T_71 = io_ctl_alu_fun == 5'h6; // @[dpath.scala 166:35]
  assign _T_72 = exe_alu_op1 & exe_alu_op2; // @[dpath.scala 166:65]
  assign _T_73 = io_ctl_alu_fun == 5'h7; // @[dpath.scala 167:35]
  assign _T_74 = exe_alu_op1 | exe_alu_op2; // @[dpath.scala 167:65]
  assign _T_75 = io_ctl_alu_fun == 5'h8; // @[dpath.scala 168:35]
  assign _T_76 = exe_alu_op1 ^ exe_alu_op2; // @[dpath.scala 168:65]
  assign _T_77 = io_ctl_alu_fun == 5'h9; // @[dpath.scala 169:35]
  assign _T_78 = _T_53 ? exe_rs1_data : _T_57; // @[dpath.scala 169:71]
  assign _T_79 = _T_58 ? exe_rs2_data : _T_64; // @[dpath.scala 169:94]
  assign _T_80 = $signed(_T_78) < $signed(_T_79); // @[dpath.scala 169:74]
  assign _T_81 = io_ctl_alu_fun == 5'ha; // @[dpath.scala 170:35]
  assign _T_82 = exe_alu_op1 < exe_alu_op2; // @[dpath.scala 170:65]
  assign _T_83 = io_ctl_alu_fun == 5'h3; // @[dpath.scala 171:35]
  assign alu_shamt = exe_alu_op2[4:0]; // @[dpath.scala 161:31]
  assign _GEN_17 = {{31'd0}, exe_alu_op1}; // @[dpath.scala 171:66]
  assign _T_84 = _GEN_17 << alu_shamt; // @[dpath.scala 171:66]
  assign _T_86 = io_ctl_alu_fun == 5'h5; // @[dpath.scala 172:35]
  assign _T_89 = $signed(_T_78) >>> alu_shamt; // @[dpath.scala 172:94]
  assign _T_90 = io_ctl_alu_fun == 5'h4; // @[dpath.scala 173:35]
  assign _T_91 = exe_alu_op1 >> alu_shamt; // @[dpath.scala 173:65]
  assign _T_92 = io_ctl_alu_fun == 5'hb; // @[dpath.scala 174:35]
  assign _T_93 = _T_92 ? exe_alu_op1 : 32'h0; // @[Mux.scala 98:16]
  assign _T_94 = _T_90 ? _T_91 : _T_93; // @[Mux.scala 98:16]
  assign _T_95 = _T_86 ? _T_89 : _T_94; // @[Mux.scala 98:16]
  assign _T_96 = _T_83 ? _T_84[31:0] : _T_95; // @[Mux.scala 98:16]
  assign _T_97 = _T_81 ? {{31'd0}, _T_82} : _T_96; // @[Mux.scala 98:16]
  assign _T_98 = _T_77 ? {{31'd0}, _T_80} : _T_97; // @[Mux.scala 98:16]
  assign _T_99 = _T_75 ? _T_76 : _T_98; // @[Mux.scala 98:16]
  assign _T_100 = _T_73 ? _T_74 : _T_99; // @[Mux.scala 98:16]
  assign _T_101 = _T_71 ? _T_72 : _T_100; // @[Mux.scala 98:16]
  assign _T_102 = _T_68 ? _T_70 : _T_101; // @[Mux.scala 98:16]
  assign exe_alu_out = _T_65 ? _T_67 : _T_102; // @[Mux.scala 98:16]
  assign _T_115 = io_ctl_wb_sel == 2'h1; // @[dpath.scala 205:34]
  assign _T_116 = io_ctl_wb_sel == 2'h2; // @[dpath.scala 206:34]
  assign _T_117 = io_ctl_wb_sel == 2'h3; // @[dpath.scala 207:34]
  assign _T_118 = _T_117 ? csr_io_rw_rdata : exe_alu_out; // @[Mux.scala 98:16]
  assign _T_119 = _T_116 ? exe_reg_pc_plus4 : _T_118; // @[Mux.scala 98:16]
  assign _T_120 = _T_115 ? io_dmem_resp_bits_data : _T_119; // @[Mux.scala 98:16]
  assign exe_wbdata = _T_114 ? exe_alu_out : _T_120; // @[Mux.scala 98:16]
  assign _T_111 = io_ctl_stall | io_ctl_exception; // @[dpath.scala 191:56]
  assign _T_112 = ~_T_111; // @[dpath.scala 191:41]
  assign _T_123 = _T_18 ? regfile__T_19_data : 32'h0; // @[dpath.scala 214:41]
  assign _T_124 = _T_20 ? regfile__T_21_data : 32'h0; // @[dpath.scala 214:65]
  assign _T_127 = csr_io_time; // @[dpath.scala 225:18]
  assign _T_128 = io_ctl_if_kill ? 8'h4b : 8'h20; // @[Mux.scala 98:16]
  assign _T_129 = io_ctl_stall ? 8'h53 : _T_128; // @[Mux.scala 98:16]
  assign _T_130 = 3'h1 == io_ctl_pc_sel; // @[Mux.scala 80:60]
  assign _T_131 = _T_130 ? 8'h42 : 8'h3f; // @[Mux.scala 80:57]
  assign _T_132 = 3'h2 == io_ctl_pc_sel; // @[Mux.scala 80:60]
  assign _T_133 = _T_132 ? 8'h4a : _T_131; // @[Mux.scala 80:57]
  assign _T_134 = 3'h3 == io_ctl_pc_sel; // @[Mux.scala 80:60]
  assign _T_135 = _T_134 ? 8'h52 : _T_133; // @[Mux.scala 80:57]
  assign _T_136 = 3'h4 == io_ctl_pc_sel; // @[Mux.scala 80:60]
  assign _T_137 = _T_136 ? 8'h45 : _T_135; // @[Mux.scala 80:57]
  assign _T_138 = 3'h0 == io_ctl_pc_sel; // @[Mux.scala 80:60]
  assign _T_139 = _T_138 ? 8'h20 : _T_137; // @[Mux.scala 80:57]
  assign _T_140 = csr_io_exception ? 8'h58 : 8'h20; // @[dpath.scala 245:10]
  assign _T_142 = ~reset; // @[dpath.scala 224:10]
  assign io_ddpath_rdata = regfile__T_13_data; // @[dpath.scala 112:20]
  assign io_imem_req_bits_addr = if_reg_pc; // @[dpath.scala 76:26]
  assign io_dmem_req_bits_addr = _T_65 ? _T_67 : _T_102; // @[dpath.scala 219:26]
  assign io_dmem_req_bits_data = _T_20 ? regfile__T_21_data : 32'h0; // @[dpath.scala 220:26]
  assign io_dat_inst = exe_reg_inst; // @[dpath.scala 212:18]
  assign io_dat_br_eq = exe_rs1_data == exe_rs2_data; // @[dpath.scala 213:18]
  assign io_dat_br_lt = $signed(_T_123) < $signed(_T_124); // @[dpath.scala 214:18]
  assign io_dat_br_ltu = exe_rs1_data < exe_rs2_data; // @[dpath.scala 215:18]
  assign io_dat_csr_eret = csr_io_eret; // @[dpath.scala 196:20]
  assign csr_clock = clock;
  assign csr_reset = reset;
  assign csr_io_rw_cmd = io_ctl_csr_cmd; // @[dpath.scala 187:20]
  assign csr_io_rw_wdata = _T_65 ? _T_67 : _T_102; // @[dpath.scala 188:20]
  assign csr_io_decode_csr = exe_reg_inst[31:20]; // @[dpath.scala 186:23]
  assign csr_io_exception = io_ctl_exception; // @[dpath.scala 192:21]
  assign csr_io_retire = exe_reg_valid & _T_112; // @[dpath.scala 191:21]
  assign csr_io_pc = exe_reg_pc; // @[dpath.scala 193:21]
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
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  if_reg_pc = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  exe_reg_pc = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  exe_reg_pc_plus4 = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  exe_reg_inst = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  exe_reg_valid = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(regfile__T_14_en & regfile__T_14_mask) begin
      regfile[regfile__T_14_addr] <= regfile__T_14_data; // @[dpath.scala 109:21]
    end
    if(regfile__T_17_en & regfile__T_17_mask) begin
      regfile[regfile__T_17_addr] <= regfile__T_17_data; // @[dpath.scala 109:21]
    end
    if (reset) begin
      if_reg_pc <= 32'h80000000;
    end else if (_T) begin
      if (_T_2) begin
        if_reg_pc <= if_pc_plus4;
      end else if (_T_3) begin
        if_reg_pc <= exe_br_target;
      end else if (_T_4) begin
        if_reg_pc <= exe_jmp_target;
      end else if (_T_5) begin
        if_reg_pc <= exe_jump_reg_target;
      end else if (_T_6) begin
        if_reg_pc <= exception_target;
      end else begin
        if_reg_pc <= if_pc_plus4;
      end
    end
    if (reset) begin
      exe_reg_pc <= 32'h0;
    end else if (!(io_ctl_stall)) begin
      if (io_ctl_if_kill) begin
        exe_reg_pc <= 32'h0;
      end else begin
        exe_reg_pc <= if_reg_pc;
      end
    end
    if (reset) begin
      exe_reg_pc_plus4 <= 32'h0;
    end else begin
      exe_reg_pc_plus4 <= if_pc_plus4;
    end
    if (reset) begin
      exe_reg_inst <= 32'h4033;
    end else if (!(io_ctl_stall)) begin
      if (io_ctl_if_kill) begin
        exe_reg_inst <= 32'h4033;
      end else begin
        exe_reg_inst <= io_imem_resp_bits_data;
      end
    end
    if (reset) begin
      exe_reg_valid <= 1'h0;
    end else if (!(io_ctl_stall)) begin
      if (io_ctl_if_kill) begin
        exe_reg_valid <= 1'h0;
      end else begin
        exe_reg_valid <= 1'h1;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_142) begin
          $fwrite(32'h80000002,"Cyc= %d [%d] pc=[%x] W[r%d=%x][%d] Op1=[r%d][%x] Op2=[r%d][%x] inst=[%x] %c%c%c DASM(%x)\n",_T_127,csr_io_retire,exe_reg_pc,exe_wbaddr,exe_wbdata,exe_wben,exe_rs1_addr,exe_alu_op1,exe_rs2_addr,exe_alu_op2,exe_reg_inst,_T_129,_T_139,_T_140,exe_reg_inst); // @[dpath.scala 224:10]
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
  output [31:0] io_imem_req_bits_addr,
  input  [31:0] io_imem_resp_bits_data,
  output        io_dmem_req_valid,
  output [31:0] io_dmem_req_bits_addr,
  output [31:0] io_dmem_req_bits_data,
  output        io_dmem_req_bits_fcn,
  output [2:0]  io_dmem_req_bits_typ,
  input         io_dmem_resp_valid,
  input  [31:0] io_dmem_resp_bits_data,
  input  [4:0]  io_ddpath_addr,
  input  [31:0] io_ddpath_wdata,
  output [31:0] io_ddpath_rdata
);
  wire  c_io_dmem_req_valid; // @[core.scala 34:18]
  wire  c_io_dmem_req_bits_fcn; // @[core.scala 34:18]
  wire [2:0] c_io_dmem_req_bits_typ; // @[core.scala 34:18]
  wire  c_io_dmem_resp_valid; // @[core.scala 34:18]
  wire [31:0] c_io_dat_inst; // @[core.scala 34:18]
  wire  c_io_dat_br_eq; // @[core.scala 34:18]
  wire  c_io_dat_br_lt; // @[core.scala 34:18]
  wire  c_io_dat_br_ltu; // @[core.scala 34:18]
  wire  c_io_dat_csr_eret; // @[core.scala 34:18]
  wire  c_io_ctl_stall; // @[core.scala 34:18]
  wire  c_io_ctl_if_kill; // @[core.scala 34:18]
  wire [2:0] c_io_ctl_pc_sel; // @[core.scala 34:18]
  wire [1:0] c_io_ctl_op1_sel; // @[core.scala 34:18]
  wire [2:0] c_io_ctl_op2_sel; // @[core.scala 34:18]
  wire [4:0] c_io_ctl_alu_fun; // @[core.scala 34:18]
  wire [1:0] c_io_ctl_wb_sel; // @[core.scala 34:18]
  wire  c_io_ctl_rf_wen; // @[core.scala 34:18]
  wire [2:0] c_io_ctl_csr_cmd; // @[core.scala 34:18]
  wire  c_io_ctl_exception; // @[core.scala 34:18]
  wire  d_clock; // @[core.scala 35:18]
  wire  d_reset; // @[core.scala 35:18]
  wire [4:0] d_io_ddpath_addr; // @[core.scala 35:18]
  wire [31:0] d_io_ddpath_wdata; // @[core.scala 35:18]
  wire [31:0] d_io_ddpath_rdata; // @[core.scala 35:18]
  wire [31:0] d_io_imem_req_bits_addr; // @[core.scala 35:18]
  wire [31:0] d_io_imem_resp_bits_data; // @[core.scala 35:18]
  wire [31:0] d_io_dmem_req_bits_addr; // @[core.scala 35:18]
  wire [31:0] d_io_dmem_req_bits_data; // @[core.scala 35:18]
  wire [31:0] d_io_dmem_resp_bits_data; // @[core.scala 35:18]
  wire  d_io_ctl_stall; // @[core.scala 35:18]
  wire  d_io_ctl_if_kill; // @[core.scala 35:18]
  wire [2:0] d_io_ctl_pc_sel; // @[core.scala 35:18]
  wire [1:0] d_io_ctl_op1_sel; // @[core.scala 35:18]
  wire [2:0] d_io_ctl_op2_sel; // @[core.scala 35:18]
  wire [4:0] d_io_ctl_alu_fun; // @[core.scala 35:18]
  wire [1:0] d_io_ctl_wb_sel; // @[core.scala 35:18]
  wire  d_io_ctl_rf_wen; // @[core.scala 35:18]
  wire [2:0] d_io_ctl_csr_cmd; // @[core.scala 35:18]
  wire  d_io_ctl_exception; // @[core.scala 35:18]
  wire [31:0] d_io_dat_inst; // @[core.scala 35:18]
  wire  d_io_dat_br_eq; // @[core.scala 35:18]
  wire  d_io_dat_br_lt; // @[core.scala 35:18]
  wire  d_io_dat_br_ltu; // @[core.scala 35:18]
  wire  d_io_dat_csr_eret; // @[core.scala 35:18]
  CtlPath c ( // @[core.scala 34:18]
    .io_dmem_req_valid(c_io_dmem_req_valid),
    .io_dmem_req_bits_fcn(c_io_dmem_req_bits_fcn),
    .io_dmem_req_bits_typ(c_io_dmem_req_bits_typ),
    .io_dmem_resp_valid(c_io_dmem_resp_valid),
    .io_dat_inst(c_io_dat_inst),
    .io_dat_br_eq(c_io_dat_br_eq),
    .io_dat_br_lt(c_io_dat_br_lt),
    .io_dat_br_ltu(c_io_dat_br_ltu),
    .io_dat_csr_eret(c_io_dat_csr_eret),
    .io_ctl_stall(c_io_ctl_stall),
    .io_ctl_if_kill(c_io_ctl_if_kill),
    .io_ctl_pc_sel(c_io_ctl_pc_sel),
    .io_ctl_op1_sel(c_io_ctl_op1_sel),
    .io_ctl_op2_sel(c_io_ctl_op2_sel),
    .io_ctl_alu_fun(c_io_ctl_alu_fun),
    .io_ctl_wb_sel(c_io_ctl_wb_sel),
    .io_ctl_rf_wen(c_io_ctl_rf_wen),
    .io_ctl_csr_cmd(c_io_ctl_csr_cmd),
    .io_ctl_exception(c_io_ctl_exception)
  );
  DatPath d ( // @[core.scala 35:18]
    .clock(d_clock),
    .reset(d_reset),
    .io_ddpath_addr(d_io_ddpath_addr),
    .io_ddpath_wdata(d_io_ddpath_wdata),
    .io_ddpath_rdata(d_io_ddpath_rdata),
    .io_imem_req_bits_addr(d_io_imem_req_bits_addr),
    .io_imem_resp_bits_data(d_io_imem_resp_bits_data),
    .io_dmem_req_bits_addr(d_io_dmem_req_bits_addr),
    .io_dmem_req_bits_data(d_io_dmem_req_bits_data),
    .io_dmem_resp_bits_data(d_io_dmem_resp_bits_data),
    .io_ctl_stall(d_io_ctl_stall),
    .io_ctl_if_kill(d_io_ctl_if_kill),
    .io_ctl_pc_sel(d_io_ctl_pc_sel),
    .io_ctl_op1_sel(d_io_ctl_op1_sel),
    .io_ctl_op2_sel(d_io_ctl_op2_sel),
    .io_ctl_alu_fun(d_io_ctl_alu_fun),
    .io_ctl_wb_sel(d_io_ctl_wb_sel),
    .io_ctl_rf_wen(d_io_ctl_rf_wen),
    .io_ctl_csr_cmd(d_io_ctl_csr_cmd),
    .io_ctl_exception(d_io_ctl_exception),
    .io_dat_inst(d_io_dat_inst),
    .io_dat_br_eq(d_io_dat_br_eq),
    .io_dat_br_lt(d_io_dat_br_lt),
    .io_dat_br_ltu(d_io_dat_br_ltu),
    .io_dat_csr_eret(d_io_dat_csr_eret)
  );
  assign io_imem_req_bits_addr = d_io_imem_req_bits_addr; // @[core.scala 40:11 core.scala 41:11]
  assign io_dmem_req_valid = c_io_dmem_req_valid; // @[core.scala 44:11 core.scala 45:11 core.scala 46:21]
  assign io_dmem_req_bits_addr = d_io_dmem_req_bits_addr; // @[core.scala 44:11 core.scala 45:11]
  assign io_dmem_req_bits_data = d_io_dmem_req_bits_data; // @[core.scala 44:11 core.scala 45:11]
  assign io_dmem_req_bits_fcn = c_io_dmem_req_bits_fcn; // @[core.scala 44:11 core.scala 45:11 core.scala 48:24]
  assign io_dmem_req_bits_typ = c_io_dmem_req_bits_typ; // @[core.scala 44:11 core.scala 45:11 core.scala 47:24]
  assign io_ddpath_rdata = d_io_ddpath_rdata; // @[core.scala 50:15]
  assign c_io_dmem_resp_valid = io_dmem_resp_valid; // @[core.scala 44:11]
  assign c_io_dat_inst = d_io_dat_inst; // @[core.scala 38:13]
  assign c_io_dat_br_eq = d_io_dat_br_eq; // @[core.scala 38:13]
  assign c_io_dat_br_lt = d_io_dat_br_lt; // @[core.scala 38:13]
  assign c_io_dat_br_ltu = d_io_dat_br_ltu; // @[core.scala 38:13]
  assign c_io_dat_csr_eret = d_io_dat_csr_eret; // @[core.scala 38:13]
  assign d_clock = clock;
  assign d_reset = reset;
  assign d_io_ddpath_addr = io_ddpath_addr; // @[core.scala 50:15]
  assign d_io_ddpath_wdata = io_ddpath_wdata; // @[core.scala 50:15]
  assign d_io_imem_resp_bits_data = io_imem_resp_bits_data; // @[core.scala 41:11]
  assign d_io_dmem_resp_bits_data = io_dmem_resp_bits_data; // @[core.scala 45:11]
  assign d_io_ctl_stall = c_io_ctl_stall; // @[core.scala 37:13]
  assign d_io_ctl_if_kill = c_io_ctl_if_kill; // @[core.scala 37:13]
  assign d_io_ctl_pc_sel = c_io_ctl_pc_sel; // @[core.scala 37:13]
  assign d_io_ctl_op1_sel = c_io_ctl_op1_sel; // @[core.scala 37:13]
  assign d_io_ctl_op2_sel = c_io_ctl_op2_sel; // @[core.scala 37:13]
  assign d_io_ctl_alu_fun = c_io_ctl_alu_fun; // @[core.scala 37:13]
  assign d_io_ctl_wb_sel = c_io_ctl_wb_sel; // @[core.scala 37:13]
  assign d_io_ctl_rf_wen = c_io_ctl_rf_wen; // @[core.scala 37:13]
  assign d_io_ctl_csr_cmd = c_io_ctl_csr_cmd; // @[core.scala 37:13]
  assign d_io_ctl_exception = c_io_ctl_exception; // @[core.scala 37:13]
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
  wire  core_clock; // @[tile.scala 22:23]
  wire  core_reset; // @[tile.scala 22:23]
  wire [31:0] core_io_imem_req_bits_addr; // @[tile.scala 22:23]
  wire [31:0] core_io_imem_resp_bits_data; // @[tile.scala 22:23]
  wire  core_io_dmem_req_valid; // @[tile.scala 22:23]
  wire [31:0] core_io_dmem_req_bits_addr; // @[tile.scala 22:23]
  wire [31:0] core_io_dmem_req_bits_data; // @[tile.scala 22:23]
  wire  core_io_dmem_req_bits_fcn; // @[tile.scala 22:23]
  wire [2:0] core_io_dmem_req_bits_typ; // @[tile.scala 22:23]
  wire  core_io_dmem_resp_valid; // @[tile.scala 22:23]
  wire [31:0] core_io_dmem_resp_bits_data; // @[tile.scala 22:23]
  wire [4:0] core_io_ddpath_addr; // @[tile.scala 22:23]
  wire [31:0] core_io_ddpath_wdata; // @[tile.scala 22:23]
  wire [31:0] core_io_ddpath_rdata; // @[tile.scala 22:23]
  wire  memory_clock; // @[tile.scala 24:23]
  wire  memory_io_core_ports_0_req_valid; // @[tile.scala 24:23]
  wire [31:0] memory_io_core_ports_0_req_bits_addr; // @[tile.scala 24:23]
  wire [31:0] memory_io_core_ports_0_req_bits_data; // @[tile.scala 24:23]
  wire  memory_io_core_ports_0_req_bits_fcn; // @[tile.scala 24:23]
  wire [2:0] memory_io_core_ports_0_req_bits_typ; // @[tile.scala 24:23]
  wire  memory_io_core_ports_0_resp_valid; // @[tile.scala 24:23]
  wire [31:0] memory_io_core_ports_0_resp_bits_data; // @[tile.scala 24:23]
  wire [31:0] memory_io_core_ports_1_req_bits_addr; // @[tile.scala 24:23]
  wire [31:0] memory_io_core_ports_1_resp_bits_data; // @[tile.scala 24:23]
  wire  memory_io_debug_port_req_valid; // @[tile.scala 24:23]
  wire [31:0] memory_io_debug_port_req_bits_addr; // @[tile.scala 24:23]
  wire [31:0] memory_io_debug_port_req_bits_data; // @[tile.scala 24:23]
  wire  memory_io_debug_port_req_bits_fcn; // @[tile.scala 24:23]
  wire  memory_io_debug_port_resp_valid; // @[tile.scala 24:23]
  wire [31:0] memory_io_debug_port_resp_bits_data; // @[tile.scala 24:23]
  wire  debug_clock; // @[tile.scala 25:22]
  wire  debug_reset; // @[tile.scala 25:22]
  wire  debug_io_dmi_req_ready; // @[tile.scala 25:22]
  wire  debug_io_dmi_req_valid; // @[tile.scala 25:22]
  wire [1:0] debug_io_dmi_req_bits_op; // @[tile.scala 25:22]
  wire [6:0] debug_io_dmi_req_bits_addr; // @[tile.scala 25:22]
  wire [31:0] debug_io_dmi_req_bits_data; // @[tile.scala 25:22]
  wire  debug_io_dmi_resp_valid; // @[tile.scala 25:22]
  wire [31:0] debug_io_dmi_resp_bits_data; // @[tile.scala 25:22]
  wire [4:0] debug_io_ddpath_addr; // @[tile.scala 25:22]
  wire [31:0] debug_io_ddpath_wdata; // @[tile.scala 25:22]
  wire [31:0] debug_io_ddpath_rdata; // @[tile.scala 25:22]
  wire  debug_io_debugmem_req_valid; // @[tile.scala 25:22]
  wire [31:0] debug_io_debugmem_req_bits_addr; // @[tile.scala 25:22]
  wire [31:0] debug_io_debugmem_req_bits_data; // @[tile.scala 25:22]
  wire  debug_io_debugmem_req_bits_fcn; // @[tile.scala 25:22]
  wire  debug_io_debugmem_resp_valid; // @[tile.scala 25:22]
  wire [31:0] debug_io_debugmem_resp_bits_data; // @[tile.scala 25:22]
  wire  debug_io_resetcore; // @[tile.scala 25:22]
  Core core ( // @[tile.scala 22:23]
    .clock(core_clock),
    .reset(core_reset),
    .io_imem_req_bits_addr(core_io_imem_req_bits_addr),
    .io_imem_resp_bits_data(core_io_imem_resp_bits_data),
    .io_dmem_req_valid(core_io_dmem_req_valid),
    .io_dmem_req_bits_addr(core_io_dmem_req_bits_addr),
    .io_dmem_req_bits_data(core_io_dmem_req_bits_data),
    .io_dmem_req_bits_fcn(core_io_dmem_req_bits_fcn),
    .io_dmem_req_bits_typ(core_io_dmem_req_bits_typ),
    .io_dmem_resp_valid(core_io_dmem_resp_valid),
    .io_dmem_resp_bits_data(core_io_dmem_resp_bits_data),
    .io_ddpath_addr(core_io_ddpath_addr),
    .io_ddpath_wdata(core_io_ddpath_wdata),
    .io_ddpath_rdata(core_io_ddpath_rdata)
  );
  AsyncScratchPadMemory memory ( // @[tile.scala 24:23]
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
  DebugModule debug ( // @[tile.scala 25:22]
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
  assign io_dmi_req_ready = debug_io_dmi_req_ready; // @[tile.scala 34:17]
  assign io_dmi_resp_valid = debug_io_dmi_resp_valid; // @[tile.scala 34:17]
  assign io_dmi_resp_bits_data = debug_io_dmi_resp_bits_data; // @[tile.scala 34:17]
  assign core_clock = clock;
  assign core_reset = debug_io_resetcore | reset; // @[tile.scala 31:15]
  assign core_io_imem_resp_bits_data = memory_io_core_ports_1_resp_bits_data; // @[tile.scala 28:17]
  assign core_io_dmem_resp_valid = memory_io_core_ports_0_resp_valid; // @[tile.scala 27:17]
  assign core_io_dmem_resp_bits_data = memory_io_core_ports_0_resp_bits_data; // @[tile.scala 27:17]
  assign core_io_ddpath_addr = debug_io_ddpath_addr; // @[tile.scala 32:20]
  assign core_io_ddpath_wdata = debug_io_ddpath_wdata; // @[tile.scala 32:20]
  assign memory_clock = clock;
  assign memory_io_core_ports_0_req_valid = core_io_dmem_req_valid; // @[tile.scala 27:17]
  assign memory_io_core_ports_0_req_bits_addr = core_io_dmem_req_bits_addr; // @[tile.scala 27:17]
  assign memory_io_core_ports_0_req_bits_data = core_io_dmem_req_bits_data; // @[tile.scala 27:17]
  assign memory_io_core_ports_0_req_bits_fcn = core_io_dmem_req_bits_fcn; // @[tile.scala 27:17]
  assign memory_io_core_ports_0_req_bits_typ = core_io_dmem_req_bits_typ; // @[tile.scala 27:17]
  assign memory_io_core_ports_1_req_bits_addr = core_io_imem_req_bits_addr; // @[tile.scala 28:17]
  assign memory_io_debug_port_req_valid = debug_io_debugmem_req_valid; // @[tile.scala 29:22]
  assign memory_io_debug_port_req_bits_addr = debug_io_debugmem_req_bits_addr; // @[tile.scala 29:22]
  assign memory_io_debug_port_req_bits_data = debug_io_debugmem_req_bits_data; // @[tile.scala 29:22]
  assign memory_io_debug_port_req_bits_fcn = debug_io_debugmem_req_bits_fcn; // @[tile.scala 29:22]
  assign debug_clock = clock;
  assign debug_reset = reset;
  assign debug_io_dmi_req_valid = io_dmi_req_valid; // @[tile.scala 34:17]
  assign debug_io_dmi_req_bits_op = io_dmi_req_bits_op; // @[tile.scala 34:17]
  assign debug_io_dmi_req_bits_addr = io_dmi_req_bits_addr; // @[tile.scala 34:17]
  assign debug_io_dmi_req_bits_data = io_dmi_req_bits_data; // @[tile.scala 34:17]
  assign debug_io_ddpath_rdata = core_io_ddpath_rdata; // @[tile.scala 32:20]
  assign debug_io_debugmem_resp_valid = memory_io_debug_port_resp_valid; // @[tile.scala 29:22]
  assign debug_io_debugmem_resp_bits_data = memory_io_debug_port_resp_bits_data; // @[tile.scala 29:22]
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
