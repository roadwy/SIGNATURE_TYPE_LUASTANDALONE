local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L1_1 = L2_2.utf8p2
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L0_0 = L2_2.utf8p1
  end
end
L2_2 = {}
if L0_0 ~= nil then
  L3_3 = string
  L3_3 = L3_3.lower
  L3_3 = L3_3(L4_4)
  L0_0 = L3_3
  L3_3 = sysio
  L3_3 = L3_3.IsFileExists
  L3_3 = L3_3(L4_4)
  if L3_3 then
    L3_3 = bm
    L3_3 = L3_3.add_related_file
    L3_3(L4_4)
    L3_3 = table
    L3_3 = L3_3.insert
    L3_3(L4_4, L5_5)
    L3_3 = MpCommon
    L3_3 = L3_3.SetPersistContextNoPath
    L3_3(L4_4, L5_5, L6_6)
  end
  if L1_1 ~= nil then
    L3_3 = mp
    L3_3 = L3_3.GetExecutablesFromCommandLine
    L3_3 = L3_3(L4_4)
    for L7_7, L8_8 in L4_4(L5_5) do
      L8_8 = mp.ContextualExpandEnvironmentVariables(L8_8)
      if sysio.IsFileExists(L8_8) == true then
        bm.add_related_file(L8_8)
      end
    end
  end
  L3_3 = mp
  L3_3 = L3_3.INFECTED
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
