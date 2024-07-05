local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
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
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 == nil then
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  if L2_2 == nil then
    L2_2 = string
    L2_2 = L2_2.find
    L3_3 = L1_1
    L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  end
elseif L2_2 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.sub
L3_3 = L1_1
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == "\\threatsonar.exe" then
  L2_2 = mp
  L2_2 = L2_2.IsKnownFriendlyFile
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, L4_4, L5_5)
  if L2_2 ~= nil and L2_2 == true then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
end
L2_2 = string
L2_2 = L2_2.find
L3_3 = L0_0
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 then
  L2_2 = bm
  L2_2 = L2_2.get_process_relationships
  L3_3 = L2_2()
  if L2_2 then
    for L7_7, L8_8 in L4_4(L5_5) do
      L9_9 = L8_8.image_path
      if L9_9 ~= nil then
        L9_9 = mp
        L9_9 = L9_9.bitand
        L9_9 = L9_9(L8_8.reason_ex, 2)
        if L9_9 == 2 then
          L9_9 = string
          L9_9 = L9_9.lower
          L9_9 = L9_9(L8_8.image_path)
          if string.find(L9_9, "\\dell secureworks\\red cloak\\[^\\]+\\entwine.exe") or string.find(L9_9, "\\program files\\morphisec\\bin\\protectorservice64.exe", 1, true) or string.find(L9_9, "\\sentinelone\\sentinel agent[^\\]+\\sentinelagent.exe") then
            return mp.CLEAN
          end
        end
      end
    end
  end
end
L2_2 = TrackCustomPersistContextNameByPPID
L3_3 = "query"
L2_2 = L2_2(L3_3, L4_4, L5_5)
if L2_2 == true then
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
