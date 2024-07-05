local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = bm
  L0_0 = L0_0.get_current_process_startup_info
  L0_0 = L0_0()
  L1_1 = L0_0.integrity_level
  if L1_1 == MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil and string.len(L1_1) > 2 then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
