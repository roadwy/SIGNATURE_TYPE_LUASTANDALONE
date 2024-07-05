local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L4_4 = this_sigattrlog
L4_4 = L4_4[4]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[4]
  L3_3 = L4_4.utf8p2
  if L3_3 ~= nil then
    L0_0 = L3_3
  end
end
L4_4 = this_sigattrlog
L4_4 = L4_4[5]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[5]
  L3_3 = L4_4.utf8p2
  if L3_3 ~= nil then
    L1_1 = L3_3
  end
end
L4_4 = this_sigattrlog
L4_4 = L4_4[6]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[6]
  L3_3 = L4_4.utf8p1
  if L3_3 ~= nil then
    L2_2 = L3_3
  end
end
L4_4 = bm
L4_4 = L4_4.get_process_relationships
L5_5 = L4_4()
for L9_9, L10_10 in L6_6(L7_7) do
  L11_11 = L10_10.image_path
  if L11_11 ~= nil then
    L11_11 = string
    L11_11 = L11_11.find
    L11_11 = L11_11(L10_10.image_path, "XCBBuildService.bundle/Contents/MacOS/XCBBuildService", -53, true)
    if L11_11 then
      L11_11 = L1_1.match
      L11_11 = L11_11(L1_1, "+x [\"]*([^\"]+)")
      if string.find(L2_2, L11_11, 1, true) and string.find(L0_0, L11_11, 1, true) then
        return mp.INFECTED
      end
    end
  end
end
return L6_6
