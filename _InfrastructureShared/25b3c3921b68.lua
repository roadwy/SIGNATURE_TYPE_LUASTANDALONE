local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(string.sub(bm.get_imagepath(), -18))
if L0_0 == "browser_broker.exe" or L0_0 == "\\runtimebroker.exe" then
  return mp.CLEAN
end
return mp.INFECTED
