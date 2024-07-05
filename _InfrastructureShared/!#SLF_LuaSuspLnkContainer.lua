local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 20480 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L2_2 = L2_2(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)
L2_2 = L1_1(L2_2, L2_2(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if L1_1 == nil or string.len(L1_1) < 20 then
  return mp.CLEAN
end
if L2_2 == nil or string.len(L2_2) < 15 then
  return mp.CLEAN
end
if string.find(L2_2, "->", 1, true) == nil then
  return mp.CLEAN
end
if L2_2:sub(-4) == ".lnk" and L2_2:match("^(%d%d%d%d%d%d%d%d%->.+%.lnk)$", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
