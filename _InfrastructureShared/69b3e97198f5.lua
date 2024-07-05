local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L2_2 = this_sigattrlog
L2_2 = L2_2[4]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[4]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.find
    L6_6 = true
    L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
    if L2_2 ~= nil then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = this_sigattrlog
    L2_2 = L2_2[4]
    L1_1 = L2_2.ppid
    L2_2 = mp
    L2_2 = L2_2.GetParentProcInfo
    L2_2 = L2_2(L3_3)
    if L2_2 ~= nil then
      if L3_3 ~= nil then
        L6_6 = "udclientservice.exe"
        L7_7 = 1
        if L4_4 ~= nil then
          return L4_4
        end
      end
    end
  end
else
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L7_7 = L3_3(L4_4)
    L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L3_3(L4_4))
    L0_0 = L2_2
  end
else
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.matched
  if L2_2 then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = string
      L2_2 = L2_2.lower
      L7_7 = L3_3(L4_4)
      L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L3_3(L4_4))
      L0_0 = L2_2
    end
  else
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[1]
      L2_2 = L2_2.utf8p2
      if L2_2 ~= nil then
        L2_2 = string
        L2_2 = L2_2.lower
        L7_7 = L3_3(L4_4)
        L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L3_3(L4_4))
        L0_0 = L2_2
      end
    else
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
  end
end
if L0_0 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.GetExecutablesFromCommandLine
  L2_2 = L2_2(L3_3)
  for L6_6, L7_7 in L3_3(L4_4) do
    if sysio.IsFileExists(L7_7) then
      bm.add_related_file(L7_7)
    end
  end
end
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
