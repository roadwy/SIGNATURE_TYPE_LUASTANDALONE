local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L1_1 = this_sigattrlog
L1_1 = L1_1[9]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[10]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[11]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = string
      L1_1 = L1_1.lower
      L1_1 = L1_1(L2_2)
      L0_0 = L1_1
    else
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
  end
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.find
  L5_5 = true
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L5_5 = true
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L5_5 = true
      L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
      if not L1_1 then
        L1_1 = string
        L1_1 = L1_1.find
        L5_5 = true
        L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
        if not L1_1 then
          L1_1 = string
          L1_1 = L1_1.find
          L5_5 = true
          L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
          if not L1_1 then
            L1_1 = string
            L1_1 = L1_1.find
            L5_5 = true
            L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
          end
        end
      end
    end
  elseif L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = mp
  L1_1 = L1_1.GetExecutablesFromCommandLine
  L1_1 = L1_1(L2_2)
  if L1_1 ~= nil then
    for L5_5, L6_6 in L2_2(L3_3) do
      L6_6 = mp.ContextualExpandEnvironmentVariables(L6_6)
      if mp.IsKnownFriendlyFile(L6_6, true, false) == false and sysio.IsFileExists(L6_6) then
        mp.ReportLowfi(L6_6, 2850103465)
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
