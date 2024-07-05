local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_NEWLYCREATEDHINT
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L7_7 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L1_1(L2_2, L3_3))
L1_1 = MpCommon
L1_1 = L1_1.StringRegExpSearch
L2_2 = "(openhardwaremonitorlib|mpksldrv)"
L3_3 = string
L3_3 = L3_3.lower
L4_4 = L0_0
L7_7 = L3_3(L4_4)
L2_2 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L3_3(L4_4))
if L1_1 == true then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.enum_mpattributesubstring
L4_4 = "ALF:HackTool:Win32/DriverAbuse"
L3_3 = L3_3(L4_4)
L4_4 = #L3_3
if L4_4 > 0 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.get_contextdata
L5_5 = mp
L5_5 = L5_5.CONTEXT_DATA_PROCESSNAME
L4_4 = L4_4(L5_5)
L5_5 = mp
L5_5 = L5_5.get_contextdata
L6_6 = mp
L6_6 = L6_6.CONTEXT_DATA_PROCESSDEVICEPATH
L5_5 = L5_5(L6_6)
L6_6 = MpCommon
L6_6 = L6_6.PathToWin32Path
L7_7 = L5_5
L6_6 = L6_6(L7_7)
if L6_6 == nil or L4_4 == nil then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
if L6_6 == "" or L4_4 == "" then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = string
L7_7 = L7_7.lower
L7_7 = L7_7(L4_4)
L4_4 = L7_7
L7_7 = L6_6
L7_7 = L7_7 .. "\\" .. L4_4
L1_1, L2_2 = MpCommon.StringRegExpSearch("(agentpackagemonitoring)", L4_4)
if L1_1 == true then
  return mp.CLEAN
end
if mp.IsKnownFriendlyFile(mp.getfilename(), true, false) then
  return mp.CLEAN
end
mp.set_mpattribute("MpInternal_researchdata=parentProcessPath=" .. L7_7)
mp.set_mpattribute("MpInternal_researchdata=parentProcessName=" .. L4_4)
return mp.INFECTED
