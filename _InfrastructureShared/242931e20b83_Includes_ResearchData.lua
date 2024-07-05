local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "MpOnOpenOrCloseRtpScan"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattributesubstring
  L1_1 = "BM_SCHEDULEDTASK_JOBFILE"
  L0_0 = L0_0(L1_1)
  if L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattributesubstring
    L1_1 = "SCPT:SchTaskHighPriv"
    L0_0 = L0_0(L1_1)
  end
elseif not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "TEL:Script/SchTaskSysHighPriv.A"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FULL
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L4_4 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L1_1(L2_2, L3_3))
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "\\system32\\tasks\\.+\\."
L1_1 = L1_1(L2_2, L3_3)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetBruteMatchData
L1_1 = L1_1()
L2_2 = ""
L3_3 = L1_1.is_header
if L3_3 then
  L3_3 = tostring
  L4_4 = headerpage
  L3_3 = L3_3(L4_4)
  L2_2 = L3_3
else
  L3_3 = tostring
  L4_4 = footerpage
  L3_3 = L3_3(L4_4)
  L2_2 = L3_3
end
L3_3 = string
L3_3 = L3_3.match
L4_4 = string
L4_4 = L4_4.lower
L4_4 = L4_4(L2_2)
L3_3 = L3_3(L4_4, "<command>(.+)</command>")
if L3_3 then
  L4_4 = set_research_data
  L4_4("command", L3_3, false)
end
L4_4 = string
L4_4 = L4_4.match
L4_4 = L4_4(string.lower(L2_2), "<arguments>(.+)</arguments>")
if L4_4 then
  set_research_data("arguments", L4_4, false)
end
if MpCommon.GetPersistContextCountNoPath("TaskSchedMiscTrigger") > 0 and (L3_3 or L4_4) then
  return mp.INFECTED
end
return mp.CLEAN
