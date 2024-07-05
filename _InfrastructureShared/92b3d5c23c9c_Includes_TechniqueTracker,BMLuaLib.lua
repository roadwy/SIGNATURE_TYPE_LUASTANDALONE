local L0_0, L1_1, L2_2, L3_3, L4_4
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
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L1_1[".js"] = true
L2_2 = bm_AddRelatedFileFromCommandLine
L3_3 = L0_0
L4_4 = L1_1
L2_2(L3_3, L4_4, nil, 1)
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[3]
  L2_2 = L2_2.utf8p1
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[3]
    L2_2 = L2_2.utf8p2
    if L2_2 ~= nil then
      L2_2 = this_sigattrlog
      L2_2 = L2_2[1]
      L2_2 = L2_2.utf8p1
      L3_3 = string
      L3_3 = L3_3.match
      L4_4 = L2_2
      L3_3 = L3_3(L4_4, "<Arguments>(.*)</Arguments>")
      L4_4 = string
      L4_4 = L4_4.match
      L4_4 = L4_4(L2_2, "<WorkingDirectory>(.*)</WorkingDirectory>")
      if L3_3 ~= nil then
        if L3_3:find(":\\", 1, true) then
          bm_AddRelatedFileFromCommandLine(L3_3, L1_1, nil, 1)
        elseif L4_4 ~= nil then
          bm_AddRelatedFileFromCommandLine(L4_4 .. "\\" .. L3_3, L1_1, nil, 1)
        end
      end
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
