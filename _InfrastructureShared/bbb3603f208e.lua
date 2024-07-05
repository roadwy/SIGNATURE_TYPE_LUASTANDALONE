local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 then
  L1_1 = L0_0.integrity_level
  if L1_1 < MpCommon.SECURITY_MANDATORY_HIGH_RID then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(bm.get_imagepath())
    if not string.find(L1_1, "packages\\canonicalgrouplimited.ubuntu", 1, true) and not string.find(L1_1, "packages\\thedebianproject.debiangnulinux", 1, true) then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
