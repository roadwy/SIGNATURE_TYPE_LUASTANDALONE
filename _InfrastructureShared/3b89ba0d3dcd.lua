local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 + 13
L0_0 = L0_0(L1_1, 4)
L1_1 = string
L1_1 = L1_1.find
L1_1 = L1_1(L0_0, "\173\139\240", 1, true)
if L1_1 ~= nil then
else
  L1_1 = string.find(L0_0, "\1396", 1, true)
  if L1_1 ~= nil then
  else
    return mp.LOWFI
  end
end
pe.mmap_patch_va(pevars.sigaddr + (44 + 1 + 2), ")\246\235 ")
return mp.CLEAN
