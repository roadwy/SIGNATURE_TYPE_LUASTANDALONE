local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = {}
L1_1["outlook.exe"] = ""
L1_1["iexplore.exe"] = ""
L1_1["browser_broker.exe"] = ""
L1_1["firefox.exe"] = ""
L1_1["chrome.exe"] = ""
L1_1["winword.exe"] = ""
L1_1["powerpnt.exe"] = ""
L1_1["excel.exe"] = ""
L1_1["acrord32.exe"] = ""
L1_1["slack.exe"] = ""
L2_2 = false
L3_3 = string
L3_3 = L3_3.lower
L4_4 = mp
L4_4 = L4_4.get_contextdata
L4_4 = L4_4(mp.CONTEXT_DATA_PROCESSNAME)
L3_3 = L3_3(L4_4, L4_4(mp.CONTEXT_DATA_PROCESSNAME))
L4_4 = L1_1[L3_3]
if not L4_4 then
  L4_4 = isOutlookProcess
  L4_4 = L4_4(L3_3)
else
  if L4_4 then
    L4_4 = mp
    L4_4 = L4_4.SCANREASON_ONMODIFIEDHANDLECLOSE
    if L0_0 == L4_4 then
      L2_2 = true
    end
end
else
  L4_4 = mp
  L4_4 = L4_4.get_contextdata
  L4_4 = L4_4(mp.CONTEXT_DATA_HAS_MOTW_ADS)
  if L4_4 == true then
    L4_4 = mp
    L4_4 = L4_4.SCANREASON_ONOPEN
    if L0_0 == L4_4 then
      L4_4 = mp
      L4_4 = L4_4.GetMOTWZone
      L4_4 = L4_4()
      if L4_4 == 3 or L4_4 == 4 then
        L2_2 = true
      end
    end
  end
end
L4_4 = mp
L4_4 = L4_4.getfilename
L4_4 = L4_4(mp.FILEPATH_QUERY_FULL)
if #string.lower(L4_4) >= 17 and string.lower(L4_4):sub(2, 17) == ":\\program files\\" or #string.lower(L4_4) >= 23 and string.lower(L4_4):sub(2, 23) == ":\\program files (x86)\\" or #string.lower(L4_4) >= 11 and string.lower(L4_4):sub(2, 11) == ":\\windows\\" then
  return mp.CLEAN
end
if L2_2 then
  mp.set_mpattribute("MpDisableCaching")
  MpCommon.AppendPersistContext(L4_4, "Lua:HighRiskHtaWebVector", 0)
  return mp.INFECTED
end
return mp.CLEAN
