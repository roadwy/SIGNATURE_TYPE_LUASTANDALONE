local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
L1_1 = isnull
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = MpCommon
L1_1 = L1_1.QueryPersistContext
L2_2 = L0_0
L1_1 = L1_1(L2_2, L3_3)
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.GetPersistContext
L2_2 = L2_2(L3_3)
for L6_6, L7_7 in L3_3(L4_4) do
  if string.find(L7_7, "^SLF:") or string.find(L7_7, "^ALF:") or string.find(L7_7, "^TEL:") then
    bm.trigger_sig("BMLowfiTrigger", L7_7)
  end
end
return L3_3
