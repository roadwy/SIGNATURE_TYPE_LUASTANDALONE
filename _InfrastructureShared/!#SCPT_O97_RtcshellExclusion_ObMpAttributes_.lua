local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_AMSI
if L0_0 == L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_PROCESSNAME
  L4_4 = L2_2(L3_3)
  L1_1 = L1_1(L2_2, L3_3, L4_4, L2_2(L3_3))
  L3_3 = L1_1
  L2_2 = L1_1.find
  L4_4 = "msaccess.exe"
  L2_2 = L2_2(L3_3, L4_4, 1, true)
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.INFECTED
    return L2_2
  end
  L2_2 = pcall
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L4_4 = mp
  L4_4 = L4_4.CONTEXT_DATA_AMSI_CONTENTNAME
  L3_3 = L2_2(L3_3, L4_4)
  if L2_2 and L3_3 ~= nil then
    L4_4 = string
    L4_4 = L4_4.lower
    L4_4 = L4_4(L3_3)
    if string.find(L4_4, ".accdb", -6, true) then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
