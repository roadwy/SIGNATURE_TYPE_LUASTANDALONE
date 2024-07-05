local L0_0, L1_1, L2_2, L3_3
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L0_0 = L2_2.timestamp
else
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L1_1 = L2_2.timestamp
else
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
if not (L0_0 > L1_1) then
  L2_2 = L1_1 - L0_0
elseif L2_2 > 50000000 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = bm
L2_2 = L2_2.get_current_process_startup_info
L2_2 = L2_2()
L3_3 = L2_2.integrity_level
if L3_3 > MpCommon.SECURITY_MANDATORY_HIGH_RID then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = this_sigattrlog
L3_3 = L3_3[3]
L3_3 = L3_3.ppid
if MpCommon.GetProcessElevationAndIntegrityLevel(L3_3).IntegrityLevel == MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
  return mp.INFECTED
end
return mp.CLEAN
