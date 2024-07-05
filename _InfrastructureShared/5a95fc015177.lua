local L0_0, L1_1, L2_2
L0_0 = 19
L1_1 = string
L1_1 = L1_1.byte
L2_2 = pe
L2_2 = L2_2.mmap_va
L2_2 = L2_2(pevars.sigaddr + 13, 1)
L1_1 = L1_1(L2_2, L2_2(pevars.sigaddr + 13, 1))
if L1_1 ~= 232 then
  L0_0 = 20
end
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = pevars
L2_2 = L2_2.sigaddr
L2_2 = L2_2 + L0_0
L1_1 = L1_1(L2_2, 16)
L2_2 = string
L2_2 = L2_2.find
L2_2 = L2_2(L1_1, "\131\193", 1, true)
if L2_2 == nil then
  L2_2 = string.find(L1_1, "\131\233", 1, true)
  if L2_2 == nil then
    L2_2 = string.find(L1_1, "\131\234", 1, true)
    if L2_2 == nil then
      L2_2 = string.find(L1_1, "\131\235", 1, true)
      if L2_2 == nil then
        L2_2 = string.find(L1_1, "\131\238", 1, true)
        if L2_2 == nil then
          L2_2 = string.find(L1_1, "\128,", 1, true)
          if L2_2 ~= nil then
            L0_0 = L0_0 - 1
            L2_2 = L2_2 + 1
          end
        end
      end
    end
  end
end
for _FORV_6_ = 1, L2_2 - 1 do
  pe.mmap_patch_va(pevars.sigaddr + L0_0 + _FORV_6_ - 1, "\144")
end
return _FOR_.INFECTED
