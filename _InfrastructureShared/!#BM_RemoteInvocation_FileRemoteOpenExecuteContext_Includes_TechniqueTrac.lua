local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FULL
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L15_15 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L1_1(L2_2, L3_3))
L0_0 = L0_0 or ""
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESS_PPID
L1_1 = L1_1(L2_2)
L1_1 = L1_1 or ""
if L0_0 == "" or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.Base64Encode
L3_3 = L0_0
L2_2 = L2_2(L3_3)
L3_3 = GetRollingQueueKeyValue
L4_4 = "rq_fileremotedrop"
L5_5 = L2_2
L3_3 = L3_3(L4_4, L5_5)
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = "|psexesvc.exe|dllhost.exe|rundll32.exe|regsvr32.exe|wmiprvse.exe|winrshost.exe|wsmprovhost.exe|cmd.exe|powershell.exe|pwsh.exe|console.exe|bash.exe|services.exe|explorer.exe|svchost.exe|"
L5_5 = checkParentProcessNameFromListByPPIDRecursive
L6_6 = L1_1
L7_7 = L4_4
L8_8 = 5
L6_6 = L5_5(L6_6, L7_7, L8_8)
if not L5_5 or not L6_6 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = pcall
L8_8 = MpCommon
L8_8 = L8_8.QuerySessionInformation
L9_9 = L1_1
L10_10 = MpCommon
L10_10 = L10_10.WTSIsRemoteSession
L8_8 = L7_7(L8_8, L9_9, L10_10)
if not L7_7 or not L8_8 then
  L8_8 = "FALSE"
end
L9_9 = L6_6
L10_10 = "|isRemote="
L11_11 = tostring
L12_12 = L8_8
L11_11 = L11_11(L12_12)
L9_9 = L9_9 .. L10_10 .. L11_11
L10_10 = pcall
L11_11 = MpCommon
L11_11 = L11_11.QuerySessionInformation
L12_12 = L1_1
L13_13 = MpCommon
L13_13 = L13_13.WTSDomainName
L11_11 = L10_10(L11_11, L12_12, L13_13)
L12_12 = pcall
L13_13 = MpCommon
L13_13 = L13_13.QuerySessionInformation
L14_14 = L1_1
L15_15 = MpCommon
L15_15 = L15_15.WTSUserName
L13_13 = L12_12(L13_13, L14_14, L15_15)
L14_14 = pcall
L15_15 = MpCommon
L15_15 = L15_15.QuerySessionInformation
L15_15 = L14_14(L15_15, L1_1, MpCommon.WTSClientAddress)
if L10_10 and L11_11 and L11_11 ~= "" then
  L9_9 = L9_9 .. "|" .. crypto.Sha1Buffer(L11_11, 0, #L11_11)
else
  L9_9 = L9_9 .. "|NO_DOMAIN"
end
if L12_12 and L13_13 and L13_13 ~= "" then
  L9_9 = L9_9 .. "|" .. crypto.Sha1Buffer(L13_13, 0, #L13_13)
else
  L9_9 = L9_9 .. "|NO_USER"
end
if L14_14 and L15_15 and type(L15_15) == "table" then
  L9_9 = L9_9 .. "|" .. tostring(L15_15.Address)
else
  L9_9 = L9_9 .. "|" .. tostring(L15_15)
end
mp.set_mpattribute(string.format("MpInternal_researchdata=FileRemoteDropContext=%s", L3_3))
mp.set_mpattribute(string.format("MpInternal_researchdata=FileRemoteOpenExecuteContext=%s", L9_9))
return mp.INFECTED
