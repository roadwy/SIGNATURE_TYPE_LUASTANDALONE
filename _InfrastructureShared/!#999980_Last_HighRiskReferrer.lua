local L0_0, L1_1, L2_2, L3_3
L0_0 = pcall
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_SCANREASON
L1_1 = L0_0(L1_1, L2_2)
if L0_0 then
  L2_2 = mp
  L2_2 = L2_2.SCANREASON_VALIDATION_PRESCAN
  if L1_1 ~= L2_2 then
    L2_2 = pcall
    L3_3 = mp
    L3_3 = L3_3.get_contextdata
    L3_3 = L2_2(L3_3, mp.CONTEXT_DATA_REFERRERURL)
    if L2_2 and (string.match(L3_3, "dojki%.ru") or string.match(L3_3, "youporn%.com") or string.match(L3_3, "pizta%.ru")) then
      mp.aggregate_mpattribute("Context:HighRiskReferrerUrl")
      mp.aggregate_mpattribute("//MpIsIEVScan")
      return mp.TRUE
    end
  end
end
L2_2 = mp
L2_2 = L2_2.FALSE
return L2_2
