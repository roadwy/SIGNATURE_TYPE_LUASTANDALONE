local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L0_0 = L1_1.utf8p2
  end
end
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = get_filepaths_from_string
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = "rundll32.exe"
L3_3 = false
for L7_7, L8_8 in L4_4(L5_5) do
  if string.sub(L8_8, -#L2_2) ~= L2_2 and sysio.IsFileExists(L8_8) and checkFileLastWriteTime(L8_8, 600) == false and mp.IsKnownFriendlyFile(L8_8, true, false) == false then
    bm.add_related_file(L8_8)
    L3_3 = true
  end
end
if L3_3 == true then
  return L4_4
end
return L4_4
