local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
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
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[2]
      L0_0 = L1_1.utf8p2
    end
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L1_1 = L1_1.utf8p2
      if L1_1 ~= nil then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[3]
        L0_0 = L1_1.utf8p2
      end
    end
  end
end
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = string
  L2_2 = L2_2.sub
  L3_3 = L0_0
  L8_8 = L2_2(L3_3, L4_4)
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L2_2(L3_3, L4_4))
  L2_2 = L1_1
  L1_1 = L1_1.match
  L3_3 = "\\([^\\]+)$"
  L1_1 = L1_1(L2_2, L3_3)
  L2_2 = {}
  L2_2["pcpitstopscheduleservice.exe"] = true
  L3_3 = L2_2[L1_1]
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = mp
  L3_3 = L3_3.GetExecutablesFromCommandLine
  L3_3 = L3_3(L4_4)
  for L7_7, L8_8 in L4_4(L5_5) do
    if sysio.IsFileExists(L8_8) then
      bm.add_related_file(L8_8)
    end
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
