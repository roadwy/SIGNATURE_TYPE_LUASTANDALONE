local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = 20
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = pevars
L2_2 = L2_2.sigaddr
L2_2 = L2_2 + L0_0
L1_1 = L1_1(L2_2, L3_3)
L2_2 = string
L2_2 = L2_2.find
L6_6 = true
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 == nil then
  return L3_3
end
L0_0 = L3_3 - 1
L3_3(L4_4, L5_5)
L1_1 = L3_3
for L6_6 = 1, L0_0 do
  if not string.find(L1_1, "`\185....\243\164a", L6_6, true) then
    break
  end
  pe.mmap_patch_va(pevars.sigaddr + string.find(L1_1, "`\185....\243\164a", L6_6, true) - 1, "\144\144\144\144\144\144\144\144\144")
end
return L3_3
