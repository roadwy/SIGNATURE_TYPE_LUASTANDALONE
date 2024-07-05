local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if string.find(L0_0, ".bat", 1, true) or string.find(L0_0, ".cmd", 1, true) then
    return mp.CLEAN
  end
  if bm.get_current_process_startup_info().integrity_level == MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
