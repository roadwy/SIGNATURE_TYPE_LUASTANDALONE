local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.integrity_level
if L1_1 == L2_2 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(L2_2)
for L5_5 in L2_2(L3_3, L4_4) do
  L7_7 = L5_5
  if not L6_6 then
    return L6_6
  end
end
if not L2_2 then
  if not L2_2 then
    return L3_3
  end
end
if not L3_3 then
  return L4_4
end
for L7_7 in L4_4(L5_5, L6_6) do
  if string.find(L7_7, "\\\\[^\\]+\\[^\\]+") then
    return mp.CLEAN
  end
end
return L4_4
