local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = "remote_file_created_taint"
L1_1, L2_2 = nil, nil
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L2_2 = L3_3.utf8p2
end
L3_3 = this_sigattrlog
L3_3 = L3_3[2]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L1_1 = L3_3.utf8p1
end
if not L2_2 or not L1_1 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = nil
L4_4 = mp
L4_4 = L4_4.GetExecutablesFromCommandLine
L4_4 = L4_4(L5_5)
for L8_8, L9_9 in L5_5(L6_6) do
  L3_3 = string.match(L9_9, "/([^/]+)$")
  L3_3 = L3_3 or L9_9
  if IsKeyInRollingQueue(L0_0, L3_3, false) and not isTainted(L1_1, L0_0) then
    taint(L1_1, L0_0, 3600)
    return mp.CLEAN
  end
end
return L5_5
