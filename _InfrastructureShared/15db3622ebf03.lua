local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = tonumber
L1_1 = this_sigattrlog
L1_1 = L1_1[8]
L1_1 = L1_1.utf8p1
L0_0 = L0_0(L1_1)
if L0_0 == nil or L0_0 < 1441792 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm
L1_1 = L1_1.get_process_relationships
L2_2 = L1_1()
if L1_1 ~= nil then
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = L7_7.image_path
    if L8_8 ~= nil then
      L8_8 = string
      L8_8 = L8_8.lower
      L8_8 = L8_8(MpCommon.PathToWin32Path(L7_7.image_path))
      if string.find(L8_8, "gravostyle", 1, true) or string.find(L8_8, "typeedit", 1, true) or string.find(L8_8, "lasertype", 1, true) then
        return mp.CLEAN
      end
    end
  end
end
L6_6 = "l+"
L4_4(L5_5, L6_6)
L6_6 = 1000
L4_4(L5_5, L6_6)
L6_6 = "Netloader"
L4_4(L5_5, L6_6)
return L4_4
