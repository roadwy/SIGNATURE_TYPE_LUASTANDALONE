local L0_0
L0_0 = mp
L0_0 = L0_0.set_mpattribute
L0_0("SCPT:HackTool.Win32.POWERGAP.A2")
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0 == nil then
  return mp.CLEAN
end
if string.find(L0_0, "link.ps1") ~= nil or string.find(L0_0, "procvas.ps1") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
