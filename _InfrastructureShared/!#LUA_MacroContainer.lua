local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L1_1 = L1_1(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)
L1_1 = L0_0(L1_1, L1_1(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if (string.find(L1_1, "->xl/vbaproject.bin") or string.find(L1_1, "->word/vbaproject.bin")) and mp.get_mpattribute("MHSTR:MacroInside") then
  mp.set_mpattribute("//LUA:MacroInsideContainer")
  return mp.INFECTED
end
return mp.CLEAN
