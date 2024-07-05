local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L0_0 = L2_2.utf8p2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[5]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[5]
  L1_1 = L2_2.utf8p2
end
if not L0_0 or not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {}
for L6_6 = 1, L4_4.SIGATTR_LOG_SZ do
  L7_7 = sigattr_tail
  L7_7 = L7_7[L6_6]
  L7_7 = L7_7.matched
  if L7_7 then
    L7_7 = sigattr_tail
    L7_7 = L7_7[L6_6]
    L7_7 = L7_7.attribute
    if L7_7 == 16400 then
      L7_7 = sigattr_tail
      L7_7 = L7_7[L6_6]
      L7_7 = L7_7.utf8p2
      if L7_7 ~= nil then
        L8_8 = string
        L8_8 = L8_8.find
        L12_12 = true
        L8_8 = L8_8(L9_9, L10_10, L11_11, L12_12)
        if not L8_8 then
          L8_8 = string
          L8_8 = L8_8.find
          L12_12 = true
          L8_8 = L8_8(L9_9, L10_10, L11_11, L12_12)
          if not L8_8 then
            L8_8 = table
            L8_8 = L8_8.insert
            L8_8(L9_9, L10_10)
          end
        end
      end
    end
  end
end
for L7_7, L8_8 in L4_4(L5_5) do
  L8_8 = L9_9
  L12_12 = 1
  L13_13 = true
  if L9_9 then
    for L12_12, L13_13 in L9_9(L10_10) do
      if string.find(L13_13, L8_8, 1, true) then
        bm.add_related_file(L8_8)
        return mp.INFECTED
      end
    end
  end
end
return L4_4
