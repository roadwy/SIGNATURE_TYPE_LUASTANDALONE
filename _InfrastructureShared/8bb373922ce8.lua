local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.IsKnownFriendlyFile
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3)
if L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = nil
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
L1_1 = L0_0.find
L1_1 = L1_1(L2_2, L3_3)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
else
  L1_1 = L0_0.find
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  else
    L1_1 = L0_0.find
    L1_1 = L1_1(L2_2, L3_3)
    if L1_1 then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    else
      L1_1 = L0_0.find
      L1_1 = L1_1(L2_2, L3_3)
      if L1_1 then
        L1_1 = mp
        L1_1 = L1_1.CLEAN
        return L1_1
      else
        L1_1 = L0_0.find
        L1_1 = L1_1(L2_2, L3_3)
        if L1_1 then
          L1_1 = mp
          L1_1 = L1_1.CLEAN
          return L1_1
        else
          L1_1 = L0_0.find
          L1_1 = L1_1(L2_2, L3_3)
          if L1_1 then
            L1_1 = mp
            L1_1 = L1_1.CLEAN
            return L1_1
          end
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
    if sysio.IsFileExists(L6_6) then
      bm.add_related_file(L6_6)
    end
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
