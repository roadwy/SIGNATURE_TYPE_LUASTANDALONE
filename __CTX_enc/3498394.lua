-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/__CTX_enc/3498394 

-- params : ...
-- function num : 0
if peattributes.no_relocs == false then
  return mp.CLEAN
end
if peattributes.lastscn_falign == false then
  return mp.CLEAN
end
if peattributes.lastscn_writable == false then
  return mp.CLEAN
end
if peattributes.epscn_islast ~= false then
  return mp.CLEAN
end
if peattributes.packed ~= false then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData < 9728 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).VirtualSize < 9728 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "\143\000Y\000\000\000L\000T\000h\000p\000|\000\132\000\152\000\204\000\224\000\236\000\252\000\000\001\028\0010\001@\001\\\001d\001t\001\128\001\132\001\172\001\192\001\196\001\216\001\232\001\000\002 \002(\0028\002`\002h\002\140\002\172\002\196\002\220\002\000\003\028\003$\0030\0034\0038\003d\003p\003|\003\136\003\152\003\168\003\188\003\200\003\212\003,\004@\004D\004p\004\132\004\184\004\188\004\228\004\232\004\244\004\000\005\180\005\016\006\028\006H\006X\006p\006x\006\132\006\148\006\156\006\172\006\212\006\224\006\252\006\f\a\028\aP\aX\ad\al\a\216\a\\\b\152\b\204\b\216\b\224\b\f\t\b\0008\001h\001\152\002\016\003H\003t\004\148\005\168\005\t\000\128\002\156\002\180\002\240\002\172\004\024\006\192\006\228\006\188\b\n\000\b\003<\003\228\003\144\004\144\005\192\005|\006\184\at\b\164\b\006\0004\001\160\003\236\003(\006\188\006\024\t\a\000(\000\140\000$\0020\002 \003\128\004p\a\003\000\208\0018\005\176\006\001\000\228\a\r\000,\000<\002P\002\236\002\140\004,\005D\005\220\005\248\0058\006 \a$\ad\b\001\000\004\t\b\000\b\000D\000\244\000\148\001@\0034\0060\bx\b\002\000\228\002d\005\002\000\240\000\136\006\006\000,\001H\002d\002\240\005\152\006H\b\003\000h\004\236\004\028\005\001\000$\005\a\000\000\004\024\004H\004\208\005\148\aT\b\240\b\001\000L\006\006\000L\005T\005x\005\204\a\000\b\016\b\001\000\020\001\002\000\b\002\016\005\002\000\176\002\188\a\003\0000\004\020\006$\006\001\000T\001\003\000p\005`\bp\b\001\000\248\001\001\000t\003\001\000h\003\004\000\160\004@\006\164\006\160\a\001\000\200\001\004\000\236\001l\005\184\005\028\b\001\000D\b\025\000\016\000<\000\192\000(\001\228\001D\002X\002|\002L\003T\003\\\003\184\003\252\003\020\004\\\004`\004`\005\236\0060\a<\aH\a\232\a,\b@\b\236\b\002\000\164\a,\t\002\000t\005\204\005\001\000\252\a\001\0004\000\002\000\208\002\240\003\006\000P\001\232\002\244\002l\004x\004\220\a\002\000\004\000\148\000\004\000\136\005\236\005\132\a\248\b\004\000\228\000\004\001D\001\020\003\001\000p\002\002\000\200\006\016\a\b\000\028\000t\000\f\001(\004\208\004\220\004h\006\004\a\024\000X\000\232\000\b\001\f\002\024\002\204\002\128\003\144\003\156\003\216\003\004\004\b\004$\0048\004L\004\004\005\020\005\172\005\216\005\224\005\232\005\196\006\196\b\228\b\004\000\020\002\\\006\156\a \t\005\000x\001\144\001\184\006\216\006\200\a\004\0000\000 \001\184\001\000\a\004\000\024\000\204\004\216\004d\006\a\000\208\000H\001\144\002d\004\024\005 \005<\005\002\000\212\005 \b\004\000@\000d\000x\a\168\b\002\000\028\004\000\t\001\000\244\006\003\000\200\000\240\001$\b\001\000\156\000\002\000\212\002\248\004\002\000\b\006\f\006\001\000|\005\002\000x\002\148\002\001\000\024\001\002\000(\003\224\003\001\000\b\005\002\000\248\002\204\003\001\0000\005\001\000\188\005\002\000@\005\176\b\004\000t\002\132\002\140\005\208\b\a\000\212\000\016\002\224\002\152\005\220\006\240\006\024\b\b\000\136\000\180\000\180\001\004\003P\005X\005\164\005,\006\002\000T\004\136\004\001\000\180\b\001\000\184\000\001\000\192\a\001\000|\004\001\000P\b\002\000`\006\140\006\002\000\196\003\244\003\001\000\164\001\004\000l\001\004\002\252\005P\006\003\000p\001\168\002T\006\v\000`\001|\0014\002<\004\180\004\224\004\208\006\024\aX\b\200\b\220\b\001\000\164\004\002\000<\b\244\b\021\000H\000\164\000\176\000\204\001\160\002\216\002P\003\172\003\248\003\016\004X\004\\\005\128\005\180\a\196\a\236\a\004\b|\b\136\b\232\b\b\t\a\000\f\000\188\000\224\001X\003\148\003D\a\244\a\001\000\152\001\001\000\020\000\a\000<\001\028\002,\002\176\005\144\006L\a\212\a\001\000\\\000\001\000\220\001\001\000\136\001\001\000\180\006\001\000\140\003\002\000\160\000`\003\002\000\164\002\228\005\003\000\232\003\184\b\028\t\004\000X\001 \004\168\0044\b\002\000(\005\136\a\005\000$\000\156\001\136\002D\003\f\b\001\000L\001\001\000\192\003\a\000P\000l\000\252\001x\003D\006\168\006\b\a\002\000\144\b\156\b\003\000`\at\a\148\b\003\000\168\001h\a(\t\001\000\216\000\001\000\168\000\001\000\188\001\b\000 \000\016\001\176\004l\006t\006\204\006\020\a\192\b\003\000\132\005\196\005\144\a\001\000P\004\b\000x\000\200\0024\005\160\005\248\006|\a\224\al\b\001\000\212\b\001\000\160\b\002\000\180\003h\b\002\000h\005\016\t\001\000\f\003\001\000\144\000\001\000\184\002\001\000\156\005\003\000\148\004\004\006\128\a\001\000\252\b\002\000\156\004\196\004\003\000\196\000\220\0038\b\004\000`\000\188\002\f\005L\b\015\000\128\000\220\000\248\000\252\002\024\003,\003l\003\164\003\208\003\f\004\240\004\252\004H\005\168\a\128\b\002\000\192\002$\t\001\000\\\a\001\000\152\a\001\0004\004\001\000\240\a\001\000\176\001\001\000\212\001\002\000\b\b\140\b\001\000\244\001\002\000\152\004\192\004\002\000\212\004@\a\001\000\176\003\001\000\132\003\n\000\140\001l\002\200\004\160\006(\a4\aT\a\176\a\248\a\172\b\025\0008\000\172\000$\001\160\001@\002L\002T\002\\\002\200\005\244\005\000\006 \0060\006<\006\128\006\232\006,\a8\a\140\a\172\a\208\a\020\b(\b\132\b\020\t"
l_0_1.xray_type = 15
l_0_1.bytes_to_decrypt = 0
local l_0_2 = {}
l_0_2.sig = "\144\000W\000\b\000\016\000(\0008\000D\000l\000x\000\152\000\172\000\192\000\212\000\220\000\228\000\016\0010\001d\001p\001x\001\132\001\136\001\156\001\164\001\180\001\200\001\236\001\b\002 \002$\0020\0028\002L\002P\002p\002t\002\144\002\160\002\164\002\180\002\188\002\224\002\228\002\024\003\028\0030\0038\003D\003H\003X\003l\003\160\003\228\003\244\003\248\003\028\0040\004@\004d\004h\004p\004t\004\128\004\208\004\244\004\f\005\160\005\196\005\204\005\216\005\000\006\016\006\024\006l\006p\006\160\006\172\006\184\006\212\006\216\006\224\006\004\a\240\a\f\bt\b|\b\144\b\156\b\168\b\003\000\152\002\172\002\204\006\005\000\\\001\220\001\\\004`\a\192\a\017\000X\000d\000\128\000\212\001h\002\168\002\248\002\176\003\232\003\148\004\172\004\232\004\252\004d\a|\a\000\b\132\b\003\000\196\000 \003\144\005\004\000,\000|\0014\002\164\b\001\000(\006\003\000\028\000p\000\148\a\002\000\252\003\224\004\002\000(\0034\b\004\000P\001\224\005\244\005@\006\a\000x\003\144\003\004\004,\005\180\005\212\ah\b\001\000L\004\006\000\224\000\028\002p\005\200\005\004\b\016\b\003\000\200\003\\\aD\b\001\000\000\000\001\000|\002\002\000\020\000\228\a\001\000\024\005\001\000t\006\003\000\240\001H\005\128\a\004\000\216\002\252\002<\003\184\003\001\000T\006\003\000`\000\f\004\176\005\002\000x\004\\\005\001\000\172\005\003\000,\001\196\004\000\a\001\000\232\002\003\000\244\002\016\003\172\003\006\000<\002\196\003\140\004@\005x\005P\b\001\000\000\001\005\000\244\000\136\004 \005|\005X\b\v\000L\001\208\001\128\002\208\002\b\004$\004\232\005\136\006\244\006\b\a\128\b\006\000(\002\152\004\200\004\236\004@\a\132\a\001\000\164\000\002\000@\002\152\003\001\000\020\004\001\000\192\003\004\000\228\001\248\0048\005H\a\001\000(\a\001\000@\001\026\000\184\000\204\000$\0018\001X\001\172\001\240\002\f\003\180\003,\004X\004(\005\156\005\188\005\252\005\b\006 \006H\006\128\006\144\006\196\006L\a\208\a@\bL\bT\b\001\000d\b\002\000D\005L\005\002\000\136\005\152\005\001\000\000\002\003\000\132\004\028\005T\005\a\000X\002t\003\140\003\220\003\000\004P\a\216\a\001\000\b\b\003\000|\000\216\004l\005\003\0004\000\f\002\016\002\t\000\156\000\020\001\184\001\204\001\144\004`\006\164\006\176\006\160\a\002\000\\\006\188\006\014\000\192\002\200\002,\003p\003\136\003\208\003 \004\212\004\220\006\252\006\180\a\252\a\\\b`\b\006\000\236\000\f\001h\0018\006\244\a\184\b\001\000\156\a\004\000\144\000\176\000\240\000t\a\003\000t\001,\006L\006\003\000`\002\188\003\184\004\002\000P\003\172\a\002\000\164\a\180\b\001\000\148\001\001\000\148\003\003\000\132\000\140\002$\b\001\000H\001\b\000<\000H\000L\000\004\001\b\001\020\002\024\002<\005\001\000\164\003\004\000\148\000\168\000\244\001\212\005\002\000\132\005\240\005\001\000|\003\002\000\004\003L\003\004\000\220\004P\005X\0050\a\004\000d\002\188\004\228\006\184\a\006\000@\000\188\000\160\004\164\004$\0060\006\004\000\248\000\152\001\168\0050\b\001\000,\a\001\000(\b\001\000\192\004\001\000\236\005\001\000\156\003\001\0000\005\b\000\024\0000\000$\003\128\003H\004\232\006\220\a\020\b\003\000\216\000\184\002\136\a\v\000\232\001\004\002H\002l\002h\003\240\003\204\004\020\006h\006p\b\152\b\002\000\b\003`\003\004\000 \001\136\002D\006l\b\016\000\248\001D\002\\\002d\003\216\003\236\003(\004\176\004\016\005$\005`\005\028\0064\ap\a\140\a\204\a\t\000\200\0004\001T\001\168\001\156\002\236\0024\003\184\005\140\006\001\000\140\005\001\000H\b\005\000\f\000\208\000l\004\240\004\192\005\001\000\176\b\001\000\248\006\001\000\212\002\001\000<\006\001\000\b\005\001\000\132\006\004\000<\ah\a\144\a\188\a\002\000\028\001\004\005\001\000T\000\n\000\128\001\176\001\196\001\220\002@\003<\004\208\005\156\006\168\006\180\006\001\000<\b\002\000X\a\196\a\003\000\020\003\248\005x\b\004\000h\000\160\001T\003\208\006\001\000\024\004\a\000\160\000<\001\188\001\216\001T\002\156\004d\006\003\000\228\004\000\005d\005\003\000\140\001\180\004\024\b\a\000\140\000\132\003\200\006$\al\a8\b\148\b\002\000\200\a\160\b\001\000\004\000\002\000\024\a\232\a\002\000\232\000(\001\001\000\020\005\002\000\204\0034\004\001\000x\a\001\000\188\b\001\000\\\000\001\000 \b\002\000\224\001\196\002\001\000\228\005\001\000,\b\001\000x\002\002\000P\004\f\a\001\000\132\002\001\000\240\006\001\000\220\005\001\000T\a\r\000$\000t\000`\001,\002\176\002\\\003`\004|\004\148\006\152\006\152\a\236\a\140\b\001\000D\004\005\000\144\001\148\0024\006X\006\224\a\002\000P\000\168\a\002\000\212\003\168\004\001\000x\006\003\000\252\001\204\002\000\003\001\000\236\006\003\000\224\003\016\0048\004\003\000\136\000\024\001\028\b\001\000l\001\002\000\164\0058\a\003\000\016\a\028\a\176\a\002\000T\004\020\a\021\000 \000\180\000\252\000D\001\192\001\168\0034\005h\005t\005\128\005\148\005\004\006\f\006P\006|\006\192\006 \aD\a\248\a\136\b\172\b"
l_0_2.xray_type = 15
l_0_2.bytes_to_decrypt = 0
local l_0_3 = {}
l_0_3.sig = "R\000@\000\016\000 \000$\000T\000l\000\132\000\140\000\212\000\224\000\232\000\248\000$\0010\001H\001L\001d\001\136\001\156\001\160\001\168\001\196\001\204\001\216\001\220\001\228\001\236\001\248\001\252\001\028\0020\0028\002L\002p\002|\002\136\002\152\002\160\002\168\002\236\002\240\002\020\003\028\003(\0034\003H\003L\003X\003`\003h\003l\003p\003x\003|\003\132\003\144\003\156\003\164\003\172\003\192\003\216\003\224\003\244\003\000\004(\004\004\0008\000\188\001P\002\208\003\005\000\224\002\f\003@\003\176\003\020\004\003\000|\000\\\001t\001\002\0004\000\192\001\002\0004\001\b\002\001\000\004\003\001\000\128\002\005\000\b\001\176\001\184\002\204\002\b\004\003\000\164\002\128\003\168\003\001\000\180\003\001\000\220\002\001\000\176\002\001\000@\002\001\000\228\002\001\000\000\002\001\000\248\002\001\000X\000\003\000 \003,\0038\003\002\000$\002\f\004\020\000\004\0000\000\152\000\168\000\176\000\188\000\196\000\000\001\024\001<\001X\001|\001\016\002(\002\\\002\188\003\204\003\236\003\016\004$\004\001\000\148\003\001\000\000\003\002\000\\\000\240\001\001\000t\000\001\000\004\002\001\000,\002\001\000p\001\001\000\208\002\002\000<\002t\002\001\000p\000\002\000L\000\240\000\001\000\216\000\001\000D\002\002\000\140\002\248\003\005\000\020\000`\000\140\001\192\002\212\002\001\000l\002\001\000<\000\001\000T\002\002\000\188\002\028\004\003\000\020\002\244\002\004\004\001\000\156\000\001\000\180\000\001\000@\000\002\000D\000\196\002\005\000(\001h\001\156\002\\\003\160\003\f\000\136\000\208\000\244\000D\001`\001\244\001x\002\024\003$\0030\003D\003d\003\001\000\020\001\005\000x\000\184\001\172\002\232\003\024\004\a\000\000\000,\000T\001x\001\184\003\200\003 \004\001\000\004\001\001\000P\003\001\000(\000\001\000\128\001\a\000\128\000\228\000\212\001\232\001H\002`\002\220\003\001\000\172\001\001\000\028\000\001\000\180\001\001\000\200\001\001\000\236\000\005\000h\000\164\001\224\0014\002t\003\002\000\144\000\160\000\001\000\b\000\003\000\132\002\232\002\240\003\002\000P\000\152\001\a\000\024\000d\000\144\001\208\001\252\002\196\003,\004\001\000P\001\001\000\028\001\003\000\144\002<\003\136\003\001\000\200\002\004\000\220\000\140\003\228\003\252\003\001\000\216\002\001\000\016\003\001\000\180\002\a\000\f\000 \001\132\001\024\002\148\002T\003\152\003\001\000d\002\001\000\f\001\001\000H\000\001\000\212\003\001\000\b\003\002\000\016\001\148\001\016\000\148\000\164\000\172\000\184\000\192\000\200\000\204\000\252\000,\0018\001@\001l\001\f\002 \002X\002h\002"
l_0_3.xray_type = 15
l_0_3.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC68: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
l_0_2 = l_0_0
l_0_3 = 3
local l_0_4 = -1
local l_0_5 = 16384
do
  local l_0_6 = 0
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC78: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end
