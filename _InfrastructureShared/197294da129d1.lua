local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if string.find(L0_0, "document.xml") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
