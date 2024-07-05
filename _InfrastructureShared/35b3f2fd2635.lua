local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = nil
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = bm
  L2_2 = L2_2.get_imagepath
  L7_7 = L2_2()
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L2_2())
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(L3_3)
    L0_0 = L2_2
  end
  L2_2 = L1_1.find
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 ~= nil then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  if L0_0 ~= nil then
    L2_2 = mp
    L2_2 = L2_2.GetExecutablesFromCommandLine
    L2_2 = L2_2(L3_3)
    for L6_6, L7_7 in L3_3(L4_4) do
      L7_7 = mp.ContextualExpandEnvironmentVariables(L7_7)
      if sysio.IsFileExists(L7_7) then
        bm.add_related_file(L7_7)
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
