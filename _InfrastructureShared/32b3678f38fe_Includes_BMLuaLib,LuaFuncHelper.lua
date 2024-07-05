local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = "http://b1566530-7dcc-4568-a501-3ca8bb16c014.info"
L1_1 = {}
L1_1[1] = L0_0
L2_2 = {}
L2_2.SIG_CONTEXT = "BM"
L2_2.CONTENT_SOURCE = "AdaptiveTP_TamperingGen"
L2_2.TAG = "NOLOOKUP"
L3_3 = pcall
L4_4 = mp
L4_4 = L4_4.GetUrlReputation
L4_4 = L3_3(L4_4, L5_5, L6_6)
if L3_3 and L4_4 then
elseif not L5_5 then
  L8_8 = bm
  L8_8 = L8_8.RelatedStringBMReport
  L5_5(L6_6, L7_7, L8_8)
end
for L8_8, L9_9 in L5_5(L6_6) do
  if L9_9.determination == 4 then
    bm.add_related_string("CloudAdvice", safeJsonSerialize(L9_9), bm.RelatedStringBMReport)
    return mp.INFECTED
  end
end
return L5_5
