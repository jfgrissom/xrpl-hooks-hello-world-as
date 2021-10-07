(module
 (type $i64_=>_i64 (func (param i64) (result i64)))
 (type $i32_i32_i32_i32_i32_=>_i64 (func (param i32 i32 i32 i32 i32) (result i64)))
 (type $i32_i32_i64_=>_i64 (func (param i32 i32 i64) (result i64)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "env" "trace" (func $node_modules/xrpl-hooks-api-assembly-script/dist/index/trace (param i32 i32 i32 i32 i32) (result i64)))
 (import "env" "accept" (func $node_modules/xrpl-hooks-api-assembly-script/dist/index/accept (param i32 i32 i64) (result i64)))
 (import "env" "_g" (func $node_modules/xrpl-hooks-api-assembly-script/dist/index/_g (param i32 i32) (result i32)))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\01\00\00\00\04\00\00\001\00U")
 (data (i32.const 1068) "\1c")
 (data (i32.const 1080) "\01\00\00\00\04\00\00\002\00U")
 (data (i32.const 1100) "\1c")
 (data (i32.const 1112) "\01\00\00\00\04\00\00\004\00U")
 (data (i32.const 1132) ",")
 (data (i32.const 1144) "\01\00\00\00\16\00\00\00H\00e\00l\00l\00o\00 \00W\00o\00r\00l\00d")
 (data (i32.const 1180) "\1c")
 (data (i32.const 1192) "\01")
 (data (i32.const 1212) "\\")
 (data (i32.const 1224) "\01\00\00\00>\00\00\00A\00c\00c\00e\00p\00t\00e\00d\00 \00H\00o\00o\00k\00 \00C\00a\00l\00l\00:\00 \00H\00e\00l\00l\00o\00 \00W\00o\00r\00l\00d")
 (export "cbak" (func $assembly/index/cbak))
 (export "hook" (func $assembly/index/hook))
 (export "memory" (memory $0))
 (func $assembly/index/cbak (param $0 i64) (result i64)
  local.get $0
 )
 (func $assembly/index/hook (param $0 i64) (result i64)
  i32.const 1200
  i32.const 0
  i32.const 1152
  i32.const 1148
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  i32.const 0
  call $node_modules/xrpl-hooks-api-assembly-script/dist/index/trace
  drop
  i32.const 1232
  i32.const 1228
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  i64.const 200
  call $node_modules/xrpl-hooks-api-assembly-script/dist/index/accept
  drop
  i32.const 1
  i32.const 1
  call $node_modules/xrpl-hooks-api-assembly-script/dist/index/_g
  drop
  local.get $0
 )
)
