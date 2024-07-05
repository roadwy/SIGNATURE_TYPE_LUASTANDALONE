local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
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
  L3_3 = L3_3.CONTEXT_DATA_AMSI_APPNAME
  L2_2 = L1_1(L2_2, L3_3)
  L3_3 = pcall
  L4_4 = mp
  L4_4 = L4_4.get_contextdata
  L5_5 = mp
  L5_5 = L5_5.CONTEXT_DATA_AMSI_OPERATION_PPID
  L4_4 = L3_3(L4_4, L5_5)
  if L1_1 == nil or L3_3 == nil or L4_4 == nil or L2_2 == nil then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L5_5 = pcall
  L6_6 = mp
  L6_6 = L6_6.get_contextdata
  L7_7 = mp
  L7_7 = L7_7.CONTEXT_DATA_AMSI_CONTENTNAME
  L6_6 = L5_5(L6_6, L7_7)
  if L5_5 and L6_6 ~= nil then
    L7_7 = string
    L7_7 = L7_7.lower
    L7_7 = L7_7(L6_6)
    if string.find(L7_7, "migration.ps1") or string.find(L7_7, "nettcpip.psd1") or string.find(L7_7, "scheduledtasks.psd1") then
      TrackPidAndTechnique(L4_4, "ttexclusion", "ttexclusion-mitretel")
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
