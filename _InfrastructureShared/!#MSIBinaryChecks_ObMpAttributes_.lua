local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if not L0_0 then
  return mp.CLEAN
end
L0_0 = string.match(L0_0, "%->binary%.(.+)$")
if not L0_0 then
  return mp.CLEAN
end
if string.find(L0_0, ".", 1, true) == nil then
  mp.set_mpattribute("Lua:MSIBinaryWithNoExtension")
end
if not L0_0 or L0_0 == "" then
  return mp.CLEAN
end
mp.set_mpattribute("//Lua:MSIBinary:" .. L0_0)
return mp.CLEAN
