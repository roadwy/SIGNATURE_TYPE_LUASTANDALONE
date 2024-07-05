local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = pcall
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_AMSI_CONTENTNAME
L1_1 = L0_0(L1_1, L2_2)
if L0_0 == false or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.GetPersistContext
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = false
for L7_7, L8_8 in L4_4(L5_5) do
  if string.lower(L8_8) == "contextualofficecreaterunnablecontent" then
    L3_3 = true
    break
  end
end
if not L3_3 then
  return L4_4
end
return L4_4
