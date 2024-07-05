local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L1_1 = L1_1(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)
L1_1 = L0_0(L1_1, L1_1(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or string.len(L0_0) < 15 then
  return mp.CLEAN
end
if L1_1 == nil or string.len(L1_1) < 12 then
  return mp.CLEAN
end
if string.find(L1_1, ".xlsb->", 1, true) and string.match(L1_1, "%.xlsb%->.+"):find(">xl/macrosheets/", 1, true) and string.match(L1_1, "%.xlsb%->.+"):sub(-4) == ".bin" then
  return mp.INFECTED
end
return mp.CLEAN
