local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = nil
L2_2 = "iexplore.exe|browser_broker.exe|firefox.exe|chrome.exe|msedge.exe|opera.exe|safari.exe|microsoftedge.exe|microsoftedgecp.exe"
L3_3 = mp
L3_3 = L3_3.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L3_3 then
  L3_3 = mp
  L3_3 = L3_3.SCANREASON_UNKNOWN
else
  if L0_0 == L3_3 then
    L3_3 = mp
    L3_3 = L3_3.get_contextdata
    L4_4 = mp
    L4_4 = L4_4.CONTEXT_DATA_PROCESSNAME
    L3_3 = L3_3(L4_4)
    if L3_3 then
      L4_4 = string
      L4_4 = L4_4.lower
      L5_5 = L3_3
      L4_4 = L4_4(L5_5)
      L3_3 = L4_4
      L4_4 = string
      L4_4 = L4_4.find
      L5_5 = L2_2
      L4_4 = L4_4(L5_5, L3_3)
      L1_1 = L4_4
    else
      L4_4 = mp
      L4_4 = L4_4.IOAVGetProcessPath
      L4_4 = L4_4()
      if L4_4 then
        L5_5 = L4_4.match
        L5_5 = L5_5(L4_4, "([^\\]+)$")
        L1_1 = string.find(L2_2, string.lower(L5_5))
      end
    end
    if L1_1 then
      L4_4 = mp
      L4_4 = L4_4.UfsSetMetadataBool
      L5_5 = "LUA:ZipWithMotwAll"
      L4_4(L5_5, true)
      L4_4 = mp
      L4_4 = L4_4.INFECTED
      return L4_4
    end
end
else
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L4_4 = mp
  L4_4 = L4_4.CONTEXT_DATA_HAS_MOTW_ADS
  L3_3 = L3_3(L4_4)
  if L3_3 == true then
    L3_3 = mp
    L3_3 = L3_3.GetMOTWZone
    L3_3 = L3_3()
    if L3_3 and L3_3 >= 3 then
      L4_4 = mp
      L4_4 = L4_4.UfsSetMetadataBool
      L5_5 = "LUA:ZipWithMotwAll"
      L4_4(L5_5, true)
      L4_4 = mp
      L4_4 = L4_4.INFECTED
      return L4_4
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
