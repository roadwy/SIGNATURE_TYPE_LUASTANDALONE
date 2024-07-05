local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L1_1 = this_sigattrlog
L1_1 = L1_1[14]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[14]
  L0_0 = L1_1.utf8p2
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[15]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[15]
    L0_0 = L1_1.utf8p2
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[16]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[16]
      L0_0 = L1_1.utf8p2
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[17]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[17]
        L0_0 = L1_1.utf8p2
      else
        L1_1 = this_sigattrlog
        L1_1 = L1_1[18]
        L1_1 = L1_1.matched
        if L1_1 then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[18]
          L0_0 = L1_1.utf8p2
        end
      end
    end
  end
end
if L0_0 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.GetExecutablesFromCommandLine
  L1_1 = L1_1(L2_2)
  for L5_5, L6_6 in L2_2(L3_3) do
    L6_6 = mp.ContextualExpandEnvironmentVariables(L6_6)
    if sysio.IsFileExists(L6_6) and not mp.IsKnownFriendlyFile(L6_6, true, false) then
      mp.ReportLowfi(L6_6, 3197181569)
    end
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
