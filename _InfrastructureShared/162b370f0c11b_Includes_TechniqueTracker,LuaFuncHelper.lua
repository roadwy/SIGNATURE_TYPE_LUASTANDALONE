local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L2_2 = this_sigattrlog
L2_2 = L2_2[4]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[4]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[4]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = string
      L2_2 = L2_2.lower
      L3_3 = this_sigattrlog
      L3_3 = L3_3[4]
      L3_3 = L3_3.utf8p1
      L2_2 = L2_2(L3_3)
      L4_4 = L2_2
      L3_3 = L2_2.match
      L5_5 = "software\\classes\\%.([^\\]+)"
      L3_3 = L3_3(L4_4, L5_5)
      L1_1 = L3_3
      L3_3 = string
      L3_3 = L3_3.lower
      L4_4 = this_sigattrlog
      L4_4 = L4_4[4]
      L4_4 = L4_4.utf8p2
      L3_3 = L3_3(L4_4)
      L0_0 = L3_3
    end
  end
end
if L1_1 ~= nil then
  L2_2 = #L1_1
elseif L2_2 < 4 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
if L0_0 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = nil
L3_3 = this_sigattrlog
L3_3 = L3_3[3]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[3]
  L3_3 = L3_3.utf8p1
  if L3_3 ~= nil then
    L3_3 = string
    L3_3 = L3_3.lower
    L4_4 = this_sigattrlog
    L4_4 = L4_4[3]
    L4_4 = L4_4.utf8p1
    L3_3 = L3_3(L4_4)
    L2_2 = L3_3
  end
end
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3, L4_4, L5_5 = nil, nil, nil
if L6_6 then
  if L6_6 ~= nil then
    if L6_6 ~= nil then
      L3_3 = L6_6
      L4_4 = L6_6.utf8p2
      for L9_9 in L6_6(L7_7, L8_8) do
        if L9_9 then
          L9_9 = string.gsub(L9_9, " ", "")
          L9_9 = string.gsub(L9_9, "['\"]%+['\"]", "")
          if MpCommon.Base64Decode(L9_9) ~= nil and MpCommon.Base64Decode(L9_9) ~= "" then
            L5_5 = MpCommon.Base64Decode(L9_9):match("\\([^\\]+)$")
          end
        end
      end
    end
  end
end
if L5_5 == nil then
  return L6_6
else
  L5_5 = L6_6
end
if L7_7 then
  if L7_7 ~= nil then
  end
end
L9_9 = L5_5
if not L7_7 then
  L9_9 = L1_1
  if not L7_7 then
    L9_9 = L0_0
  end
elseif L7_7 then
  if L6_6 ~= nil then
    if L7_7 then
      L7_7(L8_8)
    end
  end
  if L7_7 then
    L7_7(L8_8)
  end
  return L7_7
end
return L7_7
