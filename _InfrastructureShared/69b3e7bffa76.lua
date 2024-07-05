local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L0_0 = L2_2.utf8p2
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L1_1 = L2_2.ppid
  end
end
L2_2, L3_3 = nil, nil
L4_4 = this_sigattrlog
L4_4 = L4_4[2]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[2]
  L4_4 = L4_4.utf8p1
  if L4_4 ~= nil then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[2]
    L4_4 = L4_4.utf8p2
    if L4_4 ~= nil then
      L4_4 = this_sigattrlog
      L4_4 = L4_4[2]
      L3_3 = L4_4.utf8p1
      L4_4 = this_sigattrlog
      L4_4 = L4_4[2]
      L2_2 = L4_4.utf8p2
    end
  end
end
if L2_2 ~= nil and L3_3 ~= nil and L0_0 ~= nil then
  L4_4 = mp
  L4_4 = L4_4.GetExecutablesFromCommandLine
  L4_4 = L4_4(L5_5)
  for L8_8, L9_9 in L5_5(L6_6) do
    L9_9 = mp.ContextualExpandEnvironmentVariables(L9_9)
    if sysio.IsFileExists(L9_9) and L9_9 == L0_0 and sysio.IsFileExists(L3_3) then
      bm.add_related_file(L3_3)
      bm.request_SMS(L1_1, "h+")
      bm.add_action("SingleProcessScan", 100)
      return mp.INFECTED
    end
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
