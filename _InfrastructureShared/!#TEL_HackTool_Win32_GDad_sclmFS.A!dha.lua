local L0_0
L0_0 = mp
L0_0 = L0_0.GetResmgrBasePlugin
L0_0 = L0_0()
if L0_0 ~= "File" then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0 == nil then
  return mp.CLEAN
end
if L0_0.len ~= 8 then
  return mp.CLEAN
end
if string.find(L0_0, "sclm.dll", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
