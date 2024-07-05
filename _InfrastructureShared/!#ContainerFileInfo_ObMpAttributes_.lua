local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if not L0_0 then
  return mp.CLEAN
end
if L0_0:sub(-4) and L0_0:sub(-4):sub(1, 1) == "." and L0_0:sub(-4) == ".bin" and string.find(L0_0, "->xl/macrosheets/", 1, true) then
  mp.set_mpattribute("Lua:MacrosheetBin")
end
return mp.CLEAN
