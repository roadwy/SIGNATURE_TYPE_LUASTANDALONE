local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  L1_1 = bm
  L1_1 = L1_1.add_related_string
  L1_1("MassRecon_M_Machine_Event", L0_0, bm.RelatedStringBMReport)
  L1_1 = GetRollingQueue
  L1_1 = L1_1("ReconTracking")
  bm.add_related_string("MassRecon_M_Machine", safeJsonSerialize(L1_1), bm.RelatedStringBMReport)
end
L0_0 = reportSessionInformationInclusive
L0_0()
L0_0 = reportTimingData
L0_0()
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
