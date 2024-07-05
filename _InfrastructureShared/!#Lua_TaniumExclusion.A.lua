local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_AMSI
if L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
  L1_1 = L1_1(L2_2)
  if not L1_1 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  L1_1 = L2_2
  L3_3 = L1_1
  L2_2 = L1_1.find
  L2_2 = L2_2(L3_3, "taniumclient", 1, true)
  if not L2_2 then
    L3_3 = L1_1
    L2_2 = L1_1.find
    L2_2 = L2_2(L3_3, "taniumcx", 1, true)
  elseif L2_2 then
    L2_2 = mp
    L2_2 = L2_2.INFECTED
    return L2_2
  end
  L2_2 = pcall
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L3_3 = L2_2(L3_3, mp.CONTEXT_DATA_AMSI_CONTENTNAME)
  if L2_2 and L3_3 ~= nil and (string.lower(L3_3):find("\\tanium\\", 1, true) or string.lower(L3_3):find("hostscript.vbe", 1, true)) then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
