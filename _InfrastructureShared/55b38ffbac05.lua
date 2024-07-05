local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
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
L1_1, L2_2 = nil, nil
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L1_1 = L3_3.timestamp
end
L3_3 = this_sigattrlog
L3_3 = L3_3[3]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[3]
  L2_2 = L3_3.timestamp
end
L3_3 = nil
L4_4 = this_sigattrlog
L4_4 = L4_4[3]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[3]
  L3_3 = L4_4.utf8p1
end
if L3_3 ~= nil then
  L4_4 = string
  L4_4 = L4_4.find
  L8_8 = true
  L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
elseif not L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
if L1_1 < L2_2 then
  L4_4 = L2_2 - L1_1
  if L4_4 <= 30000000 then
    L4_4 = mp
    L4_4 = L4_4.GetExecutablesFromCommandLine
    L4_4 = L4_4(L5_5)
    for L8_8, L9_9 in L5_5(L6_6) do
      L9_9 = mp.ContextualExpandEnvironmentVariables(L9_9)
      bm.add_threat_file(L9_9)
    end
    return L5_5
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
