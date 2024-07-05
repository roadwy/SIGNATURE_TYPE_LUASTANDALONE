local L0_0, L1_1
L0_0 = pevars
L0_0 = L0_0.sigaddr
L1_1 = pe
L1_1 = L1_1.mmap_va
L1_1 = L1_1(L0_0 + 2287, 32)
if mp.readu_u32(L1_1, 1) ~= 1935939071 or mp.readu_u32(L1_1, 5) ~= 3277652040 or mp.readu_u16(L1_1, 9) == 52428 or mp.readu_u32(L1_1, 11) == 3435973836 or mp.readu_u32(L1_1, 15) == 3435973836 or mp.readu_u32(L1_1, 18) == 3435973836 or mp.readu_u32(L1_1, 22) ~= 1098924136 then
  mp.set_mpattribute("PEBMPAT:VirTool:Win32/Autoit!obfuscated")
  return mp.CLEAN
end
return mp.SUSPICIOUS
