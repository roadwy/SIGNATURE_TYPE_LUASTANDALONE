local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 == nil or string.len(L0_0) < 1 then
  return mp.CLEAN
end
if string.find(L0_0, "\\systemsettings.exe", 1, true) or string.find(L0_0, "\\svchost.exe", 1, true) or string.find(L0_0, "\\explorer.exe", 1, true) or string.find(L0_0, "\\openwith.exe", 1, true) or string.find(L0_0, "\\searchprotocolhost.exe", 1, true) or string.find(L0_0, "\\searchindexer.exe", 1, true) or string.find(L0_0, "\\runtimebroker.exe", 1, true) or string.find(L0_0, "\\msiexec.exe", 1, true) or string.find(L0_0, "\\taskhostw.exe", 1, true) or string.find(L0_0, "\\userprofilemanager.exe", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
