local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = mp
    L2_2 = L2_2.ContextualExpandEnvironmentVariables
    L3_3 = this_sigattrlog
    L3_3 = L3_3[2]
    L3_3 = L3_3.utf8p2
    L12_12 = L2_2(L3_3)
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L2_2(L3_3))
    L0_0 = L1_1
  end
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil then
      L1_1 = string
      L1_1 = L1_1.lower
      L2_2 = mp
      L2_2 = L2_2.ContextualExpandEnvironmentVariables
      L3_3 = this_sigattrlog
      L3_3 = L3_3[3]
      L3_3 = L3_3.utf8p2
      L12_12 = L2_2(L3_3)
      L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L2_2(L3_3))
      L0_0 = L1_1
    end
  end
end
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = nil
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = mp
    L2_2 = L2_2.ContextualExpandEnvironmentVariables
    L3_3 = string
    L3_3 = L3_3.lower
    L4_4 = this_sigattrlog
    L4_4 = L4_4[1]
    L4_4 = L4_4.utf8p1
    L12_12 = L3_3(L4_4)
    L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L3_3(L4_4))
    L1_1 = L2_2
  end
end
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.match
L3_3 = L0_0
L4_4 = "(.-)[^\\]-[^\\%.]+$"
L2_2 = L2_2(L3_3, L4_4)
L3_3 = string
L3_3 = L3_3.match
L4_4 = L1_1
L3_3 = L3_3(L4_4, L5_5)
if L2_2 ~= nil then
  L4_4 = #L2_2
  if L4_4 ~= 0 and L3_3 ~= nil then
    L4_4 = #L3_3
  end
elseif L4_4 == 0 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
if L2_2 ~= L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = {L5_5, L6_6}
for L8_8, L9_9 in L5_5(L6_6) do
  L10_10 = #L2_2
  L11_11 = #L9_9
  if L10_10 > L11_11 then
    L10_10 = string
    L10_10 = L10_10.sub
    L11_11 = L2_2
    L12_12 = #L9_9
    L12_12 = -L12_12
    L10_10 = L10_10(L11_11, L12_12)
    if L10_10 == L9_9 then
      L10_10 = mp
      L10_10 = L10_10.CLEAN
      return L10_10
    end
  end
end
L5_5(L6_6)
if L6_6 == nil then
  return L7_7
end
for L10_10, L11_11 in L7_7(L8_8) do
  L12_12 = mp
  L12_12 = L12_12.ContextualExpandEnvironmentVariables
  L12_12 = L12_12(L11_11 .. L6_6)
  if L12_12 ~= nil and sysio.IsFileExists(L12_12) then
    return mp.INFECTED
  end
end
return L7_7
