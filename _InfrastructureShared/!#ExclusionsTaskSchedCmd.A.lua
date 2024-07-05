local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if L0_0 == nil then
  return mp.CLEAN
end
L0_0 = string.lower(L0_0)
if string.find(L0_0, "manage bde", 1, true) or string.find(L0_0, "hthd_psp script", 1, true) or string.find(L0_0, "ukmc", 1, true) or string.find(L0_0, "configmgr", 1, true) or string.find(L0_0, "extraskriver", 1, true) or string.find(L0_0, "automatic-device-join", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
