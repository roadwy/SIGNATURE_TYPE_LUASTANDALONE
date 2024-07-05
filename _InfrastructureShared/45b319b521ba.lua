local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = string
  L7_7 = L7_7.lower
  L7_7 = L7_7(string.match(L6_6.image_path, "\\([^\\]+)$"))
  if string.find(L7_7, "tomcat", 1, true) then
    return mp.INFECTED
  end
  return mp.CLEAN
end
return L2_2
