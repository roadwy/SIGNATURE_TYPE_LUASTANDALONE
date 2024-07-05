local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.ContextualExpandEnvironmentVariables
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
end
if L0_0 ~= nil and L0_0 ~= "" then
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
  elseif L1_1 then
    L1_1 = mp
    L1_1 = L1_1.GetExecutablesFromCommandLine
    L1_1 = L1_1(L2_2)
    if L1_1 ~= nil then
      for L5_5, L6_6 in L2_2(L3_3) do
        if L6_6 ~= nil and L6_6 ~= "" and sysio.IsFileExists(L6_6) and not mp.IsKnownFriendlyFile(L6_6, false, false) then
          bm.add_related_file(L6_6)
        end
      end
    end
    return L2_2
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
