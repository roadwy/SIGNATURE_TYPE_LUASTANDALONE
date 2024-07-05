local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("LowFiJSChildFileHasIOAVURL")
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L0_0 = L0_0(mp.getfilename())
  if L0_0 == nil then
    return mp.CLEAN
  end
  if string.match(L0_0, "edge") ~= nil or string.match(L0_0, "chrome") ~= nil or string.match(L0_0, "firefox") ~= nil or string.match(L0_0, "download") ~= nil then
    return mp.INFECTED
  end
  return mp.LOWFI
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
