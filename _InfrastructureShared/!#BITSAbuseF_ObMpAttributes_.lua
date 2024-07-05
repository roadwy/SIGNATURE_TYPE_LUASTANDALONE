local L0_0, L1_1, L2_2, L3_3, L4_4
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
L1_1 = L1_1.CONTEXT_DATA_PROCESSNAME
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
elseif L1_1 ~= "svchost.exe" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESS_PPID
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.GetProcessCommandLine
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 ~= nil then
  L3_3 = string
  L3_3 = L3_3.len
  L4_4 = L2_2
  L3_3 = L3_3(L4_4)
elseif L3_3 == 0 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.match
L4_4 = L2_2
L3_3 = L3_3(L4_4, "-s%s+([^%s]+)")
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.lower
L4_4 = L4_4(L3_3)
if L4_4 ~= "bits" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.getfilename
L4_4 = L4_4()
if L4_4 == nil then
  return mp.CLEAN
end
L4_4 = string.lower(L4_4)
if string.find(L4_4, "\\notifications\\wpnidm\\", 1, true) ~= nil then
  return mp.CLEAN
end
if string.find(L4_4, "\\microsoft\\systemcertificates\\", 1, true) ~= nil then
  return mp.CLEAN
end
if string.find(L4_4, "\\microsoft\\outlook\\", 1, true) ~= nil then
  return mp.CLEAN
end
if string.find(L4_4, "\\microsoft\\olk\\", 1, true) ~= nil then
  return mp.CLEAN
end
if not MpCommon.QueryPersistContext(L4_4, "DroppedByBitsadmin") and not MpCommon.QueryPersistContext(L4_4, "DroppedByBITS") then
  MpCommon.AppendPersistContext(L4_4, "DroppedByBITS", 0)
end
return mp.CLEAN
