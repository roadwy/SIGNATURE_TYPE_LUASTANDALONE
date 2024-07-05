local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p1
  L0_0 = L0_0(L1_1)
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L2_2 = L0_0
      L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
    end
  elseif L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L2_2 = string
    L2_2 = L2_2.len
    L2_2 = L2_2(L3_3)
    if L2_2 > 3 then
      L2_2 = mp
      L2_2 = L2_2.ContextualExpandEnvironmentVariables
      L2_2 = L2_2(L3_3)
      L1_1 = L2_2
      L2_2 = sysio
      L2_2 = L2_2.IsFileExists
      L2_2 = L2_2(L3_3)
      if L2_2 then
        L2_2 = mp
        L2_2 = L2_2.IsKnownFriendlyFile
        L2_2 = L2_2(L3_3, L4_4, L5_5)
        if L2_2 == false then
          L2_2 = mp
          L2_2 = L2_2.ReportLowfi
          L2_2(L3_3, L4_4)
          L2_2 = bm
          L2_2 = L2_2.add_related_file
          L2_2(L3_3)
        end
      else
        L2_2 = mp
        L2_2 = L2_2.GetExecutablesFromCommandLine
        L2_2 = L2_2(L3_3)
        for L6_6, L7_7 in L3_3(L4_4) do
          if L7_7 ~= nil and string.len(L7_7) > 3 and sysio.IsFileExists(L7_7) and mp.IsKnownFriendlyFile(L7_7, true, false) == false then
            mp.ReportLowfi(L7_7, 794607441)
            bm.add_related_file(L7_7)
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
