local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L1_1 = true
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L0_0 = L2_2.utf8p1
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L0_0 = L2_2.utf8p2
    L1_1 = false
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[4]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[4]
      L0_0 = L2_2.utf8p2
    else
      L2_2 = this_sigattrlog
      L2_2 = L2_2[5]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = this_sigattrlog
        L2_2 = L2_2[5]
        L0_0 = L2_2.utf8p2
      else
        L2_2 = this_sigattrlog
        L2_2 = L2_2[3]
        L2_2 = L2_2.matched
        if L2_2 then
          L2_2 = this_sigattrlog
          L2_2 = L2_2[3]
          L0_0 = L2_2.utf8p2
        end
      end
    end
  end
end
L2_2 = IsSenseRelatedProc
L2_2 = L2_2()
if L2_2 == true then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L0_0
L2_2 = L2_2(L3_3)
L3_3 = L2_2
L2_2 = L2_2.find
L4_4 = "tamper"
L5_5 = 1
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = 7200
L3_3 = 100
L4_4 = AppendToRollingQueue
L5_5 = "TamperingHackTools"
L4_4(L5_5, L6_6, L7_7, L8_8, L9_9)
L4_4 = GetRollingQueueKeys
L5_5 = "TamperingAlerts"
L4_4 = L4_4(L5_5)
if L4_4 ~= nil then
  L5_5 = type
  L5_5 = L5_5(L6_6)
  if L5_5 == "table" then
    L5_5 = "["
    for L9_9, L10_10 in L6_6(L7_7) do
      L11_11 = L5_5
      L12_12 = "|"
      L5_5 = L11_11 .. L12_12 .. L10_10
    end
    L5_5 = L6_6 .. L7_7
    if L5_5 ~= "[]" then
      L6_6(L7_7, L8_8, L9_9)
      L6_6(L7_7, L8_8, L9_9)
      L6_6(L7_7, L8_8, L9_9)
      L6_6()
      L6_6(L7_7)
      L6_6()
      return L6_6
    end
  end
end
L5_5 = GetRollingQueueKeys
L5_5 = L5_5(L6_6)
for L11_11, L12_12 in L8_8(L9_9) do
end
if L7_7 >= 3 then
  L11_11 = bm
  L11_11 = L11_11.RelatedStringBMReport
  L8_8(L9_9, L10_10, L11_11)
  L11_11 = bm
  L11_11 = L11_11.RelatedStringBMReport
  L8_8(L9_9, L10_10, L11_11)
  L8_8()
  L8_8(L9_9)
  L8_8()
  return L8_8
end
return L8_8
