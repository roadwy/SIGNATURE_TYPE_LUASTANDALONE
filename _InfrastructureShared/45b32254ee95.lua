local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = bm
L2_2 = L2_2.get_imagepath
L7_7 = L2_2()
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L2_2())
if L1_1 then
  L2_2 = string
  L2_2 = L2_2.match
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 == "installutil.exe" then
    return L3_3
  end
end
if L0_0 ~= nil then
  L2_2 = string
  L2_2 = L2_2.find
  L6_6 = true
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  if L2_2 then
    L2_2 = string
    L2_2 = L2_2.find
    L6_6 = true
    L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  elseif not L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = string
  L2_2 = L2_2.find
  L6_6 = true
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  if not L2_2 then
    L2_2 = string
    L2_2 = L2_2.find
    L6_6 = true
    L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
    if not L2_2 then
      L2_2 = string
      L2_2 = L2_2.find
      L6_6 = true
      L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
    end
  elseif L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = mp
  L2_2 = L2_2.GetExecutablesFromCommandLine
  L2_2 = L2_2(L3_3)
  for L6_6, L7_7 in L3_3(L4_4) do
    if sysio.IsFileExists(L7_7) then
      mp.ReportLowfi(L7_7, 2023886462)
      bm.add_related_file(L7_7)
    end
  end
end
L2_2 = bm
L2_2 = L2_2.add_action
L2_2(L3_3, L4_4)
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
