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
  if L1_1 then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = L1_1
    L2_2 = L2_2(L3_3)
    L3_3 = L2_2.find
    L3_3 = L3_3(L2_2, "frtool.exe", 1, true)
    if L3_3 then
      L3_3 = mp
      L3_3 = L3_3.INFECTED
      return L3_3
    end
  end
  L2_2 = pcall
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L3_3 = L2_2(L3_3, mp.CONTEXT_DATA_AMSI_CONTENTNAME)
  if L2_2 and L3_3 and (string.lower(L3_3):find("fr_forensic.run.ps1") or string.lower(L3_3):find("installplazavcdriver-012121.ps1")) then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
