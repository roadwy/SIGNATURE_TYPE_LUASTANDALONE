local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0:find("\\tester\\desktop\\", 1, true) == nil then
  return mp.CLEAN
end
if string.lower(mp.GetMachineGUID()) == "7a496f2d-4886-4d2e-b6bd-e1ca409f2482" or string.lower(mp.GetMachineGUID()) == "0f3737a3-48f5-425e-a254-fdebf2d0d282" then
  return mp.INFECTED
end
return mp.CLEAN
