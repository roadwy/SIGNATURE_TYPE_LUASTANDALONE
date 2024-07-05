local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L6_6 = L2_2(L3_3)
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L2_2(L3_3))
  L0_0 = L1_1
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.find
  L1_1 = L1_1(L2_2, L3_3)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L1_1 = L1_1(L2_2, L3_3)
  elseif L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = mp
  L1_1 = L1_1.GetExecutablesFromCommandLine
  L1_1 = L1_1(L2_2)
  for L5_5, L6_6 in L2_2(L3_3) do
    if L6_6 ~= nil and L6_6:len() > 3 and sysio.IsFileExists(L6_6) then
      if mp.IsKnownFriendlyFile(L6_6, true, false) == true then
        return mp.CLEAN
      end
      mp.ReportLowfi(L6_6, 1891100223)
      bm.add_related_file(L6_6)
    end
  end
  return L2_2
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
