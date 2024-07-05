local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.ContextualExpandEnvironmentVariables
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p1
  L0_0 = L0_0(L1_1)
  L1_1 = mp
  L1_1 = L1_1.GetMotwHostUrlForFile
  L1_1 = L1_1(L0_0)
  if L1_1 then
    bm.add_related_string("bmurl", L1_1, bm.RelatedStringBMReport)
  end
  return mp.INFECTED
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
