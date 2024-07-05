local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "be9ba2d9-53ea-4cdc-84e5-9b1eeee46550"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_NEWLYCREATEDHINT
L0_0 = L0_0(L1_1)
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FNAME
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_PATH
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L9_9 = L1_1(L2_2, L3_3)
L1_1 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L1_1(L2_2, L3_3))
L2_2 = string
L2_2 = L2_2.len
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if not (L2_2 < 4) then
  L2_2 = string
  L2_2 = L2_2.len
  L3_3 = L0_0
  L2_2 = L2_2(L3_3)
elseif L2_2 < 20 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.sub
L3_3 = L1_1
L4_4 = -4
L2_2 = L2_2(L3_3, L4_4)
L3_3 = L2_2
L2_2 = L2_2.match
L4_4 = "%.(%w+)$"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = IsSuspiciousFileExt
L4_4 = L2_2
L3_3 = L3_3(L4_4)
if not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = "|winzip.exe|winzip64.exe|winrar.exe|rar.exe|7zfm.exe|7z.exe|"
L4_4 = string
L4_4 = L4_4.lower
L5_5 = mp
L5_5 = L5_5.get_contextdata
L6_6 = mp
L6_6 = L6_6.CONTEXT_DATA_PROCESSNAME
L9_9 = L5_5(L6_6)
L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8, L9_9, L5_5(L6_6))
L6_6 = L3_3
L5_5 = L3_3.find
L7_7 = "|"
L8_8 = L4_4
L9_9 = "|"
L7_7 = L7_7 .. L8_8 .. L9_9
L8_8 = 1
L9_9 = true
L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
if L5_5 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = L4_4
L6_6 = "[\"/&%%%*%-%w%s]* \"(.-)\""
L5_5 = L5_5 .. L6_6
L6_6 = mp
L6_6 = L6_6.get_contextdata
L7_7 = mp
L7_7 = L7_7.CONTEXT_DATA_PROCESS_PPID
L6_6 = L6_6(L7_7)
L7_7 = mp
L7_7 = L7_7.GetProcessCommandLine
L8_8 = L6_6
L7_7 = L7_7(L8_8)
if L7_7 == nil then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = string
L8_8 = L8_8.match
L9_9 = L7_7.lower
L9_9 = L9_9(L7_7)
L8_8 = L8_8(L9_9, L5_5)
if L8_8 == nil then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L9_9 = MpCommon
L9_9 = L9_9.QueryPersistContext
L9_9 = L9_9(L8_8, "ContextualDropEncryptedArchiveByEmail")
if not L9_9 then
  L9_9 = L8_8.find
  L9_9 = L9_9(L8_8, "\\temporary internet files\\content.outlook\\", 1, true)
  if not L9_9 then
    L9_9 = L8_8.find
    L9_9 = L9_9(L8_8, "\\inetcache\\content.outlook\\", 1, true)
  end
elseif L9_9 then
  L9_9 = mp
  L9_9 = L9_9.set_mpattribute
  L9_9("MpDisableCaching")
  L9_9 = "enghipscpy:blockaccess:be9ba2d9-53ea-4cdc-84e5-9b1eeee46550"
  if not MpCommon.QueryPersistContext(mp.getfilename(), L9_9) then
    MpCommon.AppendPersistContext(mp.getfilename(), L9_9, 0)
  end
  mp.SetHipsRule("be9ba2d9-53ea-4cdc-84e5-9b1eeee46550")
  return mp.BLOCKACCESS
end
L9_9 = mp
L9_9 = L9_9.CLEAN
return L9_9
