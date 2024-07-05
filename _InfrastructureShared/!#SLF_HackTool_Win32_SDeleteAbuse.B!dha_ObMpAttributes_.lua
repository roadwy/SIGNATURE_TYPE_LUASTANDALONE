local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 ~= nil then
  if string.find(L0_0, "->(vfs:", 1, true) then
    return mp.INFECTED
  elseif string.find(L0_0, "->[msilres:", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN
