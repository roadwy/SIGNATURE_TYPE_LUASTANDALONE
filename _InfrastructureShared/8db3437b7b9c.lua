local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = 4294967295
L1_1 = nil
L2_2 = mp
L2_2 = L2_2.CLEAN
L3_3 = this_sigattrlog
L3_3 = L3_3[2]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.ContextualExpandEnvironmentVariables
  L3_3 = L3_3(L4_4)
  L1_1 = L3_3
  if L1_1 ~= nil then
    L3_3 = sysio
    L3_3 = L3_3.GetFileAttributes
    L3_3 = L3_3(L4_4)
    L0_0 = L3_3
    if L0_0 ~= 4294967295 then
      L3_3 = mp
      L3_3 = L3_3.bitand
      L3_3 = L3_3(L4_4, L5_5)
      if L3_3 == 2 then
        L3_3 = bm
        L3_3 = L3_3.add_related_file
        L3_3(L4_4)
        L3_3 = mp
        L3_3 = L3_3.INFECTED
        return L3_3
      end
    end
  end
else
  L3_3 = this_sigattrlog
  L3_3 = L3_3[3]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.ContextualExpandEnvironmentVariables
    L3_3 = L3_3(L4_4)
    L1_1 = L3_3
    if L1_1 ~= nil then
      L3_3 = sysio
      L3_3 = L3_3.GetFileAttributes
      L3_3 = L3_3(L4_4)
      L0_0 = L3_3
      if L0_0 ~= 4294967295 then
        L3_3 = mp
        L3_3 = L3_3.bitand
        L3_3 = L3_3(L4_4, L5_5)
        if L3_3 == 2 then
          L3_3 = bm
          L3_3 = L3_3.add_related_file
          L3_3(L4_4)
          L3_3 = mp
          L3_3 = L3_3.INFECTED
          return L3_3
        end
      end
    end
  else
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L3_3 = L3_3.matched
    if L3_3 then
      L3_3 = mp
      L3_3 = L3_3.GetExecutablesFromCommandLine
      L3_3 = L3_3(L4_4)
      for L7_7, L8_8 in L4_4(L5_5) do
        L8_8 = mp.ContextualExpandEnvironmentVariables(L8_8)
        if sysio.IsFileExists(L8_8) then
          L0_0 = 4294967295
          L0_0 = sysio.GetFileAttributes(L8_8)
          if L0_0 ~= 4294967295 and mp.bitand(L0_0, 2) == 2 then
            bm.add_related_file(L8_8)
            L2_2 = mp.INFECTED
          end
        end
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
