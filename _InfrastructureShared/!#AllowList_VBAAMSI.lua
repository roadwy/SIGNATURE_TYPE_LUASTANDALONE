local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_AMSI
if L0_0 == L1_1 then
  L1_1 = pcall
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_AMSI_CONTENTNAME
  L2_2 = L1_1(L2_2, L3_3)
  if L1_1 and L2_2 ~= nil then
    L3_3 = string
    L3_3 = L3_3.lower
    L3_3 = L3_3(L2_2)
    if string.match(L3_3, "\\\\fxx%d*.munich.munichre.com\\") then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
