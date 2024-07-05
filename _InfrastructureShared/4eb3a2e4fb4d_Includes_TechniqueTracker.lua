local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L8_8 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L1_1())
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.len
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
elseif L1_1 < 1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if not L1_1 then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(L3_3)
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(L3_3)
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  end
elseif L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if L1_1 then
  L1_1 = bm
  L1_1 = L1_1.get_process_relationships
  L2_2 = L1_1()
  if L1_1 then
    for L6_6, L7_7 in L3_3(L4_4) do
      L8_8 = L7_7.image_path
      if L8_8 ~= nil then
        L8_8 = mp
        L8_8 = L8_8.bitand
        L8_8 = L8_8(L7_7.reason_ex, 2)
        if L8_8 == 2 then
          L8_8 = string
          L8_8 = L8_8.lower
          L8_8 = L8_8(L7_7.image_path)
          if string.find(L8_8, "\\dell secureworks\\red cloak\\[^\\]+\\entwine.exe") or string.find(L8_8, "\\program files\\morphisec\\bin\\protectorservice64.exe", 1, true) or string.find(L8_8, "\\sentinelone\\sentinel agent[^\\]+\\sentinelagent.exe") then
            return mp.CLEAN
          end
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
