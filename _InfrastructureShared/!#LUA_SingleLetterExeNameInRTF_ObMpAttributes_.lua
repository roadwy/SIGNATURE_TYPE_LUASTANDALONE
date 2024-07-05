local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if string.find(L0_0, "%-%>%(rtf[0-9]+%)%-%>[a-z].[a-z]$") ~= nil then
  return mp.INFECTED
elseif string.find(L0_0, "%-%>%(rtf[0-9]+%)%-%>") ~= nil then
  mp.set_mpattribute("//LUA:ExeInRTF")
end
return mp.CLEAN
