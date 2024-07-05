local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 ~= "a.help" and L0_0 ~= "shashigeiing.help" then
  return mp.CLEAN
end
mp.readprotection(false)
mp.readprotection(true)
if mp.readfile(150268, 8) == "\141\132\n\170\169\169\169\137" then
  return mp.INFECTED
end
return mp.CLEAN
