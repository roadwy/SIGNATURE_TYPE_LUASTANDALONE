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
if not L1_1 or not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = false
L4_4 = mp
L4_4 = L4_4.GetExecutablesFromCommandLine
L4_4 = L4_4(L5_5)
if L4_4 then
  for L8_8, L9_9 in L5_5(L6_6) do
    if sysio.IsFileExists(L9_9) and isTainted(L9_9, L0_0) then
      L3_3 = true
      break
    end
  end
end
if L3_3 then
  L5_5(L6_6, L7_7)
  return L5_5
end
return L5_5
