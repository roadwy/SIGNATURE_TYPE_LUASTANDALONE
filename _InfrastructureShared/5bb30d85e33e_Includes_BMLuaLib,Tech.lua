local L0_0, L1_1, L2_2
L0_0 = RansomwareFeatures
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = type
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  if L1_1 == "table" then
    L1_1 = #L0_0
  end
elseif L1_1 ~= 7 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = 0
L2_2 = ""
for _FORV_6_ = 1, #L0_0 do
  L2_2 = string.match(L0_0[_FORV_6_], "[^=]+$")
  if L2_2 == "true" then
    L1_1 = L1_1 + 1
  end
end
if L1_1 >= 4 then
  bm.add_related_string("RansomwareFeaturesData", safeJsonSerialize(L0_0), bm.RelatedStringBMReport)
  reportSessionInformationInclusive()
  sms_untrusted_process()
  reportTimingData()
  return mp.INFECTED
end
return mp.CLEAN
