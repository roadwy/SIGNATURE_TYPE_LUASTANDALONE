local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_UEFISTREAM
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {
  L1_1,
  L2_2,
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  "amitse",
  "systemimagedecoderdxe",
  "efioembadgingprotocol"
}
L1_1 = "bmpdecoderdxe"
L5_5 = "pcxdecoderdxe"
L6_6 = "gifdecoderdxe"
L1_1 = mp
L1_1 = L1_1.getfilename
L6_6 = L2_2(L3_3, L4_4)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L2_2(L3_3, L4_4))
for L5_5, L6_6 in L2_2(L3_3) do
  if string.find(L1_1, L6_6, 1, true) then
    return mp.INFECTED
  end
end
return L2_2
