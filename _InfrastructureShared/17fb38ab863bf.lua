local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L2_2 = mp
L2_2 = L2_2.CLEAN
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L0_0 = L3_3.utf8p1
  L1_1 = true
else
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[2]
    L0_0 = L3_3.utf8p1
    L1_1 = true
  else
    L3_3 = this_sigattrlog
    L3_3 = L3_3[3]
    L3_3 = L3_3.matched
    if L3_3 then
      L3_3 = this_sigattrlog
      L3_3 = L3_3[3]
      L0_0 = L3_3.utf8p2
    else
      L3_3 = this_sigattrlog
      L3_3 = L3_3[4]
      L3_3 = L3_3.matched
      if L3_3 then
        L3_3 = this_sigattrlog
        L3_3 = L3_3[4]
        L0_0 = L3_3.utf8p2
      else
        L3_3 = this_sigattrlog
        L3_3 = L3_3[5]
        L3_3 = L3_3.matched
        if L3_3 then
          L3_3 = this_sigattrlog
          L3_3 = L3_3[5]
          L0_0 = L3_3.utf8p2
        end
      end
    end
  end
end
if L0_0 ~= nil then
  L3_3 = mp
  L3_3 = L3_3.GetExecutablesFromCommandLine
  L3_3 = L3_3(L4_4)
  if L1_1 == true then
    L0_0 = L3_3[1]
    if L0_0 ~= nil then
      if L4_4 then
        if L4_4 ~= nil then
          L0_0 = L4_4
          L4_4(L5_5)
          return L4_4
        end
      end
    end
  else
    for L7_7, L8_8 in L4_4(L5_5) do
      if sysio.IsFileExists(L8_8) and string.find(L8_8, "\\[^\\]+[:][^\\]+%.%a") ~= nil then
        L0_0 = mp.ContextualExpandEnvironmentVariables(L8_8)
        bm.add_related_file(L0_0)
        L2_2 = mp.INFECTED
      end
    end
  end
end
L3_3 = mp
L3_3 = L3_3.INFECTED
if L2_2 == L3_3 then
  L3_3 = mp
  L3_3 = L3_3.INFECTED
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
