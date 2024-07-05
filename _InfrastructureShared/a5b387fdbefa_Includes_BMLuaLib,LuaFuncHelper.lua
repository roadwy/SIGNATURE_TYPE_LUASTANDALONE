local L0_0, L1_1, L2_2
L0_0 = versioning
L0_0 = L0_0.IsSeville
L0_0 = L0_0()
if not L0_0 then
  L0_0 = versioning
  L0_0 = L0_0.IsServer
  L0_0 = L0_0()
  if not L0_0 then
    L0_0 = MpCommon
    L0_0 = L0_0.IsSampled
    L1_1 = 11000
    L2_2 = true
    L0_0 = L0_0(L1_1, L2_2, true, true)
    if L0_0 == false then
      L0_0 = mp
      L0_0 = L0_0.CLEAN
      return L0_0
    end
  end
end
L0_0 = getCurrentProcessInjectors
L2_2 = L0_0()
if L2_2 ~= nil then
  bm.add_related_string("GenRansom_injected", safeJsonSerialize(L2_2), bm.RelatedStringBMReport)
end
if L1_1 ~= nil then
  bm.add_related_string("GenRansom_injector", safeJsonSerialize(L1_1), bm.RelatedStringBMReport)
end
if this_sigattrlog[8].matched and this_sigattrlog[8].utf8p2 and reportGenericRansomware(this_sigattrlog[8].utf8p2) == mp.INFECTED then
  reportTimingData()
  return mp.INFECTED
end
return mp.CLEAN
