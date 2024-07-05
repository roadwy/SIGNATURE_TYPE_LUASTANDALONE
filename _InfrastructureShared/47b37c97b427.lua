local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p2
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L0_0 = L1_1.utf8p2
  end
end
if L0_0 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.GetExecutablesFromCommandLine
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  L2_2 = bm
  L2_2 = L2_2.get_process_relationships
  L3_3 = L2_2()
  for L7_7, L8_8 in L4_4(L5_5) do
    if sysio.IsFileExists(L8_8) then
      bm.add_related_file(L8_8)
    end
  end
  for L7_7, L8_8 in L4_4(L5_5) do
    bm.add_related_file(L8_8.image_path)
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
