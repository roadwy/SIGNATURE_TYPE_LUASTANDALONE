local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
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
  if L1_1 and L2_2 then
    L3_3 = pcall
    L4_4 = mp
    L4_4 = L4_4.get_contextdata
    L5_5 = mp
    L5_5 = L5_5.CONTEXT_DATA_AMSI_CONTENTNAME
    L4_4 = L3_3(L4_4, L5_5)
    if L3_3 and L4_4 ~= nil then
      L5_5 = string
      L5_5 = L5_5.lower
      L5_5 = L5_5(L4_4)
      if string.find(L5_5, "\\appdata\\local\\packages\\microsoft.windowscommunicationsapps_8wekyb3d8bbwe\\localstate\\files\\", 1, true) ~= nil or string.find(L5_5, "\\appdata\\local\\microsoft\\windows\\inetcache\\content.outlook\\", 1, true) ~= nil then
        mp.ReportLowfi(L4_4, 705495462)
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
