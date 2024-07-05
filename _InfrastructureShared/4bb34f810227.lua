local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.ContextualExpandEnvironmentVariables
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.utf8p1
L0_0 = L0_0(L1_1)
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
if L1_1 then
  L2_2 = L1_1.integrity_level
  if L2_2 < MpCommon.SECURITY_MANDATORY_HIGH_RID then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(L0_0)
    L0_0 = L2_2
    L2_2 = string
    L2_2 = L2_2.find
    L2_2 = L2_2(L0_0, "\\appdata\\local\\packages", 1, true)
    if L2_2 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(bm.get_imagepath())
    if not string.find(L2_2, "packages\\canonicalgrouplimited.ubuntu", 1, true) and not string.find(L2_2, "packages\\thedebianproject.debiangnulinux", 1, true) then
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
