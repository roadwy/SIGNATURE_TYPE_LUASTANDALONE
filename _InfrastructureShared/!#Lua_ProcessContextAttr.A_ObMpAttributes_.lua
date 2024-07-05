local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONOPEN
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
  end
elseif L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESS_ID
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
if L1_1 < 12 then
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L2_2("Lua:ProcessContextAttr.A!HasSystemProcId")
end
L2_2 = mp
L2_2 = L2_2.get_contextdata
L2_2 = L2_2(mp.CONTEXT_DATA_PROCESS_PPID)
if L2_2 == nil then
  return mp.CLEAN
end
if MpCommon.GetProcessElevationAndIntegrityLevel(L2_2) ~= nil then
  if MpCommon.GetProcessElevationAndIntegrityLevel(L2_2).IntegrityLevel ~= nil and MpCommon.GetProcessElevationAndIntegrityLevel(L2_2).IntegrityLevel >= MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
    mp.set_mpattribute("Lua:ProcessContextAttr.A!IntegrityLevelSystem")
  end
  if MpCommon.GetProcessElevationAndIntegrityLevel(L2_2).IsElevated ~= nil and MpCommon.GetProcessElevationAndIntegrityLevel(L2_2).IsElevated == true then
    mp.set_mpattribute("Lua:ProcessContextAttr.A!IsElevated")
  end
  if MpCommon.GetProcessElevationAndIntegrityLevel(L2_2).ElevationType ~= nil and type(MpCommon.GetProcessElevationAndIntegrityLevel(L2_2).ElevationType) == "number" then
    mp.set_mpattribute("Lua:ProcessContextAttr.A!ElevationType" .. tostring(MpCommon.GetProcessElevationAndIntegrityLevel(L2_2).ElevationType))
  end
end
return mp.CLEAN
