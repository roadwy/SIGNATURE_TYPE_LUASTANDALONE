local L0_0, L1_1, L2_2, L3_3
L0_0 = {}
L1_1 = table
L1_1 = L1_1.insert
L2_2 = L0_0
L3_3 = "https://thiscannotpossiblywork.local/"
L1_1(L2_2, L3_3)
L1_1 = {}
L1_1.isLocal = "false"
L1_1.certutil = "true"
L1_1.E2ETestScenario = "true"
L2_2 = mp
L2_2 = L2_2.GetUrlReputation
L3_3 = L0_0
L2_2 = L2_2(L3_3, L1_1)
if L2_2 ~= nil then
  L3_3 = L2_2.urls
  for _FORV_7_, _FORV_8_ in ipairs(L3_3) do
    if _FORV_8_.determination == 2 and _FORV_8_.confidence > 60 then
      return mp.INFECTED
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
