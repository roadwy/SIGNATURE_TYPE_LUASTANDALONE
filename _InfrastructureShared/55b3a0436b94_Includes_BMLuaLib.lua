local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
L1_1 = {}
for L5_5 = 1, L0_0 do
  L6_6 = sigattr_tail
  L6_6 = L6_6[L5_5]
  L6_6 = L6_6.attribute
  if L6_6 ~= 16384 then
    L6_6 = sigattr_tail
    L6_6 = L6_6[L5_5]
    L6_6 = L6_6.attribute
    if L6_6 ~= 16385 then
      L6_6 = sigattr_tail
      L6_6 = L6_6[L5_5]
      L6_6 = L6_6.attribute
    end
  elseif L6_6 == 16386 then
    L6_6 = sigattr_tail
    L6_6 = L6_6[L5_5]
    L6_6 = L6_6.utf8p1
    L7_7 = L6_6
    L6_6 = L6_6.lower
    L6_6 = L6_6(L7_7)
    L7_7 = mp
    L7_7 = L7_7.crc32
    L7_7 = L7_7(0, L6_6, 1, #L6_6)
    L1_1[L7_7] = 1
  end
end
for L6_6 = 1, L0_0 do
  L7_7 = sigattr_tail
  L7_7 = L7_7[L6_6]
  L7_7 = L7_7.attribute
  if L7_7 == 16389 then
    L7_7 = sigattr_tail
    L7_7 = L7_7[L6_6]
    L7_7 = L7_7.utf8p2
    if L7_7 == "ATTR_a280babb" then
      L7_7 = sigattr_tail
      L7_7 = L7_7[L6_6]
      L7_7 = L7_7.utf8p1
      if L7_7 ~= nil then
        L7_7 = sigattr_tail
        L7_7 = L7_7[L6_6]
        L7_7 = L7_7.utf8p1
        L7_7 = L7_7.lower
        L7_7 = L7_7(L7_7)
      end
    end
  end
end
if L2_2 > 5 then
  L3_3()
  L3_3()
  return L3_3
end
return L3_3
