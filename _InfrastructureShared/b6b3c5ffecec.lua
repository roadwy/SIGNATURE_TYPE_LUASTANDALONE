local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 and (string.find(L0_0, "\\teams.exe", 1, true) or string.find(L0_0, "\\teams\\update.exe", 1, true) or string.find(L0_0, "\\csrss.exe", 1, true) or string.find(L0_0, "\\lsass.exe", 1, true) or string.find(L0_0, "\\svchost.exe", 1, true) or string.find(L0_0, "\\explorer.exe", 1, true)) then
  return mp.CLEAN
end
return mp.INFECTED
