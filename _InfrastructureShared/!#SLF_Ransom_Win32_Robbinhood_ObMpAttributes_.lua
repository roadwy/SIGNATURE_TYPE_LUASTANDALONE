local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_FILE_AGE
L0_0 = L0_0(L1_1)
if L0_0 == nil or L0_0 ~= nil and L0_0 > 3600 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_PROCESSNAME
L3_3 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3))
if L1_1 ~= "services.exe" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = MpCommon
L3_3 = L3_3.PathToWin32Path
L3_3 = L3_3(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSDEVICEPATH))
L2_2 = L2_2(L3_3, L3_3(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSDEVICEPATH)))
L3_3 = string
L3_3 = L3_3.find
L3_3 = L3_3(L2_2, "\\windows\\system32\\", 1, true)
if L3_3 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.getfilename
L3_3 = L3_3(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if string.sub(L3_3, -26) == "\\windows\\temp\\winlogon.exe" then
  return mp.INFECTED
else
  if string.find(string.lower(MpCommon.PathToWin32Path(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))), "\\windows\\temp\\", 1, true) == nil then
    return mp.CLEAN
  end
  mp.ReportLowfi(L3_3, 3621311303)
end
return mp.CLEAN
