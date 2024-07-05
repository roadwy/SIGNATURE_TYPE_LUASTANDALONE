local L0_0, L1_1
L0_0 = pevars
L0_0 = L0_0.sigaddr
L0_0 = L0_0 + 36490
L1_1 = pe
L1_1 = L1_1.mmap_va
L1_1 = L1_1(L0_0, 32)
if mp.readu_u32(L1_1, 1) ~= 9443048 or mp.readu_u32(L1_1, 5) ~= 4270450944 or mp.readu_u32(L1_1, 7) ~= 4294966921 or mp.readu_u16(L1_1, 11) == 52428 or mp.readu_u16(L1_1, 13) == 52428 or mp.readu_u32(L1_1, 15) ~= 3968554444 or mp.readu_u16(L1_1, 19) ~= 22103 then
  mp.set_mpattribute("PEBMPAT:VirTool:Win32/Autoit!obfuscated")
  return mp.CLEAN
end
L1_1 = pe.mmap_va(L0_0 + 8350, 32)
if mp.readu_u32(L1_1, 1) ~= 1566269023 or mp.readu_u16(L1_1, 4) ~= 50013 or mp.readu_u16(L1_1, 6) == 52428 or mp.readu_u32(L1_1, 8) == 3435973836 or mp.readu_u32(L1_1, 12) == 3435973836 or mp.readu_u16(L1_1, 15) == 52428 or mp.readu_u32(L1_1, 17) ~= 1442810828 then
  mp.set_mpattribute("PEBMPAT:VirTool:Win32/Autoit!obfuscated")
  return mp.CLEAN
end
return mp.SUSPICIOUS
