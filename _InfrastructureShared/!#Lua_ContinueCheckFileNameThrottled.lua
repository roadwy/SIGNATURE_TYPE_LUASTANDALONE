local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil then
  return mp.CLEAN
end
if L0_0 == "sihost.exe" then
  return mp.CLEAN
end
mp.set_mpattribute("Lua:ContinueCheckFileNameThrottled")
return mp.CLEAN
