local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 == nil or string.len(L0_0) < 1 then
  return mp.CLEAN
end
if IsSenseRelatedProc() == true then
  return mp.CLEAN
end
if string.find(L0_0, "\\microsoft\\edge\\", 1, true) or string.find(L0_0, "\\svchost.exe", 1, true) or string.find(L0_0, "\\wevtutil.exe", 1, true) or string.find(L0_0, "\\csrss.exe", 1, true) or string.find(L0_0, "\\taskhost.exe", 1, true) or string.find(L0_0, "\\powershell.exe", 1, true) or string.find(L0_0, "\\explorer.exe", 1, true) or string.find(L0_0, "\\rundll32.exe", 1, true) or string.find(L0_0, "\\searchprotocolhost.exe", 1, true) or string.find(L0_0, "\\software_reporter_tool.exe", 1, true) or string.find(L0_0, "\\mssenses.exe", 1, true) or string.find(L0_0, "\\ccmexec.exe", 1, true) or string.find(L0_0, ".tmp\\setup.exe", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
