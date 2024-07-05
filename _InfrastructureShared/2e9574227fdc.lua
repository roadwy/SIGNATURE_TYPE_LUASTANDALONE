local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L2_2 = 100
L0_0 = L0_0(L1_1, L2_2)
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "Yt"
L4_4 = 1
L1_1 = L1_1(L2_2, L3_3, L4_4, true)
L2_2 = string
L2_2 = L2_2.find
L3_3 = L0_0
L4_4 = "\015\132"
L2_2 = L2_2(L3_3, L4_4, 1, true)
if L2_2 ~= nil and L1_1 ~= nil then
  if L1_1 <= L2_2 then
    L3_3 = string
    L3_3 = L3_3.byte
    L4_4 = L0_0
    L3_3 = L3_3(L4_4, L2_2 + 2)
    L4_4 = string
    L4_4 = L4_4.char
    L4_4 = L4_4(L2_2 - L1_1 + L3_3)
    pe.mmap_patch_va(pevars.sigaddr + L1_1, string.format("\233%s\000\000\000", L4_4))
  else
    L3_3 = pe
    L3_3 = L3_3.mmap_patch_va
    L4_4 = pevars
    L4_4 = L4_4.sigaddr
    L4_4 = L4_4 + L2_2
    L4_4 = L4_4 - 1
    L3_3(L4_4, "\144\233")
  end
end
L3_3 = mp
L3_3 = L3_3.LOWFI
return L3_3
