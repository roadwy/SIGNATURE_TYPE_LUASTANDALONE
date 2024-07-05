local L0_0, L1_1, L2_2, L3_3, L4_4
L3_3 = this_sigattrlog
L3_3 = L3_3[2]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L0_0 = L3_3.timestamp
end
L3_3 = this_sigattrlog
L3_3 = L3_3[3]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[3]
  L1_1 = L3_3.timestamp
end
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L3_3 = L3_3.utf8p1
  if L3_3 ~= nil then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L2_2 = L3_3.utf8p1
  end
end
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = sysio
L3_3 = L3_3.GetFileLastWriteTime
L4_4 = L2_2
L3_3 = L3_3(L4_4)
L4_4 = sysio
L4_4 = L4_4.GetLastResult
L4_4 = L4_4()
L4_4 = L4_4.Success
if L4_4 and L3_3 ~= 0 then
  L4_4 = L3_3 / 10000000
  L3_3 = L4_4 - 11644473600
  L4_4 = MpCommon
  L4_4 = L4_4.GetCurrentTimeT
  L4_4 = L4_4()
  if L3_3 > L4_4 or L4_4 - L3_3 > 180 then
    return mp.CLEAN
  end
end
if L0_0 < L1_1 then
  L4_4 = L1_1 - L0_0
  if L4_4 <= 50000000 then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[3]
    L4_4 = L4_4.ppid
    if MpCommon.GetProcessElevationAndIntegrityLevel(L4_4).IntegrityLevel == MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
      return mp.INFECTED
    end
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
