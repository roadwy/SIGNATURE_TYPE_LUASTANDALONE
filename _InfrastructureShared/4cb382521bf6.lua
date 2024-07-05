local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
end
if L0_0 ~= nil then
  L2_2 = L0_0
  L1_1 = L0_0.find
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  else
    L2_2 = L0_0
    L1_1 = L0_0.find
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
    if L1_1 then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
  end
end
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
if L1_1 == nil then
  return L3_3
end
for L6_6, L7_7 in L3_3(L4_4) do
  L8_8 = string
  L8_8 = L8_8.lower
  L8_8 = L8_8(L7_7.image_path)
  if string.find(L8_8, "\\svchost.exe", 1, true) or string.find(L8_8, "\\services.exe", 1, true) or string.find(L8_8, "\\clickonceforgooglechrome.exe", 1, true) or string.find(L8_8, "\\evolvecontactagent.exe", 1, true) or string.find(L8_8, "\\chrome.exe", 1, true) then
    return mp.CLEAN
  end
end
return L3_3
