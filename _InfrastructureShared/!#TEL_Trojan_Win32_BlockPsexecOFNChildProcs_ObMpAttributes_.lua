local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
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
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "d1e49aac-8f56-4280-b9ba-993a6d77406c"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = nil
L1_1 = mp
L1_1 = L1_1.getfilename
L1_1 = L1_1()
L0_0 = L1_1
if L0_0 == nil or L0_0 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 == nil or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L2_2 = mp
L2_2 = L2_2.IsPathExcludedForHipsRule
L3_3 = L1_1
L4_4 = "d1e49aac-8f56-4280-b9ba-993a6d77406c"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_PROCESSNAME
L2_2 = L2_2(L3_3)
if L2_2 == nil or L2_2 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L4_4 = L2_2
L3_3 = L3_3(L4_4)
L2_2 = L3_3
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_PROCESSDEVICEPATH
L3_3 = L3_3(L4_4)
if L3_3 == nil or L3_3 == "" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = MpCommon
L4_4 = L4_4.PathToWin32Path
L5_5 = L3_3
L4_4 = L4_4(L5_5)
if L4_4 == nil or L4_4 == "" then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.lower
L5_5 = L5_5(L4_4)
L4_4 = L5_5
if L2_2 == "psexesvc.exe" then
  L5_5 = MpCommon
  L5_5 = L5_5.ExpandEnvironmentVariables
  L5_5 = L5_5("%systemroot%")
  if L5_5 == nil or L5_5 == "" then
    return mp.CLEAN
  end
  L5_5 = MpCommon.PathToWin32Path(L5_5)
  if L5_5 == nil or L5_5 == "" then
    return mp.CLEAN
  end
  L5_5 = string.lower(L5_5)
  if L4_4 == L5_5 then
    return mp.CLEAN
  end
end
L5_5 = L4_4
L5_5 = L5_5 .. "\\" .. L2_2
if MpCommon.GetOriginalFileName(L5_5) == "psexesvc.exe" then
  mp.set_mpattribute("MpDisableCaching")
  mp.SetHipsRule("d1e49aac-8f56-4280-b9ba-993a6d77406c")
  return mp.BLOCKEXECUTION
end
return mp.CLEAN
