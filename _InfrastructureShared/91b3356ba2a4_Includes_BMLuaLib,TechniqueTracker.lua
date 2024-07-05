local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L1_1 = this_sigattrlog
L1_1 = L1_1[5]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L0_0 = L1_1[5]
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[6]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L0_0 = L1_1[6]
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[7]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L0_0 = L1_1[7]
    end
  end
end
if L0_0 ~= nil then
  L1_1 = L0_0.ppid
  if L1_1 ~= nil then
    L1_1 = isParentPackageManager
    L1_1 = L1_1(L2_2)
    if L1_1 then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
    L1_1 = mp
    L1_1 = L1_1.GetExecutablesFromCommandLine
    L1_1 = L1_1(L2_2)
    for L5_5, L6_6 in L2_2(L3_3) do
      if sysio.IsFileExists(L6_6) then
        bm.add_related_file(L6_6)
      end
    end
    L5_5 = "Persistence"
    L2_2(L3_3, L4_4, L5_5)
    L2_2()
    L2_2()
    return L2_2
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
