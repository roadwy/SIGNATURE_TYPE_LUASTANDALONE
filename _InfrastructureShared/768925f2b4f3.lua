local L0_0, L1_1
function L0_0(A0_2)
  local L2_3
  L2_3 = string
  L2_3 = L2_3.format
  return L2_3("%c%c%c%c", mp.bitand(A0_2, 255), mp.bitand(mp.shr32(A0_2, 8), 255), mp.bitand(mp.shr32(A0_2, 16), 255), mp.bitand(mp.shr32(A0_2, 24), 255))
end
offset2bin = L0_0
L0_0 = 33
L1_1 = string
L1_1 = L1_1.byte
L1_1 = L1_1(pe.mmap_va(pevars.sigaddr + 16, 1))
if L1_1 == 131 then
  L0_0 = 30
end
L1_1 = mp
L1_1 = L1_1.bitand
L1_1 = L1_1(mp.readu_u32(pe.mmap_va(pevars.sigaddr - 4, 4), 1), 16777215)
if L1_1 == 15401588 then
  L1_1 = pe
  L1_1 = L1_1.mmap_patch_va
  L1_1(pevars.sigaddr - 2, "\144\144")
end
L1_1 = pe
L1_1 = L1_1.mmap_va
L1_1 = L1_1(pevars.sigaddr + L0_0, 256)
if string.find(L1_1, "\139U\252", 1, true) ~= nil then
  pe.mmap_patch_va(pevars.sigaddr + L0_0, "\235")
  pe.mmap_patch_va(pevars.sigaddr + L0_0 + 1, offset2bin(string.find(L1_1, "\139U\252", 1, true) - 3))
  return mp.INFECTED
end
return mp.CLEAN
